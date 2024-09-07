const App = require('../models/App');

// Fetch all apps
exports.getAllApps = async (req, res) => {
  try {
    const apps = await App.findAll();
    res.json(apps);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Upload a new app
exports.uploadApp = async (req, res) => {
  try {
    const newApp = await App.create(req.body);
    res.status(201).json(newApp);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
