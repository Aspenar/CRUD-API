const connection = require("./connection");
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
module.exports = {
    updateACard
}
