import { DataTypes } from 'sequelize';
import sequelize from '../config/database.js';

// Define the App model
const App = sequelize.define('App', {
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  description: {
    type: DataTypes.TEXT,
  },
  category: {
    type: DataTypes.STRING,
  },
  version: {
    type: DataTypes.STRING,
  },
  downloadUrl: {
    type: DataTypes.STRING,
    allowNull: false,
  },
}, {
  tableName: 'apps',
  timestamps: true,
});

export default App;
