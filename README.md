# Clock Tracker Application 

Allows employees at your organziation to log your 
check in and check out time daily.

## Setup 

* Clone the repo locally.
* Run `rails db:setup` 
* Run `rails db:migrate` for database changes. 
* Start the server with `rails s`
* Visit the site at: `http://localhost:3000`

## Testing 

* Run the existing specs using `rspec`

## Database Design 

* Allows me to create an application is simple but can still scale. 

### Users 
* First name tends to be called independently more frequently in apps, 
seperating the first and last name allows for more manipulation and 
easy reuse. 

* Users are linked to an organization to track the company that requires 
the logs.

#### Relationships 

* User belongs to a organization 

### Organizations
*  Organizations requires the information on users and their time logs.  

#### Relationships 

* A Organization has many users. 
* A Organization has many timelogs. 

### Timelogs
*  Timelogs should be able to track at least clock in at the time of creation.
A Timelog should be filed by a user for an organizaiton they are associated 
with.

#### Relationships 

*  A Timelog belongs to a organization. 
*  A Timelog belongs to a user.


![DB Schema](https://cdn3.imggmi.com/uploads/2019/11/5/73f57ff2dba5fa9368521beb90c58fc2-full.png)

## One Day Improvements

* UI/UX Improvments For Usability
   - General UI Design
   - Date and Time Picker
   - Setup Admin User, permissions and allow data to be exported 
    for organizations (leverage based on timing). 

* Technical Improvements 
   - Complete Feature Specs.
   - Add an organization email to recieve data.
   - Setup Mailer to send daily logs to organizations.   
   - Setup background job to seed employee data for each organization. 

## One Month Improvments 

* Discuss with End Users on the quick mvp and implement feedback. 
* Allow admins to add more options for logging purposes.
* Implement Multitenancy to allow isolation of organization's data and customization 
of the clock in and out app with branding colors. 
* Implement Continous Integrations to ensure builds are more reliable. 

## MVP Approach
* Completed a sketch of how the UX of the clock in and clock out should work on paper. 
* Decided the models I wanted to introduce and their relationships. 
* Built the MVP off the schema design on paper. 
* Leveraged existing gems to accelerate development time. 
* Introduced model and controller specs, with more time, I would introduce feature specs for complete functionality testing.
