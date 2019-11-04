# Clock Tracker Applicaition 

Allows employees at your organziation to log your 
check in and check out time daily.

## Setup 

* Clone the repo locally.
* Run `rails db:setup` 
* Run `rails db:migarate` for database changes. 
* Start the server with `rails s`
* Visit the site at: `http://localhost:3000`

## Testing 

* Run the existing specs using `rspec`

## Database Design 


## One Day Improvments

* UI/UX Improvments For Usability
   - General UI Design
   - Date and Time Picker
   - Admin User Gem setup to allow data to be exported 
    for organizations. 

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