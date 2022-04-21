const mysql = require('mysql2/promise');
// part of the Model in MVC
async function query(sql, params)  {
    const connection = await mysql.createConnection({
        host: "bsu-gimm260-fall-2021.cwtgn0g8zxfm.us-west-2.rds.amazonaws.com",
        user: "in_class_activity",
        password:"in_class_activity",
        database: 'in_class_activity'
    });
    const[results, ] = await connection.execute(sql, params);

    return results;
}

module.exports = {
    query
}