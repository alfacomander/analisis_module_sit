
var frisby = require('frisby');
frisby.create('TEST ACT GET')
  .get('http://localhost:3001/api/acts')
  .expectStatus(200)
.toss();
frisby.create('TEST DICTUM GET')
  .get('http://localhost:3001/api/dicta')
  .expectStatus(200)
.toss();
frisby.create('TEST PROVIDENCE GET')
  .get('http://localhost:3001/api/providences')
  .expectStatus(200)
.toss();
frisby.create('TEST EXPEDIENT GET')
  .get('http://localhost:3001/api/expedients')
  .expectStatus(200)
.toss();