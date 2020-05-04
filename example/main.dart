import 'package:flutter/material.dart';
import 'package:flutter_country_state/flutter_country_state.dart';
import 'package:flutter_country_state/st.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'flutter_country_states page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
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

//This displays the name of the state selected.
              Text( Variables.pstate ),
              //This displays the name of the country selected
              Text( Variables.property_country ),
              //Dialog showing all the countries.
              Container(child:  showCountry(),),
              //Dialog showing the state of the country selected
              Container(child: StateDialog(),),

            ],
          ),
        ),
      ),

    );
  }
}
