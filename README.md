# Flutter MVC Base Pattern

It provides basic and simply functionality of MVC pattern to flutter applications.

# Installation

1. Copy `mvc_controller.dart` file to your project.
2. Enjoy

# How to use

## Creating controllers

### StatefulWidget
When using controllers on Stateful widgets, controller must extends `StateControllerMVC` class.
For example:
![alt text](https://github.com/gtteamamxx/Flutter-mvc-base/blob/master/image3.png)


### StatelessWidget
When using controllers on Stateless widgets, controller must extends `ControllerMVC` class.
For example:
![alt text](https://github.com/gtteamamxx/Flutter-mvc-base/blob/master/image4.png)

## Creating widgets

### StatefulWidget

1. Simply create `StatefulWidget` as you created it as always.
1. Create widget state by extending `StateMVC class` and passing page type & controller type
1. Pass to Widget state a controller 
1. Use controller by `controller` variable


![alt text](https://github.com/gtteamamxx/Flutter-mvc-base/blob/250f29b5a883a60df70df923a30ba124f8531b77/image.png)

### StatelessWidget

1. Create stateless widget by using `StatelessMVC<T>` type
1. Use controller by `controller` variable
![alt_text](https://github.com/gtteamamxx/Flutter-mvc-base/blob/master/image2.png)

### Example of working above code:

![alt text](https://raw.githubusercontent.com/gtteamamxx/Flutter-mvc-base/master/gif.gif)
