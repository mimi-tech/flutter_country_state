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

 ### You can also change the style of the text of list of the country and states
 ## Use It
 ### This will display the countries
  ``` dart
 import 'package:flutter/material.dart';
 import 'package:flutter/cupertino.dart';
 import 'package:flutter_country_state/flutter_country_state.dart';

 class ShowCountry extends StatelessWidget {


   @override
   Widget build(BuildContext context) {
     return   GestureDetector(
                              child:Padding(
                                padding: EdgeInsets.symmetric(horizontal:20),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child:  Column(
                                    children: <Widget>[
                                      Text('select country' ),
                                      Text(Variables.country,

                                      )
                                    ],
                                  ),


                                ),
                              ),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    child: SimpleDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      elevation: 4,
                                      children: <Widget>[

                                        Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                              onTap: (){
                                               //Redirect to the screen of your choice or pop out
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(right:18.0),
                                                child: Material(
                                                  color:Colors.red,
                                                  child: Text('Done',

                                                  ),
                                                ),
                                              )
                                          ),
                                        ),
                                        SingleChildScrollView(
                                            child: Container(child: ShowMyDialog(
                                           searchHint: 'Search country',
                                           substringBackground: Colors.green,
                                           textColors: Colors.black,
                                           substringTextColor: Colors.white,
                                           fontSize: 18,
                                           substringFontSize: 14,
                                           fontFamily: '',
                                           fontStyle: FontStyle.normal,
                                            ))

                                        )
                                      ],

                                    )
                                );
                              }
                          ),

   }
 }
```
### This will display the states of the country selected
 ``` dart
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_country_state/flutter_country_state.dart';
class ShowState extends StatefulWidget {

  @override
  _ShowStateState createState() => _ShowStateState();
}

class _ShowStateState extends State<ShowState> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                              child:Padding(
                                padding: EdgeInsets.symmetric(horizontal:20),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: <Widget>[
                                        Text( 'select state',
                                        ),
                                        Text( Variables.state,
                                        ),
                                      ],
                                    )

                                ),
                              ),
                              onTap: (){
                                showDialog(
                                    context: context,
                                    builder: (context) => SimpleDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      elevation: 4,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                              onTap: (){
                                                //Redirect to the screen of your choice or pop out
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(right:18.0),
                                                child: Material(
                                                  color:Colors.red,
                                                  child: Text('Done',

                                                  ),
                                                ),
                                              )
                                          ),
                                        ),

                                        SingleChildScrollView(child: Container(child:StateDialog(
                                        substringTextColor: Colors.white,
                                        fontSize: 18,
                                        textColors: Colors.black,
                                        substringFontSize: 14,
                                        fontFamily: '',
                                        fontStyle: FontStyle.normal,
                                        substringBackground: Colors.blueAccent,
                                        ),),)

                                      ],

                                    )
                                );

                              }
                          ),

  }
}
```

## Check this

Happy Coding!!!