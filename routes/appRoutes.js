var Router= require('koa-router');
var bodyParser = require('koa-body')();

module.exports = function(app){

    var router = new Router();

    //Welcome Routes
    //var welcomeCtrl = require('./../controllers/WelcomeCtrl');
    //router.get('/notfound', welcomeCtrl.showNotFoundPage);

    var loginCtrl = require('./../controllers/LoginCtrl');
    router.get('/login',loginCtrl.showLoginPage);
    router.post('/signin', loginCtrl.verifyLoginPage);
    router.post('/verify', loginCtrl.verify);
    router.post('/verifypassword', loginCtrl.verifyPassword);
    router.get('/error404', loginCtrl.showError404Page);
    router.get('/error500', loginCtrl.showError500Page);

    var userCtrl = require('./../controllers/UserCtrl');
    router.get('/user',userCtrl.showUserPage);
    router.get('/rules',userCtrl.showRulesPage);
    router.get('/hierarchy',userCtrl.showHierarchyPage);
    router.get('/logout', userCtrl.logout);

    var attendanceCtrl = require('./../controllers/AttendanceCtrl');
    router.get('/attendance',attendanceCtrl.showAttendancePage);
    router.post('/attend',attendanceCtrl.showAttendPage);
    
    var chatCtrl = require('./../controllers/ChatCtrl');
    router.get('/chat',chatCtrl.showChatPage);

    
    var updateCtrl = require('./../controllers/UpdateCtrl');
    router.get('/update',updateCtrl.showUpdatePage);
    router.post('/update',updateCtrl.modifyPage);
    router.get('/update/:id',updateCtrl.modifyPage);


   // var updateCtrl = require('./../controllers/UpdateCtrl');
   // router.post('/updateDetails', updateCtrl.resumePage);
   // router.get('/updateDetails', updateCtrl.resume);
   // router.get('/updateDetails/:id', updateCtrl.resume);
   // router.get('/skill', updateCtrl.getskill);
   // router.get('/selectc', updateCtrl.selectcourse);

    
    //var forgotPasswordCtrl = require('./../controllers/ForgotPasswordCtrl');
    //router.post('/forgot', forgotPasswordCtrl.showForgotPage);

    return router.middleware();
}
