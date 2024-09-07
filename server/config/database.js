const { Sequelize } = require('sequelize');

// Create a new instance of Sequelize
const sequelize = new Sequelize('my_appstore', 'root', '', {
  host: 'localhost',
  dialect: 'mysql', // Change to 'postgres', 'sqlite', etc. if using a different SQL DB
});

module.exports = sequelize;
