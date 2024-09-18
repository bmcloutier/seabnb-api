# SeaBnB

Seabnb was created as a learning exercise and acts as a demonstration of fundamental programming skills. The site is a play on Airbnb, and allows adventurers to book travel on seafaring vessels.

![SeaBnB planner in action](/public/SeaBnBPlanner.gif)

The planning page lets you explore travel options by selecting start and end ports. The list of available vessels are filtered by the vessel's home port. Prices are calculated based on the vessel's price per day and length of journey. If the user is logged in they can save bookings, and browse them on a nicely styled page.

This backend was created with Ruby on Rails using a PostgreSQL database. JWT and bcrypt gems allow for authentication.

![SeaBnB data model](/public/DataDiagram.png)

The [frontend](https://github.com/bmcloutier/seabnb-frontend) was created with React.js using Tailwindcss for styling. Maps were created with the MapboxGL library and currency conversion uses ExchangeRate-API.

## Requirements

- Ruby on Rails

## Installation

Add the following to your ruby gemfile:

```bash
gem "bcrypt", "~> 3.1.7"
gem "jwt"
gem "rack-cors"
```

## Usage

In your terminal, run the following command:

```bash
rails server
```

Your server should now be running on port 3000, ready to serve JSON to a front end!

## Roadmap

Here are a few improvements I'd like to explore:

- A method of verifying vessel availability prior to booking.
- A better selection method for each vessel.
- User preferences for currency and home port.
- Review model per vessel.
- Stretch goal: route path finding to avoid land!
