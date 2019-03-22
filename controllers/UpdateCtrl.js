var sessionUtils = require('../utils/sessionUtils');
var util=require('util');
var databaseUtils = require('./../utils/databaseUtils');

module.exports = {
    
    modifyPage: function* (next) {

    },


    showUpdatePage: function* (next) {

        var current = this.currentUser.university_id;
        var userdetailstr = 'select * from member where university_id="%s"';
        var userdetailquery = util.format(userdetailstr,current);
        var userdetailresult = yield databaseUtils.executeQuery(userdetailquery);
        var userdetails = userdetailresult[0];

       yield this.render('update',{

        userdetails:userdetails,
        currentlist:userdetailresult
        
           });

    },
    
}

