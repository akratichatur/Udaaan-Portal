var sessionUtils = require('../utils/sessionUtils');
var util=require('util');
var databaseUtils = require('./../utils/databaseUtils');


module.exports = {
    showAttendPage: function* (next) {

        var p = this.request.body.p;
        var dt = new Date().getDate();
        var column_name="d"+dt;
        console.log(column_name);

        if (typeof p==typeof 'string')
        {
            console.log(p);
            var queryString='update attendance set '+column_name+' ="1" where university_id="%s" ';
            var query=util.format(queryString,p);
            var result=yield databaseUtils.executeQuery(query);
            
        }

        else
        {
            //alert(p.length+" members are present");
            for(var i=0;i<p.length;i++)
            {
                console.log(p[i]);
                var queryString='update attendance set '+column_name+' ="1" where university_id="%s" ';
                var query=util.format(queryString,p[i]);
                var result=yield databaseUtils.executeQuery(query);
            }
        }

        var val='/app/attendance';
        this.redirect(val);
},

    showAttendancePage: function* (next) {

        var current = this.currentUser.university_id;
        var userdetailstr = 'select * from member where university_id="%s"';
        var userdetailquery = util.format(userdetailstr,current);
        var userdetailresult = yield databaseUtils.executeQuery(userdetailquery);
        var userdetails = userdetailresult[0];

        var firststr = 'select * from member where year="1"';
        var firstresult = yield databaseUtils.executeQuery(firststr);
        
        var secondstr = 'select * from member where year="2"';
        var secondresult = yield databaseUtils.executeQuery(secondstr);
        
        var thirdstr = 'select * from member where year="3" order by name';
        var thirdresult = yield databaseUtils.executeQuery(thirdstr);

        var fourthstr = 'select * from member where year="4"';
        var fourthresult = yield databaseUtils.executeQuery(fourthstr);
        
        yield this.render('attendance',{

            userdetails:userdetails,
            currentlist:userdetailresult,
            
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
       
}
