# Cursos-Salesforce-App

* Salesforce package with Course, Registration, and Attendance Objects
* Uses Apex, Visualforce, jQuery, CSS
* Automatically creates Attendance records when Contact is registered for a course
* Buttons allow for multiple registrations
* Calendar displays courses, when clicked directs to course page, on hover displays course information
* Includes web integration that allows guests to sign up from the calendar and stores their information into database

This app can be found and downloaded for free into your Salesforce environment through Salesforce Appexchange. The manual can also be downloaded here.

Sample of functionality:
---

Tabs: Course object, Registration object, Attendance Object, Course Calendar

![ScreenShot](https://raw.github.com/elizabethtian/Cursos-Salesforce-App/master/Tabs.png "Tabs")

Course Calendar page: Allows for web integration; filter by course name; description on hover; Signup page on click

![ScreenShot](https://raw.github.com/elizabethtian/Cursos-Salesforce-App/master/Calendar.png "Calendar")

Signup page: Course info displayed; new registration to the course stored in Salesforce database (if "Asistente Nuevo" is selected, a new Contact is created and linked to this registration; if "Asistente Viejo" is selected, the registration is linked to a previous contact in the Salesforce database)

![ScreenShot](https://raw.github.com/elizabethtian/Cursos-Salesforce-App/master/Signup.png "Signup")

Course object: requires start date, end date, frequency (weekly, biweekly, month), days of the week (e.g. MWF); related list of registrations and attendances; "Multiples Inscripciones" button

![ScreenShot](https://raw.github.com/elizabethtian/Cursos-Salesforce-App/master/Course.png "Course")

Multiple Registration button: adds multiple contacts to this course, creating new Registration and Attendance objects correspondingly

![ScreenShot](https://raw.github.com/elizabethtian/Cursos-Salesforce-App/master/Multiples.png "Multiple")

Registration object: connected to a Contact and a Course

![ScreenShot](https://raw.github.com/elizabethtian/Cursos-Salesforce-App/master/Registration.png "Register")

Attendance List View: attendance objects are created automatically when a registration is created for a course, corresponding to the exact dates that the contact will attend; a course instructor can then select who has attended their course for a particular day

![ScreenShot](https://raw.github.com/elizabethtian/Cursos-Salesforce-App/master/Attendance.png "Attendance")

Attendance object

![ScreenShot](https://raw.github.com/elizabethtian/Cursos-Salesforce-App/master/Att.png "Att")
