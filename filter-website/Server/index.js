//Libraries
const express = require("express");
const multer = require("multer");
const card = require("./Model/card");
const pack = require("./Model/pack");
const deck = require("./Model/deck");
const sideboard = require("./Model/sideboard");
const mysql = require("mysql");
const cors = require("cors");
const { check, validationResult } = require("express-validator");

//Setup defaults for script
const app = express();
app.use(express.static("public"));
app.use(cors());
const upload = multer();
const port = 80; //Default port to http server
// this is the conntroller in MVC!
//The * in app.* needs to match the method type of the request
app.get("/card/", upload.none(), async (request, response) => {
  let result = {};
  try {
    result = await card.getCardsWithParams(request.query);
  } catch (error) {
    console.log(error);
    return response
      .status(500) //Error code when something goes wrong with the server
      .json({ message: "Something went wrong with the server." });
  }

  return response.json({ data: result });
});
app.post(
  "/pack/",

  upload.none(),
  check("type_id", "Choose a card type").isIn(["1", "2", "3", "4"]),
  check("year_id", "Choose a set").isIn(["1", "2", "3"]),
  check("color_id", "Choose a card color").isIn(["1", "2", "3", "4", "5"]),
  check("cmc", "Please enter a converted mana cost between 0 and 99.").isLength({ min: 1, max: 2 }),
  check("cmc", "Please enter a converted mana cost that is not negative.").isInt({min: 1}),
  check("card_name", "Please enter a valid card name of 3 to 20 characters.").isLength({
    min: 3,
    max: 20,
  }),
  async (request, response) => {
    const errors = validationResult(request);
    if (!errors.isEmpty()) {
      return response.status(400).json({
        message: "Request fields or files are invalid.",
        errors: errors.array(),
      });
    }
    try {
      await pack.postNewCard(request.body);
    } catch (error) {
      console.log(error);
      return response
        .status(500) //Error code when something goes wrong with the server
        .json({ message: "Something went wrong with the server." });
    }

    response.status(200).json({ message: "Ok" });
  }
);
app.get(
  "/deck/",

  upload.none(),
  async (request, response) => {
    let result = {};
    try {
      result = await deck.viewCards(request.query);
    } catch (error) {
      console.log(error);
      return response
        .status(500) //Error code when something goes wrong with the server
        .json({ message: "Something went wrong with the server." });
    }

    return response.json({ data: result });
  }
);
app.put(
  "/sideboard/:id/",

  upload.none(),
  check("type_id", "Choose a card type").isIn(["1", "2", "3", "4"]),
  check("year_id", "Choose a set").isIn(["1", "2", "3"]),
  check("color_id", "Choose a card color").isIn(["1", "2", "3", "4", "5"]),
  check("cmc", "Please enter a converted mana cost between 0 and 99.").isLength({ min: 1, max: 2 }),
  check("cmc", "Please enter a converted mana cost that is not negative.").isInt({min: 1}),
  check("card_name", "Please enter a valid card name of 3 to 20 characters.").isLength({
    min: 3,
    max: 20,
  }),
  async (request, response) => {
    const errors = validationResult(request);
    if (!errors.isEmpty()) {
      return response.status(400).json({
        message: "Request fields or files are invalid.",
        errors: errors.array(),
      });
    }
    try {
      await sideboard.updateACard(request.body);
    } catch (error) {
      console.log(error);
      return response
        .status(500) //Error code when something goes wrong with the server
        .json({ message: "Something went wrong with the server." });
    }

    response.status(200).json({ message: "Ok" });
  }
);

app.listen(port, () => {
  console.log(`Application listening at http://localhost:${port}`);
});
