public class Signup {
    public ApexPages.StandardController controller;
    public String newContactFirstName {get; set;}
    public String newContactLastName {get; set;}
    public Inscripcion__c newInscrip {get; set;}
    public Id courseId = (Id) ApexPages.currentPage().getParameters().get('id');
    public Boolean newContact {get; set;}
    public Boolean oldContact {get; set;}
    
    public Signup(ApexPages.StandardController control) {
        this.controller = control;
        newContact = false;
        oldContact = false;
        newInscrip = new Inscripcion__c();
    }
    
    public void showNewContact() {
        if (oldContact == true) oldContact = false;
        newContact = true;
    }
    
    public void showOld() {
        if (newContact == true) newContact = false;
        oldContact = true;
    }
    
    public PageReference calendar() {
        PageReference cal = new PageReference(Site.getBaseUrl() + '/' + 'Calendar_Website');
        return cal;
    }
    
    public PageReference inscrib() {
        try {   
            if (oldContact == true) {
                newInscrip.Curso__c=courseId;
                newInscrip.Estado__c='Activo';
                newInscrip.Fecha_de_Inscripcion__c=Date.today();
                insert newInscrip;
            }
            else if (newContact == true) {
                Contact newContactRecord = new Contact(FirstName=newContactFirstName,LastName=newContactLastName);
                insert newContactRecord;
                newInscrip.Asistente__c=newContactRecord.id;
                newInscrip.Curso__c=courseId;
                newInscrip.Estado__c='Activo';
                newInscrip.Fecha_de_Inscripcion__c=Date.today();
                insert newInscrip;
            }
            ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.CONFIRM, 'Success!'));
        }
        catch(DmlException e) {
            
        }
        return null;
    }
}