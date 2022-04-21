const connection = require("./connection");
async function postNewCard(parameters = {}) {
    let insertSql = `INSERT INTO card (card_name, color_id, type_id, year_id, cmc) VALUES (?,?,?,?,?)`
}
module.exports = {
    postNewCard
}