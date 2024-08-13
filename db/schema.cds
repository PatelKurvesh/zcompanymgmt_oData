namespace zcompanymgmt.db.schema;

using {managed} from '@sap/cds/common';

entity MODULE {
    key MODULE_ID   : String;
        MODULE_NAME : String;
        MODULE_TYPE : String;
        MODULE_CODE : String;
};

entity EMPLOYEE : managed {
    key EMP_ID         : Int32;
        EMP_NAME       : String;
        EMP_NUMBER     : String;
        EMP_MODULE     : Association to one MODULE;
        EMP_COUNTRY    : String;
        EMP_AGE        : String;
        EMP_EXPERIENCE : String;
        EMP_CTC        : String;
        EMP_PROJECT    : Association to one PROJECT;

        @Core.MediaType  : 'application/pdf'
        CONTENT        : LargeBinary;

        @Core.IsMediaType: true
        MEDIA_TYPE     : String;
        FILE_NAME      : String;
        URL            : String
};

entity PROJECT {
    key PRJ_ID         : String;
        PRJ_NAME       : String;
        PRJ_START_DATE : Date;
        PRJ_END_DATE   : Date;
        PRJ_STATUS     : String;

};

// entity CV {
//     key FILE_ID    : Int32;

//         @Core.MediaType  : 'application/pdf'
//         CONTENT    : LargeBinary;

//         @Core.IsMediaType: true
//         MEDIA_TYPE : String;
//         FILE_NAME  : String;
//         URL        : String;
//         EMPLOYEE : Association to one EMPLOYEE;
// }
