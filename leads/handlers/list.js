const leadsController = require('../controller');
const leadModel = require('../models/Lead');
const collectionHandler = require('../../util/collectionHandler');

module.exports = [
  collectionHandler(leadModel),
  async (req, res, next) => {
    return res.send(await leadsController.list({ userId: req.query.userId }, res.locals.qb));
  },
];
