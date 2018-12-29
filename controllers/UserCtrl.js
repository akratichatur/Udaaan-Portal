var sessionUtils = require('../utils/sessionUtils');
var util=require('util');
var databaseUtils = require('./../utils/databaseUtils');

module.exports = {
    showUserPage: function* (next) {

        var current = this.currentUser.udaaan_id;
        var userdetailstr = 'select * from member where udaaan_id="%s"';
        var userdetailquery = util.format(userdetailstr,current);
        var userdetailresult = yield databaseUtils.executeQuery(userdetailquery);
        var userdetails = userdetailresult[0];

        var teachingstr = 'select teaching_days from member where udaaan_id="%s"';
        var teachingquery = util.format(teachingstr,current);
        var teachingresult = yield databaseUtils.executeQuery(teachingquery);
        console.log(teachingresult);
        console.log("*********");
        var teachingdetails = teachingresult[0];
        console.log(teachingdetails);
        console.log("*********");

        var d = new Date();
  var weekday = new Array(7);
  weekday[0] = "Sun";
  weekday[1] = "Mon";
  weekday[2] = "Tue";
  weekday[3] = "Wed";
  weekday[4] = "Thur";
  weekday[5] = "Fri";
  weekday[6] = "Sat";
  var n = weekday[d.getDay()];
            console.log(n);
            console.log("*********");
      //  var splits = teachingdetails.split(",");
      //  for (var i=0;i<splits.length;i++)
      //  {
      //    console.log(splits[i]);
        //}

      //  var teachingsplit = teachingresult.split(',');
      //  var teachingdetails = teachingsplit[0];

        var updatedetailstr = 'select * from updates limit 5';
        var updatedetailresult = yield databaseUtils.executeQuery(updatedetailstr);


        //Members For Today's Class
        var memberdetailstr = 'select * from member where teaching_days like "%%%s%"';
        var memberdetailquery = util.format(memberdetailstr,n);
        console.log(memberdetailquery);
        console.log("*********");
        var memberdetailresult = yield databaseUtils.executeQuery(memberdetailquery);
        console.log(memberdetailresult);
        console.log("*********");
        var memberdetails = memberdetailresult[0];


        yield this.render('user',{

            userdetails:userdetails,
            currentlist:userdetailresult,

            teachingdetails:teachingdetails,
            teachinglist:teachingresult,

            updatedetailresult:updatedetailresult,
            updatelist:updatedetailresult,

            memberdetails:memberdetails,
            memberlist:memberdetailresult

        });
    },

    logout: function* (next) {
        var sessionId = this.cookies.get("SESSION_ID");
        if(sessionId) {
            sessionUtils.deleteSession(sessionId);
        }
        this.cookies.set("SESSION_ID", '', {expires: new Date(1), path: '/'});

        this.redirect('/');
    }
}
