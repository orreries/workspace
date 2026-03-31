const db = require('../database')

/*const authors = [
  {firstName: "James", lastName: "S. A. Corey"},
  {firstName: "Craig", lastName: "Alanson"},
  {firstName: "Cixin", lastName: "Liu"},
  {firstName: "John", lastName: "Scalzi"},
  {firstName: "Toni", lastName: "Morrison"},
  {firstName: "Octavia", lastName: "Butler"}
]
*/
exports.all = async () => {
 const { rows } = await db.getPool().query("select * from authors order by id");
 return db.camelize(rows);
}

// exports.all = authors;
exports.upsert = (author) => {
  if (author.id) {
    exports.update(author);
  } else {
    exports.add(author);
  }
}

exports.add = (author) => {
  authors.push(author);
};
exports.update = (author) => {
  author.id = parseInt(author.id);
  authors[author.id] = author;
}
exports.get = (idx) => {
  return authors[idx];
}