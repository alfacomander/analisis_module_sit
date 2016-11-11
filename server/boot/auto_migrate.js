module.exports = function(app) {
  app.dataSources.postgres.automigrate(["act","dictum","user","expedient","providence","role"], function(err) {
    if (err) throw err;

      console.log('Migrated');
  });
};

