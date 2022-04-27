const connection = require("./connection");
//Part of the Model in MVC (model view controller) the view is a JSON.
async function getCardsWithParams(parameters = {}) {
  let selectSql = `SELECT 
  * 
  FROM card AS c
  INNER JOIN color o ON c.color_id = o.id
  INNER JOIN type t ON c.type_id = t.id
  INNER JOIN year y ON c.year_id = y.id`;

  let whereStatements = [];
  let orderByStatements = [];
  let queryParameters = [];

  console.log(parameters);

  if (parameters.color_id) {
    const colorId = parameters.color_id;
    whereStatements.push(`color_id = ${colorId}`);
    queryParameters.push("%" + colorId + "%");
  }

  if (parameters.type_id) {
    const typeId = parameters.type_id;
    whereStatements.push(`type_id = ${typeId}`);
    queryParameters.push("%" + typeId + "%");
  }

  if (parameters.year) {
    const year = parameters.year;
    whereStatements.push(`year = ${year}`);
    queryParameters.push("%" + year + "%");
  }

  if (parameters.card_name) {
    const cardName = parameters.card_name;
    whereStatements.push(`card_name LIKE '%${cardName}%'`);
    queryParameters.push("%" + cardName + "%");
  }


  if (parameters.sort) {
    const sort = parameters.sort;
    if (sort === "ASC") {
      orderByStatements.push("c.cmc ASC");
    } else if (sort === "DESC") {
      orderByStatements.push("c.cmc DESC");
    }
  }

  //Dynamically add WHERE expressions to SELECT statements if needed
  if (whereStatements.length > 0) {
    selectSql = selectSql + " WHERE " + whereStatements.join(" AND ");
  }

  //Dynamically add ORDER BY expressions to SELECT statements if needed
  if (orderByStatements.length > 0) {
    selectSql = selectSql + " ORDER BY " + orderByStatements.join(", ");
  }

  //Dynamically add ORDER BY expressions to SELECT statements if needed
  if (parameters.limit && parameters.limit > 0 && parameters.limit < 6) {
    selectSql = selectSql + " LIMIT " + parameters.limit;
  }

  return connection.query(selectSql, queryParameters);
}
async function viewCards() {
  let viewSql = `SELECT * FROM card where id=?`;
  return await connection.query(viewSql);
}
async function updateACard(parameters = {}) {
  let updateSql = `Update card 
  SET card_name = ?,
  color_id = ?,
  type_id = ?,
  year_id = ?,
  cmc = ?
  WHERE id = ?`
  console.log(parameters);
  let queryParameters = [parameters.card_name, parameters.color_id, parameters.type_id, parameters.year_id, parameters.cmc, parameters.id];
  return await connection.query(updateSql, queryParameters);
}
async function postNewCard(parameters = {}) {
  let insertSql = `INSERT INTO card (card_name, color_id, type_id, year_id, cmc) VALUES (?,?,?,?,?)`
  console.log(parameters);
  let queryParameters = [parameters.card_name, parameters.color_id, parameters.type_id, parameters.year_id, parameters.cmc];
  return await connection.query(insertSql, queryParameters);
}

module.exports = {
  getCardsWithParams,
  viewCards,
  updateACard,
  postNewCard
};
