module.exports = (req, res, next) => {
  const token = req.headers['authorization'];
  token = token ? token.split('Bearer ')[1] : null;
  if (token) {
  }
  return res.status(401).end();
};
