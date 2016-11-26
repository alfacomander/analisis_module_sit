module.exports = function(app) {
  app.dataSources.postgres.autoupdate(["act","dictum","user","expedient","providence","role"], function(err) {
    if (err) throw err;

      console.log('Migrated');
  });
};

