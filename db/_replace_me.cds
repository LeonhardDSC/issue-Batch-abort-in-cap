namespace com.dscgmbh.issueBatch.replace_me;

using {
    cuid,
    Country,
    Currency,
    sap.common.CodeList
} from '@sap/cds/common';
using from '@sap/cds-common-content';


entity Status : CodeList, {
    key code : String(20);
}

entity Belege : cuid {

    // cuid => Entity bekommt GUID key Feld mit dem Namen ID!
    hash   : String(10);
    amount : Decimal(10, 2);
    status : Association to one Status;
    waehrs : Currency;
    land   : Country;
}
