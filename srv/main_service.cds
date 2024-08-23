using {com.dscgmbh.issueBatch.replace_me as db} from '../db/_replace_me';


service main_service {

  entity Belege as projection on db.Belege;

};
