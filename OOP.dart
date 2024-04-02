import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Base class with inheritance
class Mammal {
  void breathe() {
    print('Breathing...');
  }
}

// Class implementing an interface and overriding a method
class Dog extends Mammal implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }

  // Method that demonstrates the use of a loop
  void doTricks() {
    print('Performing tricks...');
    for (int i = 1; i <= 3; i++) {
      print('Trick $i');
    }
  }
}

void main() {
  // Initialize instance of Dog class with data from a file
  var dog = Dog();
  File('data.txt').readAsString().then((data) {
    print('Initializing dog with data from file:');
    print(data);
    // Assuming data contains dog's name, age, etc.
  }).catchError((e) {
    print('Error reading file: $e');
  });

  // Demonstrate method that uses a loop
  dog.doTricks();

  // Demonstrate method overriding
  dog.breathe();

  // Demonstrate interface implementation
  dog.makeSound();
}
