library flutter_country_state;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_state/cty-list.dart';
import 'package:flutter_country_state/state-list.dart';

///this class holds the variable that displays the country and state picked from thge list
class Variables{
  static String country = '';
  static String state = '';
}
class ShowMyDialog extends StatefulWidget {
  ShowMyDialog({
    required this.substringBackground,
    required this.searchHint,
    required this.subStringStyle,
    required this.style,
    required this.searchStyle,
    required this.selectedCountryBackgroundColor,
    required this.notSelectedCountryBackgroundColor,
    required this.onSelectCountry,
    required this.countryHeaderStyle,

  });

  final Color substringBackground;
  final String searchHint;

  final TextStyle style;
  final TextStyle subStringStyle;
  final TextStyle searchStyle;
  final TextStyle countryHeaderStyle;
  final Color selectedCountryBackgroundColor;
  final Color notSelectedCountryBackgroundColor;
  final VoidCallback onSelectCountry;
  @override
  _ShowMyDialogState createState() => _ShowMyDialogState();
}

class _ShowMyDialogState extends State<ShowMyDialog> {
  TextEditingController searchController = new TextEditingController();
   String filter = '';
  var itemscolor = <String>[];
  var items = <String>[];
  @override  initState() {
    super.initState();
    ///merging the list of countries for fast loading
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
  List<int>selectedIndex = [];
  @override  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text("All countries".toUpperCase(),style: widget.countryHeaderStyle),
        ),
        Padding(
          padding: EdgeInsets.only(left:8.0, right:8.0,top: 20),
          child: TextField(
            style: widget.searchStyle,
            controller: searchController,
            decoration: InputDecoration(
              hintText: "Search for a country...",
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount:items.length,
                  itemBuilder: (context, index) {
                    var users = items[index];
                    return filter == "" ? Container(
                      width: double.maxFinite,
                      color: selectedIndex.contains(index)?widget.selectedCountryBackgroundColor:widget.notSelectedCountryBackgroundColor,
                      child: ListTile(

                        leading: CircleAvatar(
                          backgroundColor:  widget.substringBackground,
                          child: Text(users.substring(0,1).toUpperCase(),
                          style: widget.subStringStyle),
                        ),
                        title: Text(items[index],
                        style: widget.style),
                        onTap: () {
                          _selectedICountry( items[index], index);

                        }

                      )
                    ) : '${items[index]}'.toLowerCase()
                        .contains(filter.toLowerCase())
                        ? Container(
                      width: double.maxFinite,
                      color: selectedIndex.contains(index)?widget.selectedCountryBackgroundColor:widget.notSelectedCountryBackgroundColor,

                      child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor:  widget.substringBackground,
                          child: Text(users.substring(0,1).toUpperCase(),
                            style: widget.subStringStyle),
                      ),
                      title: Text(items[index],
                          style:widget.style),
                      onTap: () async {
                        _selectedICountry( items[index], index);

                      }

                    ),
                        ):  Container(
                      width: double.maxFinite,
                    );
                  }
              ),
            ],
          ),
        ),
      ],
    );

  }

  _selectedICountry(String data, int index) async {

    setState(() {
      Variables.country = data;
      selectedIndex.clear();
      selectedIndex.add(index);
    });
    widget.onSelectCountry();
    setState(() {});
    Navigator.pop(context);


  }
}

class StateDialog extends StatefulWidget {
  StateDialog({
    required this.substringBackground,
    required this.subStringStyle,
    required this.style,
    required this.selectedStateBackgroundColor,
    required this.notSelectedStateBackgroundColor,
    required this.onSelectedState,
    required this.stateHeaderStyle,
  });

  final Color substringBackground;
  final TextStyle style;
  final TextStyle subStringStyle;
  final TextStyle stateHeaderStyle;
  final Color selectedStateBackgroundColor;
  final Color notSelectedStateBackgroundColor;
  final VoidCallback onSelectedState;

  @override
  _StateDialogState createState() => _StateDialogState();
}
class _StateDialogState extends State<StateDialog> {
  List<int> selectedState = [];
  @override
  Widget build(BuildContext context){

    if (Variables.country == 'Afghanistan') {
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Afghanistan.States);
        });
      }else if(Variables.country == 'Albania'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Albania.States);
        });
      }else if(Variables.country == 'Algeria'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Algeria.States);
        });
      }else if(Variables.country == 'Andorra'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Andorra.States);
        });
      }else if(Variables.country == 'Angola'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Angola.States);
        });
      }else if(Variables.country == 'Anguilla'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Anguilla.States);
        });
      }else if(Variables.country == 'Antarctica'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Antarctica.States);
        });
      }else if(Variables.country == 'Antigua and Barbuda'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Antigua.States);
        });
      }else if(Variables.country == 'Argentina'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Argentina.States);
        });
      }else if(Variables.country == 'Armenia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Armenia.States);
        });
      }else if(Variables.country == 'Arab'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Arab.States);
        });
      }else if(Variables.country == 'Australia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Australia.States);
        });
      }else if(Variables.country == 'Austria'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Austria.States);
        });
      }else if(Variables.country == 'Azerbaijan'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Azerbaijan.States);
        });
      }else if(Variables.country == 'Bahamas'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Bahamas.States);
        });
      }else if(Variables.country == 'Bahrain'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Bahrain.States);
        });
      }else if(Variables.country == 'Bangladesh'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Bangladesh.States);
        });
      }else if(Variables.country == 'Barbados'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Barbados.States);
        });
      }else if(Variables.country == 'Belarus'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Belarus.States);
        });
      }else if(Variables.country == 'Belgium'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Belgium.States);
        });
      }else if(Variables.country == 'Belize'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Belize.States);
        });
      }else if(Variables.country == 'Benin'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Benin.States);
        });
      }else if(Variables.country == 'Bermuda'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Bermuda.States);
        });
      }else if(Variables.country == 'Bhutan'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Bhutan.States);
        });
      }else if(Variables.country == 'Bolivia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Bolivia.States);
        });
      }else if(Variables.country == 'Bosnia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Bosnia.States);
        });
      }else if(Variables.country == 'Botswana'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Botswana.States);
        });
      }else if(Variables.country == 'Brunei'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Brunei.States);
        });
      }else if(Variables.country == 'Bulgaria'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Bulgaria.States);
        });
      }else if(Variables.country == 'Burkina Faso'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(BurkinaFaso.States);
        });
      }else if(Variables.country == 'Burundi'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Burundi.States);
        });
      }else if(Variables.country == 'Brazil'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Brazil.States);
        });
      }else if(Variables.country == 'Cambodia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Cambodia.States);
        });
      }else if(Variables.country == 'Cameroon'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Cameroon.States);
        });
      }else if(Variables.country == 'Cape Verde'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(CapeVerde.States);
        });
      }else if(Variables.country == 'Canada'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Canada.States);
        });
      }else if(Variables.country == 'Cayman Islands'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(CaymanIslands.States);
        });
      }else if(Variables.country == 'Central African Republic'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(CentralAfrica.States);
        });
      }else if(Variables.country == 'Chad'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Chad.States);
        });
      }else if(Variables.country == 'Chile'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Chile.States);
        });
      }else if(Variables.country == 'China'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Chad.States);
        });
      }else if(Variables.country == 'China'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(China.States);
        });
      }else if(Variables.country == 'Colombia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Colombia.States);
        });
      }else if(Variables.country == 'Comoros'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Comoros.States);
        });
      }else if(Variables.country == 'Congo'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Congo.States);
        });
      }else if(Variables.country == 'Costa Rica'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(CostaRica.States);
        });
      }else if(Variables.country == "Cote d'Ivoire"){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Cote.States);
        });
      }else if(Variables.country == 'Croatia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Croatia.States);
        });
      }else if(Variables.country == 'Cuba'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Cuba.States);
        });
      }else if(Variables.country == 'Cyprus'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Cyprus.States);
        });
      }else if(Variables.country == 'Czech Republic'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(CzechRepublic.States);
        });
      }else if(Variables.country == 'Denmark'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Denmark.States);
        });
      }else if(Variables.country == 'Djibouti'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Djibouti.States);
        });
      }else if(Variables.country == 'Dominica'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Dominica.States);
        });
      }else if(Variables.country == 'Dominican Republic'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(DominicanRepublic.States);
        });
      }else if(Variables.country == 'Ecuador'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Ecuador.States);
        });
      }else if(Variables.country == 'Egypt'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Egypt.States);
        });
      }else if(Variables.country == 'El Salvador'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(ElSalvador.States);
        });
      }else if(Variables.country == 'Equatorial Guinea'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(EquatorialGuinea.States);
        });
      }else if(Variables.country == 'Eritrea'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Eritrea.States);
        });
      }else if(Variables.country == 'Estonia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Estonia.States);
        });
      }else if(Variables.country == 'Ethiopia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Ethiopia.States);
        });
      }else if(Variables.country == 'Faroe Islands'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Faroe.States);
        });
      }else if(Variables.country == 'France'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(France.States);
        });
      }else if(Variables.country == 'French Guiana'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(FrenchGuiana.States);
        });
      }else if(Variables.country == 'French Polynesia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(FrenchPolynesia.States);
        });
      }else if(Variables.country == 'French Southern'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(FrenchSouthern.States);
        });
      }else if(Variables.country == 'Gabon'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Gabon.States);
        });
      }else if(Variables.country == 'Gambia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Gambia.States);
        });
      }else if(Variables.country == 'Germany'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Germany.States);
        });
      }else if(Variables.country == 'Ghana'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Ghana.States);
        });
      }else if(Variables.country == 'Gibraltar'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Gibraltar.States);
        });
      }else if(Variables.country == 'Greece'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Greece.States);
        });
      }else if(Variables.country == 'Greenland'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(GreenLand.States);
        });
      }else if(Variables.country == 'Fiji'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Fiji.States);
        });
      }else if(Variables.country == 'Finland'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Finland.States);
        });
      }else if(Variables.country == 'India'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(India.States);
        });
      }else if(Variables.country == 'Grenada'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Grenada.States);
        });
      }else if(Variables.country == 'Guadeloupe'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Guadeloupe.States);
        });
      }else if(Variables.country == 'Guam'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Guam.States);
        });
      }else if(Variables.country == 'Guatemala'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Guatemala.States);
        });
      }else if(Variables.country == 'Guernsey'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Guernsey.States);
        });
      }else if(Variables.country == 'Guinea'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Guinea.States);
        });
      }else if(Variables.country == 'Guinea-Bissau'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(GuineaBissau.States);
        });
      }else if(Variables.country == 'Hong Kong'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Hong.States);
        });
      }else if(Variables.country == 'Hungary'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Hungary.States);
        });
      }else if(Variables.country == 'Guyana'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Guyana.States);
        });
      }else if(Variables.country == 'Haiti'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Haiti.States);
        });
      }else if(Variables.country == 'Herzegovina'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Herzegovina.States);
        });
      }else if(Variables.country == 'Iceland'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Iceland.States);
        });
      }else if(Variables.country == 'Indonesia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Indonesia.States);
        });
      }else if(Variables.country == 'Iran'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Iran.States);
        });
      }else if(Variables.country == 'Iraq'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Iraq.States);
        });
      }else if(Variables.country == 'Ireland'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Ireland.States);
        });
      }else if(Variables.country == 'Isle'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Isle.States);
        });
      }else if(Variables.country == 'Israel'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Israel.States);
        });
      }else if(Variables.country == 'Italy'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Italy.States);
        });
      }else if(Variables.country == 'Jamaica'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Jamaica.States);
        });
      }else if(Variables.country == 'Japan'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Japan.States);
        });
      }else if(Variables.country == 'Jordan'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Jordan.States);
        });
      }else if(Variables.country == 'Kazakhstan'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Eritrea.States);
        });
      }else if(Variables.country == 'Kazakhstan'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Eritrea.States);
        });
      }else if(Variables.country == 'Kenya'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Kenya.States);
        });
      }else if(Variables.country == 'South Korea'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(southKorea.States);
        });
      }else if(Variables.country == 'North Korea'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(northKorea.States);
        });
      }else if(Variables.country == 'Kuwait'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Kuwait.States);
        });
      }else if(Variables.country == 'Kyrgyzstan'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Kyrgyzstan.States);
        });
      }else if(Variables.country == 'Mexico'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Mexico.States);
        });
      }else if(Variables.country == 'Laos'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Laos.States);
        });
      }else if(Variables.country == 'Latvia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Latvia.States);
        });
      }else if(Variables.country == 'Lebanon'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Lebanon.States);
        });
      }else if(Variables.country == 'Lesotho'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Lesotho.States);
        });
      }else if(Variables.country == 'Liberia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Liberia.States);
        });
      }else if(Variables.country == 'Liechtenstein'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Liechtenstein.States);
        });
      }else if(Variables.country == 'Lithuania'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Lithuania.States);
        });
      }else if(Variables.country == 'Luxembourg'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Luxembourg.States);
        });
      }else if(Variables.country == 'Macao'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Macao.States);
        });
      }else if(Variables.country == 'Macedonia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Macedonia.States);
        });
      }else if(Variables.country == 'Madagascar'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Madagascar.States);
        });
      }else if(Variables.country == 'Malawi'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Malawi.States);
        });
      }else if(Variables.country == 'Malaysia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Malaysia.States);
        });
      }else if(Variables.country == 'Maldives'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Maldives.States);
        });
      }else if(Variables.country == 'Mali'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Mali.States);
        });
      }else if(Variables.country == 'Malta'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Malta.States);
        });
      }else if(Variables.country == 'Martinique'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Martinique.States);
        });
      }else if(Variables.country == 'Mauritania'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Mauritania.States);
        });
      }else if(Variables.country == 'Mauritius'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Mauritius.States);
        });
      }else if(Variables.country == 'Mayotte'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Mayotte.States);
        });
      }else if(Variables.country == 'Micronesia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Micronesia.States);
        });
      }else if(Variables.country == 'Miquelon'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Miquelon.States);
        });
      }else if(Variables.country == 'Miquelon'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Miquelon.States);
        });
      }else if(Variables.country == 'Moldova'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Moldova.States);
        });
      }else if(Variables.country == 'Monaco'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Monaco.States);
        });
      }else if(Variables.country == 'Mongolia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Mongolia.States);
        });
      }else if(Variables.country == 'Montenegro'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Montenegro.States);
        });
      }else if(Variables.country == 'Montserrat'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Montserrat.States);
        });
      }else if(Variables.country == 'Morocco'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Morocco.States);
        });
      }else if(Variables.country == 'Mozambique'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Mozambique.States);
        });
      }else if(Variables.country == 'Namibia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Namibia.States);
        });
      }else if(Variables.country == 'Nauru'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Nauru.States);
        });
      }else if(Variables.country == 'Nepal'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Nepal.States);
        });
      }else if(Variables.country == 'Netherlands'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Netherlands.States);
        });
      }else if(Variables.country == 'Netherlands Antilles'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(NetherlandsAntilles.States);
        });
      }else if(Variables.country == 'Nevis'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Nevis.States);
        });
      }else if(Variables.country == 'New Caledonia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(NewCaledonia.States);
        });
      }else if(Variables.country == 'New Zealand'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Zealand.States);
        });
      }else if(Variables.country == 'Nicaragua'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Nicaragua.States);
        });
      }else if(Variables.country == 'Nigeria'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Nigeria.NigeriaStates);
        });
      }else if(Variables.country == 'Northern Mariana Islands'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(NorthernMariana.States);
        });
      }else if(Variables.country == 'Norway'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Norway.States);
        });
      }else if(Variables.country == 'Oman'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Oman.States);
        });
      }else if(Variables.country == 'Pakistan'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Pakistan.States);
        });
      }else if(Variables.country == 'Palau'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Palau.States);
        });
      }else if(Variables.country == 'Palestinian'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Palestinian.States);
        });
      }else if(Variables.country == 'Panama'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Panama.States);
        });
      }else if(Variables.country == 'Papua New Guinea'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Papua.States);
        });
      }else if(Variables.country == 'Paraguay'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Paraguay.States);
        });
      }else if(Variables.country == 'Peru'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Peru.States);
        });
      }else if(Variables.country == 'Philippines'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Philippines.States);
        });
      }else if(Variables.country == 'Pitcairn'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Pitcairn.States);
        });
      }else if(Variables.country == 'Poland'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Poland.States);
        });
      }else if(Variables.country == 'Portugal'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Portugal.States);
        });
      }else if(Variables.country == 'Principe'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Principe.States);
        });
      }else if(Variables.country == 'Puerto Rico'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Rico.States);
        });
      }else if(Variables.country == 'Qatar'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Qatar.States);
        });
      }else if(Variables.country == 'Romania'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Romania.States);
        });
      }else if(Variables.country == 'Russia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Russia.States);
        });
      }else if(Variables.country == 'Rwanda'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Rwanda.States);
        });
      }else if(Variables.country == 'Saint Helena'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Helena.States);
        });
      }else if(Variables.country == 'Saint Kitts'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Kitts.States);
        });
      }else if(Variables.country == 'Saint Lucia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Lucia.States);
        });
      }else if(Variables.country == 'Saint Pierre'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Pierre.States);
        });
      }else if(Variables.country == 'Turkey'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Turkey.States);
        });
      }else if(Variables.country == 'Samoa'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Samoa.States);
        });
      }else if(Variables.country == 'San Marino'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(SanMarino.States);
        });
      }else if(Variables.country == 'Sao Tome'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Sao.States);
        });
      }else if(Variables.country == 'Saudi Arabia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Saudi.States);
        });
      }else if(Variables.country == 'Senegal'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Senegal.States);
        });
      }else if(Variables.country == 'Serbia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Serbia.States);
        });
      }else if(Variables.country == 'Seychelles'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Seychelles.States);
        });
      }else if(Variables.country == 'Sierra Leone'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Sieere.States);
        });
      }else if(Variables.country == 'Singapore'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Singapore.States);
        });
      }else if(Variables.country == 'Slovakia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Slovakia.States);
        });
      }else if(Variables.country == 'South Africa'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(SouthAfrica.States);
        });
      }else if(Variables.country == 'Slovenia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Slovenia.States);
        });
      }else if(Variables.country == 'Solomon Islands'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(SolomonIslands.States);
        });
      }else if(Variables.country == 'Somalia'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Somalia.States);
        });
      }else if(Variables.country == 'Spain'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Spain.States);
        });
      }else if(Variables.country == 'Sri Lanka'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(SriLanka.States);
        });
      }else if(Variables.country == 'Suriname'){
        setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Suriname.States);
        });
      }else if(Variables.country == 'Swaziland'){
        setState(() {
          StateDialogs.stateItems.clear();
          StateDialogs.stateItems.addAll(Swaziland.States);
        });
    }else if(Variables.country == 'Sweden'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Sweden.States);
    });
    }else if(Variables.country == 'Switzerland'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Switzerland.States);
    });
    }else if(Variables.country == 'Syria'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Syria.States);
    });
    }else if(Variables.country == 'USA'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(USA.States);
    });
    }else if(Variables.country == 'Taiwan'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tawian.States);
    });
    }else if(Variables.country == 'Tobago'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tobago.States);
    });
    }else if(Variables.country == 'Togo'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Togo.States);
    });
    }else if(Variables.country == 'Saint Vincent'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Vincent.States);
    });
    }else if(Variables.country == 'Tajikistan'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tajikistan.States);
    });
    }else if(Variables.country == 'Tanzania'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tanzania.States);
    });
    }else if(Variables.country == 'Tokelau'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tokelau.States);
    });
    }else if(Variables.country == 'Tonga'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tonga.States);
    });
    }else if(Variables.country == 'Trinidad'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Trinidad.States);
    });
    }else if(Variables.country == 'Thailand'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Thailand.States);
    });
    }else if(Variables.country == 'Tunisia'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tunisia.States);
    });
    }else if(Variables.country == 'Turkey'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Turkey.States);
    });
    }else if(Variables.country == 'Turkmenistan'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tanzania.States);
    });
    }else if(Variables.country == 'Turks Islands'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Turks.States);
    });
    }else if(Variables.country == 'Tuvalu'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tanzania.States);
    });
    }else if(Variables.country == 'Uganda'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Uganda.States);
    });
    }else if(Variables.country == 'Ukraine'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Ukraine.States);
    });
    }else if(Variables.country == 'United Kingdom'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Uk.States);
    });
    }else if(Variables.country == 'United States of America'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(US.States);
    });
    }else if(Variables.country == 'Uzbekistan'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Uzbekistan.States);
    });
    }else if(Variables.country == 'Vanuatu'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Vanuatu.States);
    });
    }else if(Variables.country == 'Venezuela'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Venezuela.States);
    });
    }else if(Variables.country == 'Vietnam'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Vietnam.States);
    });
    }else if(Variables.country == 'Wallis'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Wallis.States);
    });
    }else if(Variables.country == 'Yemen'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Yemen.States);
    });
    }else if(Variables.country == 'Zambia'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Zambia.States);
    });
    }else if(Variables.country == 'Zimbabwe'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Zimbabwe.States);
    });
    }

    return Container(
      child: Column(
        children: <Widget>[
    Padding(
    padding: const EdgeInsets.all(18.0),
    child: Text("states in ${Variables.country}".toUpperCase(),style: widget.stateHeaderStyle),
    ),
    Divider(),
      Expanded(
        child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount:StateDialogs.stateItems.length,
        itemBuilder: (context, index) {
          var users = StateDialogs.stateItems[index];
          return  Container(
               width: double.maxFinite,
                    color: selectedState.contains(index)?widget.selectedStateBackgroundColor:widget.notSelectedStateBackgroundColor,

                        child: ListTile(
                          leading: CircleAvatar(
                            foregroundColor: Colors.white,
                            backgroundColor:  widget.substringBackground,
                            child: Text(users.substring(0,1).toUpperCase(),
                            style: widget.subStringStyle),
                          ),
                          title: Text(StateDialogs.stateItems[index],
                            style: widget.style),
                          onTap: (){
                            setState(() {
                              _userSelectedCountryState(context, StateDialogs.stateItems[index], index);
                            });
                          }
                      ),
                    ) ;
        }
        ),
      ),
        ],
      ),
    );
  }
  _userSelectedCountryState(BuildContext context, String data,int index) {
    setState((){
      Variables.state = data;
      selectedState.clear();
      selectedState.add(index);
    });
    Navigator.pop(context);
    widget.onSelectedState();


  }



}
