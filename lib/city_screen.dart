
import 'package:flutter/material.dart';
import 'package:flutter_country_state/complied_cities.dart';
import 'package:flutter_country_state/flutter_country_state.dart';




class ShowCityDialog extends StatefulWidget {
  ShowCityDialog({
     this.substringBackground,
     this.searchHint,
    this.cityListTitle,
     this.subStringStyle,
     this.style,
     this.searchStyle,
     this.selectedCityBackgroundColor,
     this.notSelectedCityBackgroundColor,
     required this.onSelectedCity,
     this.countryHeaderStyle,
    this.inputDecoration,
    this.closeIcon,
  });

  final Color? substringBackground;
  final String? searchHint;
  final String? cityListTitle;
  final InputDecoration? inputDecoration;
  final TextStyle? style;
  final TextStyle? subStringStyle;
  final TextStyle? searchStyle;
  final TextStyle? countryHeaderStyle;
  final Color? selectedCityBackgroundColor;
  final Color? notSelectedCityBackgroundColor;
  final VoidCallback onSelectedCity;
  final Widget? closeIcon;
  @override
  _ShowCityDialogState createState() => _ShowCityDialogState();
}

class _ShowCityDialogState extends State<ShowCityDialog> {
  TextEditingController searchController = new TextEditingController();
  String filter = '';
  var itemscolor = <String>[];
  getTheCities(){
    List<Map<String, dynamic>>? selectedCountryData;

// Find the selected country
    for (var countryData in allStatesWithCities) {
      if (countryData is Map<String, dynamic> && countryData.containsKey(Selected.country)) {

        selectedCountryData = countryData[Selected.country];
        break;
      }
    }

// Check if the selected country was found
    if (selectedCountryData != null) {
      // Find the selected state and get its cities
      for (var stateData in selectedCountryData) {
        for (var stateEntry in stateData.entries) {
          String stateName = stateEntry.key;
          if (stateName == Selected.state) {
            // Get the list of cities for the selected state
            Selected.selectedCityList = stateEntry.value;

            break;
          }
        }
      }
    } else {
      print('Selected country not found');
    }

  }
  @override
  initState() {
    super.initState();
    getTheCities();
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
          child: Text(widget.cityListTitle??"Cities found in ${Selected.state}".toUpperCase(),
              style: widget.countryHeaderStyle?? TextStyle(fontSize: 20)),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
          child: TextField(
            style: widget.searchStyle??TextStyle(fontSize: 16),
            controller: searchController,
            decoration: widget.inputDecoration??InputDecoration(
              hintText: "Search for a city...",
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: Selected.selectedCityList.length,
                  itemBuilder: (context, index) {
                     var pickedCity = Selected.selectedCityList[index];
                    return filter == ""
                        ? Container(
                        padding: const EdgeInsets.all(10.0),
                        width: double.maxFinite,
                        // color: selectedIndex.contains(index)
                        //     ? widget.selectedCityBackgroundColor??Colors.blue
                        //     : widget.notSelectedCityBackgroundColor??Colors.transparent,
                        child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: widget.substringBackground?? Colors.blue,
                              child: Text(
                                  pickedCity.substring(0, 1).toUpperCase(),
                                  style: widget.subStringStyle?? TextStyle(fontSize: 16)),
                            ),
                            title: Text(pickedCity, style: widget.style),
                            onTap: () {
                              _selectedICountry(pickedCity, index);
                            }))
                        : '$pickedCity'
                        .toLowerCase()
                        .contains(filter.toLowerCase())
                        ? Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                                                width: double.maxFinite,
                          //                       color: selectedIndex.contains(index)
                          //                     ? widget.selectedCityBackgroundColor??Colors.blue
                          // : widget.notSelectedCityBackgroundColor??Colors.black,
                                                child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor:
                              widget.substringBackground,
                              child: Text(
                                  pickedCity.substring(0, 1).toUpperCase(),
                                  style: widget.subStringStyle),
                            ),
                            title:
                            Text(pickedCity, style: widget.style),
                            onTap: () async {
                              _selectedICountry(Selected.city[index], index);
                            }),
                                              ),
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
      Selected.city = data;
      selectedIndex.clear();
      selectedIndex.add(index);

    });
    widget.onSelectedCity();
    setState(() {});
    Navigator.pop(context);
  }
}
