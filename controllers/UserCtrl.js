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
        console.log(userdetails);
        




        yield this.render('user',{

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

        this.redirect('/');
    }
}
