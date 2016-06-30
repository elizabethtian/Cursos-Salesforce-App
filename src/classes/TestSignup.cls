@isTest
public class TestSignup {

    @isTest static void testExtension() {
    	Date start1 = Date.newInstance(2016, 1, 1);
        Date end1 = Date.newInstance(2016, 1, 15);
    	Curso__c bento = new Curso__c(Name='Bento',
    								  Fecha_de_Inicio__c=start1,
    								  Fecha_de_Finalizacion__c=end1,
    								  D_as__c='Viernes',
    								  Frecuencia__c='Semanalmente'
    								  );        
        insert bento;
		ApexPages.StandardController sc = new ApexPages.standardController(bento);
    	Signup e = new Signup(sc);
        e.newContactFirstName = 'Hello';
        e.newContactLastName = 'World';
        Test.startTest();
        e.showNewContact();
        e.save();
        e.showOld();
        e.save();
        e.calendar();
		Test.stopTest();
    }
}