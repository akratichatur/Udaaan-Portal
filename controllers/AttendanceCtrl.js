var sessionUtils = require('../utils/sessionUtils');
var util=require('util');
var databaseUtils = require('./../utils/databaseUtils');

module.exports = {
    showAttendPage: function* (next) {

        var p = this.request.body.p;
        console.log(p);

        var dt = new Date();
        console.log(dt.getFullYear() + "/" + (dt.getMonth() + 1) + "/" + dt.getDate());

        var val='/app/attendance';
        this.redirect(val);
       

        //this.redirect('/app/attendance');
        //console.log("**********");
        //console.log(p.length);

       /* if (typeof p==typeof 'string')
        {
            console.log(p);
        }

        else
        {
            console.log(p.length);
            for(var i=0;i<p.length;i++)
            console.log(p[i]);
        }
*/
 

},

    showAttendancePage: function* (next) {

        var firststr = 'select * from member where year="1"';
        var firstresult = yield databaseUtils.executeQuery(firststr);
        
        var secondstr = 'select * from member where year="2"';
        var secondresult = yield databaseUtils.executeQuery(secondstr);
        
        var thirdstr = 'select * from member where year="3" order by name';
        var thirdresult = yield databaseUtils.executeQuery(thirdstr);

        var fourthstr = 'select * from member where year="4"';
        var fourthresult = yield databaseUtils.executeQuery(fourthstr);
        
        yield this.render('attendance',{

            firstresult:firstresult,
            firstlist:firstresult,

            secondresult:secondresult,
            secondlist:secondresult,

            thirdresult:thirdresult,
            thirdlist:thirdresult,

            fourthresult:fourthresult,
            fourthlist:fourthresult

       
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
