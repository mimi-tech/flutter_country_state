import 'package:flutter/material.dart';
import 'package:flutter_country_state/flutter_country_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedCountry = "";
  String selectedState = "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
         mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(selectedCountry),

            Text(Variables.state),
            ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    isDismissible: false,
                    builder: (context) =>  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: ShowMyDialog(
                        searchHint: 'Search for a country',
                        substringBackground: Colors.black,
                        style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        countryHeaderStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                        searchStyle: const TextStyle(color: Colors.black),
                        subStringStyle: const TextStyle(color: Colors.white),
                        selectedCountryBackgroundColor: Colors.pink,
                        notSelectedCountryBackgroundColor: Colors.white,
                        onSelectCountry: (){setState(() {
                          selectedCountry = Variables.country;
                        });},
                      ),
                    ),

                );
              },
              child: const Text("select country"),
            ),

            ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  isDismissible: false,
                  builder: (context) => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: StateDialog(
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      stateHeaderStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      subStringStyle: const TextStyle(color: Colors.white),
                      substringBackground: Colors.black,
                      selectedStateBackgroundColor: Colors.orange,
                      notSelectedStateBackgroundColor: Colors.white,
                      onSelectedState: (){
                        setState(() {
                          selectedState = Variables.state;
                        });
                      },
                    ),
                  ),

                );
              },
              child: const Text("select state"),
            ),


          ],
        ),
      ),

    );
  }
}
