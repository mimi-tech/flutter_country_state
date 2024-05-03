import 'package:flutter/material.dart';
import 'package:flutter_country_state/flutter_country_state.dart';
import 'package:flutter_country_state/state_screen.dart';
import 'package:flutter_country_state/city_screen.dart';
String selectedState = "";
String selectedCity = "";
String selectedCountry = "";
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
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white)
      ),
      home: const MyHomePage(title: 'Flutter_counntry_state Demo'),
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

            Text(selectedState),
            Text(selectedCity),

            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CountryScreen()),
                // );
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    isDismissible: false,
                    builder: (context) =>  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: ShowCountryDialog(
                        searchHint: 'Search for a country',
                        substringBackground: Colors.black,
                        style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        countryHeaderStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                        searchStyle: const TextStyle(color: Colors.black),
                        subStringStyle: const TextStyle(color: Colors.white),
                        selectedCountryBackgroundColor: Colors.pink,
                        notSelectedCountryBackgroundColor: Colors.white,
                        onSelectCountry: (){setState(() {
                          selectedCountry = Selected.country;
                        });},
                      ),
                    ),

                );
              },
              child: const Text("select country"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => TestStateFull()),
                // );

                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  isDismissible: false,
                  builder: (context) => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ShowStateDialog(
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      stateHeaderStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      subStringStyle: const TextStyle(color: Colors.white),
                      substringBackground: Colors.black,
                      selectedStateBackgroundColor: Colors.orange,
                      notSelectedStateBackgroundColor: Colors.white,
                      onSelectedState: (){
                        setState(() {
                          selectedState = Selected.state;
                        });
                      },
                    ),
                  ),

                );
              },
              child: const Text("select state"),
            ),
            const SizedBox(height: 20,),


            ElevatedButton(
              onPressed: (){

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => TestFullClass()),
                // );




                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  isDismissible: false,
                  builder: (context) => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ShowCityDialog(
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      subStringStyle: const TextStyle(color: Colors.white),
                      substringBackground: Colors.black,
                      selectedCityBackgroundColor: Colors.orange,
                      notSelectedCityBackgroundColor: Colors.white,
                      onSelectedCity: (){
                        setState(() {
                          selectedCity = Selected.city;
                        });
                      },
                    ),
                  ),

                );
              },
              child: const Text("select city"),
            ),


          ],
        ),
      ),

    );
  }
}


class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowCityDialog(
        style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
        subStringStyle: const TextStyle(color: Colors.white),
        substringBackground: Colors.black,
        selectedCityBackgroundColor: Colors.orange,
        notSelectedCityBackgroundColor: Colors.white,
        onSelectedCity: (){
          setState(() {
            selectedCity = Selected.city;
          });
        },
      ),
    );
  }
}

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowCountryDialog(
        searchHint: 'Search for a country',
        substringBackground: Colors.black,
        style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        countryHeaderStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
        searchStyle: const TextStyle(color: Colors.black),
        subStringStyle: const TextStyle(color: Colors.white),
        selectedCountryBackgroundColor: Colors.pink,
        notSelectedCountryBackgroundColor: Colors.white,
        onSelectCountry: (){setState(() {
          selectedCountry = Selected.country;
        });},
      ),
    );
  }
}

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowStateDialog(
        style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
        stateHeaderStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        subStringStyle: const TextStyle(color: Colors.white),
        substringBackground: Colors.black,
        selectedStateBackgroundColor: Colors.orange,
        notSelectedStateBackgroundColor: Colors.white,
        onSelectedState: (){
          setState(() {
            selectedState = Selected.state;
          });
        },
      ),
    );
  }
}

