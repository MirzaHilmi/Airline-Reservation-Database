<img src="https://raw.githubusercontent.com/MirzaHilmi/SBD-Final-Project/master/docs/banner-image.png" alt="banner that says Sistem Basis Data">

# SBD Final Project
`Final Project for the Database System Course`

This repository contains the final project for the Database System course. The project is developed as part of the course requirements and aims to showcase the knowledge and skills gained during the course.

## Project Description

The project is a database system designed for a fictitious airline that sells airline tickets for multiple flight schedules. The system allows users to browse and purchase airline tickets for specific dates and times. Once a ticket is booked, users will be prompted to complete the payment process. Additionally, the system allows the Database Admin to view all procedures and records that are stored every time a customer books a ticket.

## Early Design of the Database

The database schema is designed with the following entities:

- `Flights`: stores information about each flight, such as flight number, destination, departure time, arrival time, and capacity.
- `Customer`: stores information about each customer, such as username, email, and phone number.
- `Ticket`: stores information about each booking, such as booking ID, customer ID, flight ID, and booking date.
- ... 
 
The schema is designed to ensure data integrity, prevent data redundancy, and allow for efficient data retrieval.

#### Entity Relationship Diagram

<img src="https://raw.githubusercontent.com/MirzaHilmi/SBD-Final-Project/master/docs/erd.png" alt="image that show er diagram of the database">

#### Relational Diagram

<img src="https://raw.githubusercontent.com/MirzaHilmi/SBD-Final-Project/master/docs/relational.png" alt="image that relational diagram of the database">

## Technologies Used

The project is developed using the following technologies:

- MySQL: the database management system used to store and retrieve data.

## Contributors

- [Mirza Hilmi](https://github.com/MirzaHilmi)

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
