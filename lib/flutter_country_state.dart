library flutter_country_state;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_state/cty-list.dart';
import 'package:flutter_country_state/select_state.dart';

///this class holds the variable that displays the country and state picked from thge list
class Selected {
  static String country = '';
  static String state = '';
  static String city = '';
  static List selectedCityList = [];
}

class ShowCountryDialog extends StatefulWidget {
  ShowCountryDialog({
     this.substringBackground,
     this.searchHint,
     this.countryListTitle,
     this.subStringStyle,
     this.style,
     this.searchStyle,
     this.selectedCountryBackgroundColor,
     this.notSelectedCountryBackgroundColor,
    required this.onSelectCountry,
     this.countryHeaderStyle,
     this.inputDecoration,
     this.closeIcon,
  });

  final Color? substringBackground;
  final String? searchHint;
  final String? countryListTitle;
  final InputDecoration? inputDecoration;
  final TextStyle? style;
  final TextStyle? subStringStyle;
  final TextStyle? searchStyle;
  final TextStyle? countryHeaderStyle;
  final Color? selectedCountryBackgroundColor;
  final Color? notSelectedCountryBackgroundColor;
  final VoidCallback onSelectCountry;
  final Widget? closeIcon;
  @override
  _ShowCountryDialogState createState() => _ShowCountryDialogState();
}

class _ShowCountryDialogState extends State<ShowCountryDialog> {
  TextEditingController searchController = new TextEditingController();
  String filter = '';
  var itemscolor = <String>[];
  var items = <String>[];
  @override
  initState() {
    super.initState();

    ///merging the list of countries for fast loading
    var newList = [
      Country1.country1,
      Country2.country2,
      Country3.country3,
      Country4.country4,
      Country5.country5,
      Country6.country6,
      Country7.country7,
    ].expand((x) => x).toList();

    items.addAll(newList);
    searchController.addListener(() {
      setState(() {
        filter = searchController.text;
      });
    });
  }

  List<int> selectedIndex = [];
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.closeIcon??Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.topRight,
          child: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.close,color: Colors.red,),),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(widget.countryListTitle??"All countries".toUpperCase(),
              style: widget.countryHeaderStyle),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
          child: TextField(
            style: widget.searchStyle ?? TextStyle(fontSize: 20),
            controller: searchController,
            decoration: widget.inputDecoration??InputDecoration(
              hintText: "Search for a country...",
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Expanded(
          child: ListView(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    var users = items[index];
                    return filter == ""
                        ? Container(
                      padding: EdgeInsets.all(10.0),
                            width: double.maxFinite,
                             // color: selectedIndex.contains(index)
                             //     ? widget.selectedCountryBackgroundColor??Colors.grey
                             //     : widget.notSelectedCountryBackgroundColor?? Colors.red,
                            child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: widget.substringBackground?? Colors.blue,
                                  child: Text(
                                      users.substring(0, 1).toUpperCase(),
                                      style: widget.subStringStyle ?? TextStyle(fontSize: 20)),
                                ),
                                title: Text(items[index], style: widget.style),
                                onTap: () {
                                  _selectedICountry(items[index], index);
                                }))
                        : '${items[index]}'
                                .toLowerCase()
                                .contains(filter.toLowerCase())
                            ? Container(
                      padding: EdgeInsets.all(10.0),
                                width: double.maxFinite,
                                // color: selectedIndex.contains(index)
                                //     ? widget.selectedCountryBackgroundColor??Colors.blue
                                //     : widget.notSelectedCountryBackgroundColor?? Colors.black,
                                child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor:
                                          widget.substringBackground,
                                      child: Text(
                                          users.substring(0, 1).toUpperCase(),
                                          style: widget.subStringStyle ?? TextStyle(fontSize: 20)),
                                    ),
                                    title:
                                        Text(items[index], style: widget.style),
                                    onTap: () async {
                                      _selectedICountry(items[index], index);
                                    }),
                              )
                            : Container(
                                width: double.maxFinite,
                              );
                  }),
            ],
          ),
        ),
      ],
    );
  }

  _selectedICountry(String data, int index) async {
    setState(() {
      Selected.country = data;
      selectedIndex.clear();
      selectedIndex.add(index);
      stateFunction().stateList();
    });
    widget.onSelectCountry();
    setState(() {});
    Navigator.pop(context);
  }
}
