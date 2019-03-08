var sessionUtils = require('../utils/sessionUtils');
var util=require('util');
var databaseUtils = require('./../utils/databaseUtils');

module.exports = {
    
    modifyPage: function* (next) {
      
        var u_id=this.currentUser.university_id;
        var id4='select university_id from member where university_id="%s"';
        var id3=util.format(id4,u_id);
        var id2=yield databaseUtils.executeQuery(id3);
        var id=id2[0];
                         
//personal details

var rname=this.request.body.fields.rname;
var rcontact_no=this.request.body.fields.rcontact_no;
var remail=this.request.body.fields.remail;
        

var iname=this.request.body.files;
this.body=iname;
var url=this.body.imgname.path;
var isize=this.body.imgname.size;
var appurl=url.replace(/\\/g,"/");
var appurl1=appurl.replace(/static\/static/g,'static');


        if (isize){
            var queryString='update member set name="%s", contact_no="%s" ,email_id="%s",photo="%s" where id=%s ';
            var query=util.format(queryString,rname,rcontact_no,remail,appurl1,id);
            var result=yield databaseUtils.executeQuery(query);    
        }

        else{
            
        var queryString='update member set name="%s", contact_no=%s ,email_id="%s" where id=%s ';
        var query=util.format(queryString,rname,rcontact_no,remail,id);
        var result=yield databaseUtils.executeQuery(query);
        
        }

        var rr =this.currentUser.university_id;
        var val='/app/admin/'+rr+'?update=true';
        this.redirect(val);


    },


    showUpdatePage: function* (next) {


        var u_id=this.currentUser.university_id;
        var id4='select university_id from member where university_id="%s"';
        var id3=util.format(id4,u_id);
        var id2=yield databaseUtils.executeQuery(id3);
        var id=id2[0];

        
var namestr = 'select name from member where university_id ='+u_id ;
var nameresult = yield databaseUtils.executeQuery(namestr);
var namedetails = nameresult[0];

                      
var photostr = 'select photo from member where university_id="%s"';
var photoquery=util.format(photostr,id);
var photoresult = yield databaseUtils.executeQuery(photoquery);
var photodetails = photoresult[0];

//personal details

var perquerystr5 = 'select name from member where id="%s"';
var perquery5=util.format(perquerystr5,id);
var perresult5 = yield databaseUtils.executeQuery(perquery5);
var perdetails5 = perresult5[0];

var perquerystr3 = 'select university_id from member where id="%s"';
var perquery3=util.format(perquerystr3,id);
var perresult3 = yield databaseUtils.executeQuery(perquery3);
var perdetails3 = perresult3[0];

var perquerystr4 = 'select email_id from member where id="%s"';
var perquery4=util.format(perquerystr4,id);
var perresult4 = yield databaseUtils.executeQuery(perquery4);
var perdetails4 = perresult4[0];

var perquerystr6 = 'select contact_no from member where id="%s"';
var perquery6=util.format(perquerystr6,id);
var perresult6 = yield databaseUtils.executeQuery(perquery6);
var perdetails6 = perresult6[0];

       yield this.render('update',{

            namedetails: namedetails,
            namelist: nameresult,

            photodetails: photodetails,
            photolist: photoresult,
           
            perdetails5: perdetails5,
            perlist5: perresult5,

            perdetails3: perdetails3,
            perlist3: perresult3,
           
            perdetails4: perdetails4,
            perlist4: perresult4,

            perdetails6: perdetails6,
            perlist6: perresult6
        });

    },
    
}

