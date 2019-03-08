var sessionUtils = require('../utils/sessionUtils');
var util=require('util');
var databaseUtils = require('./../utils/databaseUtils');

module.exports = {
    showLoginPage: function* (next) {
        yield this.render('login',{

        });
    },

    verifyLoginPage: function* (next) {
        var university_id = this.request.body.university_id;
        var password = this.request.body.password;
        var loginerror = false;

        var querystring = 'select university_id,name, password from member where university_id = "%s"';
        var query = util.format(querystring,university_id);
        var n = yield databaseUtils.executeQuery(query);
        var userDetails=n[0];
        //var count =university_id.length;
        if (userDetails === undefined) {
            loginerror=true;
            this.redirect('/app/login?loginerror='+loginerror);
            
        }
        else if ((userDetails.password===password)&&(userDetails.university_id===university_id))
        {
            sessionUtils.saveUserInSession(userDetails,this.cookies);
            var val='/app/user';
            this.redirect(val);
        }    
        
        else {
            var val ='/app/login';
            this.redirect(val);
            console.log("mismatch");
        }
    },  

    verify: function* (next) {
        var university_id = this.request.body.university_id;
        var query=yield databaseUtils.executeQuery(util.format('select * from member where university_id="%s"',university_id));
        if(query.length==0) this.body={flag:'0'};
        else this.body={flag:'1'};
        console.log("*******************");
    },
    
    verifyPassword: function* (next) {
        var password = this.request.body.password;
        var university_id = this.request.body.university_id;
        var query=yield databaseUtils.executeQuery(util.format('select password from member where university_id="%s"',university_id));
        if(password===query[0].password) this.body={flag:'0'};
        else this.body={flag:'1'};
        console.log("*************--------******");
    },

    showError404Page: function* (next) {
        yield this.render('error404',{
        });
    },

    showError500Page: function* (next) {
        yield this.render('error500',{
        });
    },
        
}
