const connection = require("./connection");
async function viewCards(parameters = {}) {
    let viewSql = `SELECT * FROM card`
    console.log(parameters); 
    return await connection.query(viewSql, parameters);
}
module.exports = {
    viewCards
}