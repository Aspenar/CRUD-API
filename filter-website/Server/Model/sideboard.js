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
    let queryParameters = [request.body.card_name, request.body.color_id, request.body.type_id, request.body.year_id, request.body.cmc, request.params.id];
    return await connection.query(insertSql, queryParameters);
}
module.exports = {
    updateACard
}
// // const updateSql = `UPDATE DS_Magic
// SET type_id = ?,
// spell = ?, 
// Cool_Factor = ?, 
// uses = ?
// WHERE id = ?`
// let queryParameters = [request.body.type_id,
// request.body.spell,
// request.body.Cool_Factor,
// request.body.uses,
// request.params.id];