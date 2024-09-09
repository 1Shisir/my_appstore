import express from 'express';
const router = express.Router();
import appController from '../controllers/appController.js';

// Define routes for fetching and uploading apps
router.get('/getApps', appController.getAllApps);
router.post('/uploadApps', appController.uploadApp);

export default router;
  