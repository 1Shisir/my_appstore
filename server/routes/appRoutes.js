const express = require('express');
const router = express.Router();
const appController = require('../controllers/appController');

// Define routes for fetching and uploading apps
router.get('/apps', appController.getAllApps);
router.post('/apps', appController.uploadApp);

module.exports = router;
