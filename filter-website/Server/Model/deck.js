const connection = require("./connection");
async function viewCards() {
    let viewSql = `SELECT * FROM card`
    return await connection.query(viewSql);
}
module.exports = {
    viewCards
}