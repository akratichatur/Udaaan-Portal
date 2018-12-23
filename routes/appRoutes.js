var Router= require('koa-router');
var bodyParser = require('koa-body')();

module.exports = function(app){

    var router = new Router();

    //Welcome Routes
    var welcomeCtrl = require('./../controllers/WelcomeCtrl');
    router.get('/login', welcomeCtrl.showLoginPage);

    var userCtrl = require('./../controllers/UserCtrl');
    router.get('/user',userCtrl.showUserPage);


    return router.middleware();
}
