import App from '../models/App.js';

// Fetch all apps
export const getAllApps = async (req, res) => {
  try {
    const apps = await App.findAll();
    res.status(200).json(apps);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Upload a new app
export const uploadApp = async (req, res) => {
  try {
    const newApp = await App.create(req.body);
    res.status(201).json(newApp);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

export default { getAllApps, uploadApp };
