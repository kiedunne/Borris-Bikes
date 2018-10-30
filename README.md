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
