const connection = require("./connection");
//Part of the Model in MVC (model view controller) the view is a JSON.
async function getCardsWithParams(parameters = {}) {
  let selectSql = `SELECT 
                            c, 
                        FROM card c
                        INNER JOIN color o ON c.color_id = o.id
                        INNER JOIN type t ON c.type_id = t.id
                        INNER JOIN set s ON c.set_id = s.id`;
    let whereStatements = [];
    let orderByStatements = [];
    let queryParameters = [];

  if (typeof parameters.gimm !== "undefined" && parseInt(parameters.gimm) === 0) {
    whereStatements.push("m.abbreviation != 'GIMM'");
  }

  if (typeof parameters.instructor !== "undefined" && parameters.instructor.length > 0) {
    const instructor = parameters.instructor;
    whereStatements.push("CONCAT(f.first_name, ' ', f.last_name) LIKE ?");
    queryParameters.push("%" + instructor + "%");
  }

  if (typeof parameters.level !== "undefined" && parseInt(parameters.level) !== 0) {
    const classLevel = parseInt(parameters.level);
    whereStatements.push("c.number BETWEEN ? AND ?");
    queryParameters.push(classLevel);
    queryParameters.push(classLevel + 99);
  }

  if (typeof parameters.sort !== "undefined") {
    const sort = parameters.sort;
    if (sort === "ASC") {
      orderByStatements.push("c.number ASC");
    } else if (sort === "DESC") {
      orderByStatements.push("c.number DESC");
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
  if (
    typeof parameters.limit !== "undefined" &&
    parameters.limit > 0 &&
    parameters.limit < 6
  ) {
    selectSql = selectSql + " LIMIT " + parameters.limit;
  }

  return connection.query(selectSql, queryParameters);
}

module.exports = {
    getAllCourses
}