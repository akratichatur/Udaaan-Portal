var Router= require('koa-router');
var bodyParser = require('koa-body')();

module.exports = function(app){

    var router = new Router();

    //Welcome Routes
    var welcomeCtrl = require('./../controllers/WelcomeCtrl');
    router.get('/notfound', welcomeCtrl.showNotFoundPage);

    var loginCtrl = require('./../controllers/LoginCtrl');
    router.get('/login',loginCtrl.showLoginPage);
    router.post('/signin', loginCtrl.verifyLoginPage);
    router.post('/verify', loginCtrl.verify);
    router.post('/verifypassword', loginCtrl.verifyPassword);

    var userCtrl = require('./../controllers/UserCtrl');
    router.get('/user',userCtrl.showUserPage);
    router.get('/logout', userCtrl.logout);
    
    //var forgotPasswordCtrl = require('./../controllers/ForgotPasswordCtrl');
    //router.post('/forgot', forgotPasswordCtrl.showForgotPage);

    return router.middleware();
}
