import 'package:flutter/material.dart';
import 'package:flutter_country_state/flutter_country_state.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_country_states page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'flutter_country_states page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({ required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //ToDo: first import the package

              GestureDetector(
                  child:Padding(
                    padding: EdgeInsets.symmetric(horizontal:20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:  Column(
                        children: <Widget>[
                          Text('select country',

                          ),
                          Text(Variables.country,

                          )
                        ],
                      ),


                    ),
                  ),
                  onTap: () {
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

              /*for states selected*/

              GestureDetector(
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

            ],
          ),
        ),
      ),

    );
  }
}
