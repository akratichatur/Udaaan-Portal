var sessionUtils = require('../utils/sessionUtils');
var util=require('util');
var databaseUtils = require('./../utils/databaseUtils');


module.exports = {
    
    showChatPage: function* () {

        
        var current = this.currentUser.university_id;
        var userdetailstr = 'select * from member where university_id="%s"';
        var userdetailquery = util.format(userdetailstr,current);
        var userdetailresult = yield databaseUtils.executeQuery(userdetailquery);
        var userdetails = userdetailresult[0];
        

        yield this.render('chat',{

            userdetails:userdetails,
            currentlist:userdetailresult
        });

    }, 

   
}

