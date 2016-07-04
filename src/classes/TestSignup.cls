@isTest
public class TestSignup {

    @isTest static void testExtension() {
    	Date start1 = Date.newInstance(2016, 1, 1);
        Date end1 = Date.newInstance(2016, 1, 15);
        List<Curso__c> courses = new List<Curso__c>();
    	Curso__c bento = new Curso__c(Name='Bento',
    								  Fecha_de_Inicio__c=start1,
    								  Fecha_de_Finalizacion__c=end1,
    								  D_as__c='Viernes',
    								  Frecuencia__c='Semanalmente'
    								  );        
        courses.add(bento);
        insert courses;
        Contact c = new Contact(LastName='Hello', Email='tiger@yahoo.com');
        insert c;
		ApexPages.StandardController sc = new ApexPages.standardController(bento);
    	Signup e = new Signup(sc);
        Test.startTest();
        e.cur = courses;
        e.contact = c;
        e.showNewContact();
        e.inscrib();
        e.showOld();
        e.inscrib();
        e.calendar();
		Test.stopTest();
    }
}