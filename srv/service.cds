namespace zcompanymgmt.srv.service;

using {zcompanymgmt.db.schema as db} from '../db/schema';

service zcompanymgmt @(
    path    : '/odata',
    requires: 'authenticated-user'
) {

    entity MODULE  as projection on db.MODULE;

    entity EMPLOYEE @(restrict: [{
        grant: [
            'READ',
            'WRITE'
        ],
        to   : 'Admin'
    }, ])          as projection on db.EMPLOYEE;

    entity PROJECT as projection on db.PROJECT;
// entity CV as projection on db.CV;

}
