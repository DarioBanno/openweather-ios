# OpenWeather
Sample app for Open Weather Map

## Getting Started


These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

OpenWeather has been implemented using Xcode 8.3.2 and supports iOS 10.0.

### Installing

OpenWeather does not depend on any external library. As such you can compile, install and test with the native Xcode tools.

### Project structure and architecture

The architecture followed for this project is the Clean Architecture and MVVM.

The project is organised following this pattern and the folders are as follows:

- UI
-- Views
-- View Controllers
-- View Models

- Network
-- Services

- Models

- Utils
-- Protocols
-- Extensions

- Resources 

### Unit Tests

Unit Tests are organised following the main project folder structure. A TDD practice has been followed when writing unit tests for across the entire project.

### Consideration on future improvements

This test has been implemented in 4 hours. Possible improvements are UI related. A loading screen and error management for the network on the UI side can be implemented, error management is implemented on the HTTP client however. 
Other possible improvements are an initial view listing a number of favourited cities and a search view, along with a persistent storage to keep your favourite in place even after exiting the app.

## Branching

For simplicity, no specific branching strategy has been followed for this project. The entire code is on main. 

## Authors

* **Dario Banno** - *AppTown* (http://www.apptown.io)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


