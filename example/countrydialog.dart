import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'country.dart';
import 'main.dart';
import 'variables.dart';


class ShowMyDialog extends StatefulWidget {
  @override
  _ShowMyDialogState createState() => _ShowMyDialogState();
}

class _ShowMyDialogState extends State<ShowMyDialog> {
  TextEditingController searchController = new TextEditingController();
  String filter;
  var items = List<String>();
  @override  initState() {
    var newList = [Country1.Countrys1,
      Country2.country2, Country3.country3,
      Country4.country4, Country5.country5,
      Country6.country6, Country7.country7,
    ].expand((x) => x).toList();
    items.addAll(newList);
    searchController.addListener(() {
      setState(() {
        filter = searchController.text;
      });
    });
  }
  @override  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(left:8.0, right:8.0,top: 20),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search Contacts',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount:items.length,
              itemBuilder: (context, index) {
                var users = items[index];
                return filter == null || filter == "" ? ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    child: Text(users.substring(0,1).toUpperCase()),
                  ),
                  title: Text(items[index],),
                  onTap: () => _selectedICountry(context, items[index]),

                ) : '${items[index]}'.toLowerCase()
                    .contains(filter.toLowerCase())
                    ? ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    child: Text(users.substring(0,1).toUpperCase()),
                  ),
                  title: Text(items[index],),
                  onTap: () => _selectedICountry(context, items[index]),

                ):  Container();
              }
          ),
        ],
      ),
    );

  }

  _selectedICountry(BuildContext context, String data) {
    Navigator.pop(context);
    setState(() {
      Variables.property_country = data;
      print(Variables.property_country);
      Navigator.of(context).pushReplacement
        (MaterialPageRoute(builder: (context) => MyApp()));
    });

  }
}

