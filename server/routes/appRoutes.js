import express from 'express';
const router = express.Router();
import appController from '../controllers/appController.js';

// Define routes for fetching and uploading apps
router.get('/apps', appController.getAllApps);
router.post('/apps', appController.uploadApp);

export default router;
