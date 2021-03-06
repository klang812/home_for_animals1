# Animal Shelter -- API

#### Week 6 Ruby Animal Shelter -- API - created:  4/2/2021

#### By _**Kerry Lang**_

## Technologies Used

* _Ruby 2.6.5_
* _Rails 5.2.0_
* _Bundler 1.17.2_
* _RSpec 3.10_
* _pry 0.14.0_
* _Capybara_
* _Postresql_
* _Swagger_


## Description
_This is an API for a fictitious animal shelter with a one to many relationship.  Below you will find all of the CRUD functionality mappet out for you.  Please follow the directions below for installation and setup._

# Project Database Schema

![Table Schema](/public/img/database_schema.png)

## Setup/Installation Requirements

View directly:
* You can view this directly on my <a href="https://github.com/klang812/home_for_animals1" target="_blank">GitHub pages</a>.

Requirements:
* You will need to use your system's **terminal emulator** to setup and use this program.
* You **must** have `Ruby 2.6.5` installed to be able to run this program ([how to install Ruby 2.6.5](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby)).
* `Bundler` is also **required**. *After you install `Ruby`*, it can be installed with the following command.
  `$ gem install bundler`

Download the repo:
* Go to https://github.com/klang812/home_for_animals1.
* Navigate to and click the green <img src="code.PNG" alt="code" height="20"> button on middle upper right part of webpage.
* Click on "Download ZIP"
* Navigate to the downloaded zip and open it.
* Open the folder inside the zip.
* Double-click on the HTML file to open it 

Clone the repo:
* Go to https://github.com/klang812/home_for_animals1.
* Navigate to and click the green <img src="code.PNG" alt="code" height="20"> that is near the right edge of the tab bar atop this README.
* Copy the HTTPs address to your clipboard.
* Open terminal or bash and navigate to or create a directory into which you will store the entire project on your machine.
* Once you have switched into your desired directory, in your terminal or command line prompt, enter the following:
> `$ git clone https://github.com/klang812/home_for_animals1` and press <kbd>ENTER</kdb>
* Change directory into the new root folder of this project
> `$ cd home_for_animals1`
* Type "code ." into your terminal to launch your default text/code editer at this directory
> `$ code .`
* Install all application dependencies using `Bundler`.  This will install all packages listed in the `Gemfile`.
  `$ bundle install`

* You will need to use rails to set up the database on Postgres by running the following commands:
> `$ rake db:create`<br>
> `$ rake db:migrate`<br>
> `$ db:test:prepare`<br>
> `$ db:seed`

* After set up please open the local version on your browser, `$ rails s`.  To open on your browser you will need to navigate to `http://localhost:3000/`.

Testing:
* This is a testing project utilizing Test-Driven Development (TDD).
* Using the test command `$ rspec` you will be able to test the program yourself and verify its functionality.

Postman: Download the Postman app and test the CRUD functionality for yourself! Or please see below:

![Table Schema](/public/img/get_shelters.png)
![Table Schema](/public/img/post_shelters.png)
![Table Schema](/public/img/patch_shelters.png)
![Table Schema](/public/img/delete_shelter.png)
![Table Schema](/public/img/get_pets.png)
![Table Schema](/public/img/post_pets.png)
![Table Schema](/public/img/patch_pets.png)
![Table Schema](/public/img/delete_pets.png)

## Known Bugs

* _None at this time_


## License
_GPL_

Copyright (c) 2021 **_Kerry Lang_**

## Contact Information
* Reach Kerry: via <a href="https://www.linkedin.com/in/klang812/" target="_blank">LinkedIn</a> or <a href="mailto:klang812@gmail.com" target="_blank">Email</a>.<br>
* Checkout Kerry's <a href="https://github.com/klang812" target="_blank">GitHub profile</a>.</li>