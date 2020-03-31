# flutter_country_state
A package for Flutter with a heart of gold.
A new Flutter package that displays all countries with there respective state.
### show some :heart: and star the repo to support the project.

## Screenshots
<img src="ss1.jpg" height="300em" /> <img src="ss2.jpg" height="300em" /> <img src="ss3.jpg" height="300em" /> <img src="ss4.jpg" height="300em" />

[Example]

 Please run the app in the [Example](https://github.com/mimi-tech/flutter_country_state/tree/master/example)

## Installation
* add the dependency to your [pubspec.yaml](https://github.com/mimi-tech/flutter_country_state/tree/master/pubspec.yaml) file.
```
dependencies:
  flutter:
    sdk: flutter
  flutter_country_state:
  ```

 ## Use It
  ``` dart
 import 'package:flutter_country_state/flutter_country_state.dart';

  class Country extends StatefulWidget {
    @override
    _CountryState createState() => _CountryState();
  }

  class _CountryState extends State<Country> {
    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Text( Variables.pstate ),
          Text( Variables.property_country ),
          Container(child:  showCountry(),)
          Container(child: StateDialog(),)
        ],
      );
    }
  }

