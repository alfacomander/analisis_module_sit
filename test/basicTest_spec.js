
var frisby = require('frisby');
frisby.create('TEST ACT GET')
  .get('http://localhost:3000/api/acts')
  .expectStatus(100)
.toss();
frisby.create('TEST DICTUM GET')
  .get('http://localhost:3000/api/dicta')
  .expectStatus(200)
.toss();
frisby.create('TEST PROVIDENCE GET')
  .get('http://localhost:3000/api/providences')
  .expectStatus(200)
.toss();
frisby.create('TEST EXPEDIENT GET')
  .get('http://localhost:3000/api/expedients')
  .expectStatus(200)
.toss();