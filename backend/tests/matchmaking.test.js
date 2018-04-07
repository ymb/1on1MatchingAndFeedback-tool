const database = require('../database.js');
const matchmaking = require('../matchmaking.js');
// const index = require('./index.js');

function dateToString(date) {
  return date.toISOString().substr(0, 10);
}

/* eslint no-loop-func:0 */
describe('Run matchmaking with database data with different durations...', () => {
  beforeEach((done) => {
    database.createDatabase((err) => {
      if (err) return console.log(err);
      database.initDB((err2) => {
        if (err2) return console.log(err2);
        return done();
      });
    });
  });

  afterEach(done => database.closeDatabase(done));

  const durationList = [5, 10, 20, 25, 30, 35, 60, 90];
  durationList.forEach((duration) => {
    test.only(`Try with duration = ${duration}`, (done) => {
      let date = new Date();
      date.setDate(date.getDate() + 1);
      date = dateToString(date);
      const q = 'UPDATE MeetingDays SET split = ? WHERE date = ?';
      const callback = console.log;
      database.db.run(q, [duration, date], (e) => {
        if (e) console.log(e);
        database.getTimeslots(date, (err, timeslots) => {
          if (err) return callback(err);
          database.getRatings((err2, ratings) => {
            if (err2) return callback(err2);
            database.getStartups((err3, startupdata) => {
              if (err3) return callback(err3);
              const data = {
                feedbacks: ratings,
                availabilities: timeslots,
                startups: startupdata,
              };
              matchmaking.run(data, duration, (runErr, result) => {
                if (runErr) return callback(runErr);
                expect(result.length > 0).toBe(true);
                return done();
              });
              return undefined;
            });
            return undefined;
          });
          return undefined;
        });
      });
    });
  });
});