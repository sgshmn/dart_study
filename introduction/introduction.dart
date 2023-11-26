// importing core libraries
import 'dart:math';

// importing libraries from external packages
// import 'package:test/test.dart';
// 일종의 예시다

// importing files
// import 'path/to/my_other_file.dart';
// 여기도 마찬가지

void main(List<String> args) {
  print("Hello World!");

  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  // print('NAME : ' + name);
  // print('YEAR : ' + year.toString());
  // print('ANTENNA DIAMETER : ' + antennarDiameter.toString());
  // print('FLY BY OBJECTS : ' + flyByObjects.toString());
  // print('IMAGE : ' + image.toString());

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

  int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  var result = fibonacci(20);

  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  // This is a normal, one-line comment.

  /// This is a documentation comment, used to document libraries,
  /// classes, and their members. Tools like IDEs and dartdoc treat
  /// doc comments specially.

  /* Comments like these are also supported. */

  var voyoger = SpaceCraft('Voyoger I', DateTime(1977, 9, 5));
  voyoger.describe();

  print('');

  var voyager3 = SpaceCraft.unlaunched('Voyoger III');
  voyager3.describe();

  

}

class SpaceCraft {
  String name;
  DateTime? launchDate;

  // Read only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for asignment to members
  SpaceCraft(this.name, this.launchDate) {
    //Initialization code goes here
  }

  // Named constructor that forwards to the default one
  SpaceCraft.unlaunched(String name) : this(name, null);

  // Method
  void describe() {
    print('SpaceCraft: $name');
    // Type promotion doesn't work on getters

    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
