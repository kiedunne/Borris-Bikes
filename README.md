## Borris Bikes - Makers Week 1 Challenge ##

#### Instructions ####

*Let's go back several years, to the days when there were no Boris Bikes. Imagine you are working for Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.*

#### Challenge 2: Creating a Domain Model from User Stories ####

User Story

*As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working*

| Objects        | Messages           
| ---------------|:----------------------:|
| person         |                        |
| bike           | check_bike_working     |
| docking station| releasing_a_bike       |

person ---> check_bike_working
docking station ---> check_bike_working == true? ---> releasing_a_bike == true --> bike


#### Challenge 3 & 4: Stack Trace and Error Reporting ####

*1. Write down the type of error
 2. Write down the file path where the error happened
 3. Write down the line number of the error
 4. Use the Ruby Documentation to find out what the error means
 5. Suggest one way of solving the error.*

NameError: uninitialized constant DockingStation
  from (irb):1
  from /Users/username/.rvm/rubies/ruby-2.2.2/bin/irb:11:in '<main>'

1. Uninitialized constant error - no class called DockingStation to instantiate.
2. /Users/username/.rvm/rubies/ruby-2.2.2/bin/irb:11:in
3. Line 11.
4. *You'll see this error when the code refers to a class or module that it can't find, often because the code doesn't include require, which instructs the Ruby file to load the class.*
5. Create a class called DockingStation.
