const connection = require("./connection");
async function postNewCard(parameters = {}) {
    let insertSql = `INSERT INTO card (card_name, color_id, type_id, year_id, cmc) VALUES (?,?,?,?,?)`
    console.log(parameters);
    let queryParameters = [parameters.card_name, parameters.color_id, parameters.type_id, parameters.year_id, parameters.cmc];
    return await connection.query(insertSql, queryParameters);
}
module.exports = {
    postNewCard
}