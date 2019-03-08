var sessionUtils = require('../utils/sessionUtils');
var util=require('util');
var databaseUtils = require('./../utils/databaseUtils');


module.exports = {
    showUserPage: function* (next) {

        var sessionId = this.cookies.get("SESSION_ID");
        console.log(sessionId);
        var current = this.currentUser.university_id;
        var userdetailstr = 'select * from member where university_id="%s"';
        var userdetailquery = util.format(userdetailstr,current);
        var userdetailresult = yield databaseUtils.executeQuery(userdetailquery);
        var userdetails = userdetailresult[0];

        var teachingstr = 'select teaching_days from member where university_id="%s"';
        var teachingquery = util.format(teachingstr,current);
        var teachingresult = yield databaseUtils.executeQuery(teachingquery);
        var teachingdetails = teachingresult[0];

        var updatedetailstr = 'select * from updates limit 5';
        var updatedetailresult = yield databaseUtils.executeQuery(updatedetailstr);


//Members For Today's Class
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

        var memberdetailstr = 'select * from member where teaching_days like "%%%s%"';
        var memberdetailquery = util.format(memberdetailstr,n);
        var memberdetailresult = yield databaseUtils.executeQuery(memberdetailquery);
        var memberdetails = memberdetailresult[0];

//Members For Today's Transportation Take
        var transportdetailstr1 = 'select * from member inner join transportation on member.university_id=transportation.university_id where transportation.transportation_days_take like "%%%s%"';
        var transportdetailquery1 = util.format(transportdetailstr1,n);
        var transportdetailresult1 = yield databaseUtils.executeQuery(transportdetailquery1);
        var transportdetails1 = transportdetailresult1[0];


//Members For Today's Transportation Leave
        var transportdetailstr2 = 'select * from member inner join transportation on member.university_id=transportation.university_id where transportation.transportation_days_leave like "%%%s%"';
        var transportdetailquery2 = util.format(transportdetailstr2,n);
        var transportdetailresult2 = yield databaseUtils.executeQuery(transportdetailquery2);
        var transportdetails2 = transportdetailresult2[0];





        yield this.render('user',{

            userdetails:userdetails,
            currentlist:userdetailresult,

            teachingdetails:teachingdetails,
            teachinglist:teachingresult,

            updatedetailresult:updatedetailresult,
            updatelist:updatedetailresult,

            memberdetails:memberdetails,
            memberlist:memberdetailresult,

            transportdetails1:transportdetails1,
            transportlist1:transportdetailresult1,

            transportdetails2:transportdetails2,
            transportlist2:transportdetailresult2

        });
    },
    
    showRulesPage: function* (next) {
        var current = this.currentUser.university_id;
        var userdetailstr = 'select * from member where university_id="%s"';
        var userdetailquery = util.format(userdetailstr,current);
        var userdetailresult = yield databaseUtils.executeQuery(userdetailquery);
        var userdetails = userdetailresult[0];
        
        yield this.render('rules',{

            userdetails:userdetails,
            currentlist:userdetailresult
        });
    },

    showHierarchyPage: function* (next) {
        var current = this.currentUser.university_id;
        var userdetailstr = 'select * from member where university_id="%s"';
        var userdetailquery = util.format(userdetailstr,current);
        var userdetailresult = yield databaseUtils.executeQuery(userdetailquery);
        var userdetails = userdetailresult[0];
        
        yield this.render('hierarchy',{

            userdetails:userdetails,
            currentlist:userdetailresult
        });
    },


    logout: function* (next) {
        var sessionId = this.cookies.get("SESSION_ID");
        if(sessionId) {
            sessionUtils.deleteSession(sessionId);
        }
        this.cookies.set("SESSION_ID", '', {expires: new Date(1), path: '/'});

        this.redirect('/app/login');
    }
}
