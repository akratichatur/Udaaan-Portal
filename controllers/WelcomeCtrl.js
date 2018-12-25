var sessionUtils = require('../utils/sessionUtils');

module.exports = {
    showNotFoundPage: function* (next) {
        yield this.render('notfound',{

        });
    },
 
}
