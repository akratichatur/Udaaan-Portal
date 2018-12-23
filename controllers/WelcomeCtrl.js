var sessionUtils = require('../utils/sessionUtils');

module.exports = {
    showIndexPage: function* (next) {
        yield this.render('index',{

        });
    },

    

    showLoginPage: function* (next) {
        yield this.render('login',{

        });
    },


    showRoughPage: function* (next) {
        yield this.render('rough',{

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
