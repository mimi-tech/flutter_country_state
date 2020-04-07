# flutter_country_state

A package for Flutter with a heart of gold.
A customizable Flutter package that displays all countries with there respective state.
### show some :heart: and star the repo to support the project.

## Example

 Please run the app in the [Example](https://github.com/mimi-tech/flutter_country_state/tree/master/example) folder

## Installation
* add the dependency to your [pubspec.yaml](https://github.com/mimi-tech/flutter_country_state/tree/master/pubspec.yaml) file.
```
dependencies:
  flutter:
    sdk: flutter
  flutter_country_state:
  ```
## Important

For the country and state selected to be displayed, Go the library and uncomment the routing, replace the class COUNTRYLIST with your own
class name. THANKS

 ## Use It
  ``` dart
 import 'package:flutter_country_state/flutter_country_state.dart';
 import 'package:flutter_country_state/st.dart';
 
  class Country extends StatefulWidget {
    @override
    _CountryState createState() => _CountryState();
  }

  class _CountryState extends State<Country> {
    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[

        //This displays the name of the state selected.
          Text( Variables.pstate ),
          //This displays the name of the country selected
          Text( Variables.property_country ),
          //Dialog showing all the countries.
          Container(child:  showCountry(),),
          //Dialog showing the state of the country selected
          Container(child: StateDialog(),),
        ],
      );
    }
  }

```

## Check this

Happy Coding!!!