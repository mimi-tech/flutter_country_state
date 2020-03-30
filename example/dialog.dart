import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'arraylist.dart';
import 'main.dart';
import 'states.dart';
import 'variables.dart';

class StateDialog extends StatefulWidget {
  @override
  _StateDialogState createState() => _StateDialogState();
}
class _StateDialogState extends State<StateDialog> {

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('state'),
            onPressed: (){
             showC();
            }
          )

        ],
      ),
    );
  }
  _userselectedCountryState(BuildContext context, String data) {
    Navigator.pop(context);
    setState((){
      Variables.pstate = data;
      Navigator.of(context).pushReplacement
        (MaterialPageRoute(builder: (context) => MyApp()));
    });


    }

  void showC() {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
              scale: a1.value,
              child: Opacity(
                  opacity: a1.value,
                  child: Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),

                      elevation: 4,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('select state'),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.cancel,
                                      size: 42,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Expanded(
                              child: SingleChildScrollView(
                                child:
                                ListView.builder(
                                    shrinkWrap: true,
                                    physics: BouncingScrollPhysics(),
                                    itemCount:StateDialogs.stateItems.length,
                                    itemBuilder: (context, index) {
                                      var users = StateDialogs.stateItems[index];
                                      return  ListTile(
                                        leading: CircleAvatar(
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.blue,
                                          child: Text(users.substring(0,1).toUpperCase()),
                                        ),
                                        title: Text(StateDialogs.stateItems[index],),


                                        onTap: () => _userselectedCountryState(context, StateDialogs.stateItems[index]),
                                      ) ;
                                    }
                                ),
                              ),
                            ),
                          ]
                      )
                  )
              )
          );
        },
        transitionDuration: Duration(milliseconds: 200),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
// ignore: missing_return
        pageBuilder: (context, animation1, animation2) {}
    );

    if (Variables.property_country == 'Afghanistan') {
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Afghanistan.States);
      });
    }else if(Variables.property_country == 'Albania'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Albania.States);
      });
    }else if(Variables.property_country == 'Algeria'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Algeria.States);
      });
    }else if(Variables.property_country == 'Andorra'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Andorra.States);
      });
    }else if(Variables.property_country == 'Angola'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Angola.States);
      });
    }else if(Variables.property_country == 'Anguilla'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Anguilla.States);
      });
    }else if(Variables.property_country == 'Antarctica'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Antarctica.States);
      });
    }else if(Variables.property_country == 'Antigua'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Antigua.States);
      });
    }else if(Variables.property_country == 'Argentina'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Argentina.States);
      });
    }else if(Variables.property_country == 'Armenia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Armenia.States);
      });
    }else if(Variables.property_country == 'Arab'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Arab.States);
      });
    }else if(Variables.property_country == 'Australia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Australia.States);
      });
    }else if(Variables.property_country == 'Austria'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Austria.States);
      });
    }else if(Variables.property_country == 'Azerbaijan'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Azerbaijan.States);
      });
    }else if(Variables.property_country == 'Bahamas'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Bahamas.States);
      });
    }else if(Variables.property_country == 'Bahrain'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Bahrain.States);
      });
    }else if(Variables.property_country == 'Bangladesh'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Bangladesh.States);
      });
    }else if(Variables.property_country == 'Barbados'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Barbados.States);
      });
    }else if(Variables.property_country == 'Belarus'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Belarus.States);
      });
    }else if(Variables.property_country == 'Belgium'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Belgium.States);
      });
    }else if(Variables.property_country == 'Belize'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Belize.States);
      });
    }else if(Variables.property_country == 'Benin'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Benin.States);
      });
    }else if(Variables.property_country == 'Bermuda'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Bermuda.States);
      });
    }else if(Variables.property_country == 'Bhutan'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Bhutan.States);
      });
    }else if(Variables.property_country == 'Bolivia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Bolivia.States);
      });
    }else if(Variables.property_country == 'Bosnia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Bosnia.States);
      });
    }else if(Variables.property_country == 'Botswana'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Botswana.States);
      });
    }else if(Variables.property_country == 'Brunei'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Brunei.States);
      });
    }else if(Variables.property_country == 'Bulgaria'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Bulgaria.States);
      });
    }else if(Variables.property_country == 'Burkina Faso'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(BurkinaFaso.States);
      });
    }else if(Variables.property_country == 'Burundi'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Burundi.States);
      });
    }else if(Variables.property_country == 'Brazil'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Brazil.States);
      });
    }else if(Variables.property_country == 'Cambodia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Cambodia.States);
      });
    }else if(Variables.property_country == 'Cameroon'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Cameroon.States);
      });
    }else if(Variables.property_country == 'Cape Verde'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(CapeVerde.States);
      });
    }else if(Variables.property_country == 'Canada'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Canada.States);
      });
    }else if(Variables.property_country == 'Cayman Islands'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(CaymanIslands.States);
      });
    }else if(Variables.property_country == 'Central African Republic'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(CentralAfrica.States);
      });
    }else if(Variables.property_country == 'Chad'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Chad.States);
      });
    }else if(Variables.property_country == 'Chile'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Chile.States);
      });
    }else if(Variables.property_country == 'China'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Chad.States);
      });
    }else if(Variables.property_country == 'China'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(China.States);
      });
    }else if(Variables.property_country == 'Colombia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Colombia.States);
      });
    }else if(Variables.property_country == 'Comoros'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Comoros.States);
      });
    }else if(Variables.property_country == 'Congo'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Congo.States);
      });
    }else if(Variables.property_country == 'Costa Rica'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(CostaRica.States);
      });
    }else if(Variables.property_country == "Cote d'Ivoire"){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Cote.States);
      });
    }else if(Variables.property_country == 'Croatia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Croatia.States);
      });
    }else if(Variables.property_country == 'Cuba'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Cuba.States);
      });
    }else if(Variables.property_country == 'Cyprus'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Cyprus.States);
      });
    }else if(Variables.property_country == 'Czech Republic'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(CzechRepublic.States);
      });
    }else if(Variables.property_country == 'Denmark'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Denmark.States);
      });
    }else if(Variables.property_country == 'Djibouti'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Djibouti.States);
      });
    }else if(Variables.property_country == 'Dominica'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Dominica.States);
      });
    }else if(Variables.property_country == 'Dominican Republic'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(DominicanRepublic.States);
      });
    }else if(Variables.property_country == 'Ecuador'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Ecuador.States);
      });
    }else if(Variables.property_country == 'Egypt'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Egypt.States);
      });
    }else if(Variables.property_country == 'El Salvador'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(ElSalvador.States);
      });
    }else if(Variables.property_country == 'Equatorial Guinea'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(EquatorialGuinea.States);
      });
    }else if(Variables.property_country == 'Eritrea'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Eritrea.States);
      });
    }else if(Variables.property_country == 'Estonia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Estonia.States);
      });
    }else if(Variables.property_country == 'Ethiopia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Ethiopia.States);
      });
    }else if(Variables.property_country == 'Faroe Islands'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Faroe.States);
      });
    }else if(Variables.property_country == 'France'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(France.States);
      });
    }else if(Variables.property_country == 'French Guiana'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(FrenchGuiana.States);
      });
    }else if(Variables.property_country == 'French Polynesia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(FrenchPolynesia.States);
      });
    }else if(Variables.property_country == 'French Southern'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(FrenchSouthern.States);
      });
    }else if(Variables.property_country == 'Gabon'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Gabon.States);
      });
    }else if(Variables.property_country == 'Gambia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Gambia.States);
      });
    }else if(Variables.property_country == 'Germany'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Germany.States);
      });
    }else if(Variables.property_country == 'Ghana'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Ghana.States);
      });
    }else if(Variables.property_country == 'Gibraltar'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Gibraltar.States);
      });
    }else if(Variables.property_country == 'Greece'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Greece.States);
      });
    }else if(Variables.property_country == 'Greenland'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(GreenLand.States);
      });
    }else if(Variables.property_country == 'Fiji'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Fiji.States);
      });
    }else if(Variables.property_country == 'Finland'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Finland.States);
      });
    }else if(Variables.property_country == 'India'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(India.States);
      });
    }else if(Variables.property_country == 'Grenada'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Grenada.States);
      });
    }else if(Variables.property_country == 'Guadeloupe'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Guadeloupe.States);
      });
    }else if(Variables.property_country == 'Guam'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Guam.States);
      });
    }else if(Variables.property_country == 'Guatemala'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Guatemala.States);
      });
    }else if(Variables.property_country == 'Guernsey'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Guernsey.States);
      });
    }else if(Variables.property_country == 'Guinea'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Guinea.States);
      });
    }else if(Variables.property_country == 'Guinea-Bissau'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(GuineaBissau.States);
      });
    }else if(Variables.property_country == 'Hong Kong'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Hong.States);
      });
    }else if(Variables.property_country == 'Hungary'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Hungary.States);
      });
    }else if(Variables.property_country == 'Guyana'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Guyana.States);
      });
    }else if(Variables.property_country == 'Haiti'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Haiti.States);
      });
    }else if(Variables.property_country == 'Herzegovina'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Herzegovina.States);
      });
    }else if(Variables.property_country == 'Iceland'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Iceland.States);
      });
    }else if(Variables.property_country == 'Indonesia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Indonesia.States);
      });
    }else if(Variables.property_country == 'Iran'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Iran.States);
      });
    }else if(Variables.property_country == 'Iraq'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Iraq.States);
      });
    }else if(Variables.property_country == 'Ireland'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Ireland.States);
      });
    }else if(Variables.property_country == 'Isle'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Isle.States);
      });
    }else if(Variables.property_country == 'Israel'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Israel.States);
      });
    }else if(Variables.property_country == 'Italy'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Italy.States);
      });
    }else if(Variables.property_country == 'Jamaica'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Jamaica.States);
      });
    }else if(Variables.property_country == 'Japan'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Japan.States);
      });
    }else if(Variables.property_country == 'Jordan'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Jordan.States);
      });
    }else if(Variables.property_country == 'Kazakhstan'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Eritrea.States);
      });
    }else if(Variables.property_country == 'Kazakhstan'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Eritrea.States);
      });
    }else if(Variables.property_country == 'Kenya'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Kenya.States);
      });
    }else if(Variables.property_country == 'South Korea'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(southKorea.States);
      });
    }else if(Variables.property_country == 'North Korea'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(northKorea.States);
      });
    }else if(Variables.property_country == 'Kuwait'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Kuwait.States);
      });
    }else if(Variables.property_country == 'Kyrgyzstan'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Kyrgyzstan.States);
      });
    }else if(Variables.property_country == 'Mexico'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Mexico.States);
      });
    }else if(Variables.property_country == 'Laos'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Laos.States);
      });
    }else if(Variables.property_country == 'Latvia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Latvia.States);
      });
    }else if(Variables.property_country == 'Lebanon'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Lebanon.States);
      });
    }else if(Variables.property_country == 'Lesotho'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Lesotho.States);
      });
    }else if(Variables.property_country == 'Liberia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Liberia.States);
      });
    }else if(Variables.property_country == 'Liechtenstein'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Liechtenstein.States);
      });
    }else if(Variables.property_country == 'Lithuania'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Lithuania.States);
      });
    }else if(Variables.property_country == 'Luxembourg'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Luxembourg.States);
      });
    }else if(Variables.property_country == 'Macao'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Macao.States);
      });
    }else if(Variables.property_country == 'Macedonia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Macedonia.States);
      });
    }else if(Variables.property_country == 'Madagascar'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Madagascar.States);
      });
    }else if(Variables.property_country == 'Malawi'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Malawi.States);
      });
    }else if(Variables.property_country == 'Malaysia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Malaysia.States);
      });
    }else if(Variables.property_country == 'Maldives'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Maldives.States);
      });
    }else if(Variables.property_country == 'Mali'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Mali.States);
      });
    }else if(Variables.property_country == 'Malta'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Malta.States);
      });
    }else if(Variables.property_country == 'Martinique'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Martinique.States);
      });
    }else if(Variables.property_country == 'Mauritania'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Mauritania.States);
      });
    }else if(Variables.property_country == 'Mauritius'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Mauritius.States);
      });
    }else if(Variables.property_country == 'Mayotte'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Mayotte.States);
      });
    }else if(Variables.property_country == 'Micronesia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Micronesia.States);
      });
    }else if(Variables.property_country == 'Miquelon'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Miquelon.States);
      });
    }else if(Variables.property_country == 'Miquelon'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Miquelon.States);
      });
    }else if(Variables.property_country == 'Moldova'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Moldova.States);
      });
    }else if(Variables.property_country == 'Monaco'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Monaco.States);
      });
    }else if(Variables.property_country == 'Mongolia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Mongolia.States);
      });
    }else if(Variables.property_country == 'Montenegro'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Montenegro.States);
      });
    }else if(Variables.property_country == 'Montserrat'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Montserrat.States);
      });
    }else if(Variables.property_country == 'Morocco'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Morocco.States);
      });
    }else if(Variables.property_country == 'Mozambique'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Mozambique.States);
      });
    }else if(Variables.property_country == 'Namibia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Namibia.States);
      });
    }else if(Variables.property_country == 'Nauru'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Nauru.States);
      });
    }else if(Variables.property_country == 'Nepal'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Nepal.States);
      });
    }else if(Variables.property_country == 'Netherlands'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Netherlands.States);
      });
    }else if(Variables.property_country == 'Netherlands Antilles'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(NetherlandsAntilles.States);
      });
    }else if(Variables.property_country == 'Nevis'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Nevis.States);
      });
    }else if(Variables.property_country == 'New Caledonia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(NewCaledonia.States);
      });
    }else if(Variables.property_country == 'New Zealand'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Zealand.States);
      });
    }else if(Variables.property_country == 'Nicaragua'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Nicaragua.States);
      });
    }else if(Variables.property_country == 'Nigeria'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Nigeria.NigeriaStates);
      });
    }else if(Variables.property_country == 'Northern Mariana Islands'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(NorthernMariana.States);
      });
    }else if(Variables.property_country == 'Norway'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Norway.States);
      });
    }else if(Variables.property_country == 'Oman'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Oman.States);
      });
    }else if(Variables.property_country == 'Pakistan'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Pakistan.States);
      });
    }else if(Variables.property_country == 'Palau'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Palau.States);
      });
    }else if(Variables.property_country == 'Palestinian'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Palestinian.States);
      });
    }else if(Variables.property_country == 'Panama'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Panama.States);
      });
    }else if(Variables.property_country == 'Papua New Guinea'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Papua.States);
      });
    }else if(Variables.property_country == 'Paraguay'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Paraguay.States);
      });
    }else if(Variables.property_country == 'Peru'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Peru.States);
      });
    }else if(Variables.property_country == 'Philippines'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Philippines.States);
      });
    }else if(Variables.property_country == 'Pitcairn'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Pitcairn.States);
      });
    }else if(Variables.property_country == 'Poland'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Poland.States);
      });
    }else if(Variables.property_country == 'Portugal'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Portugal.States);
      });
    }else if(Variables.property_country == 'Principe'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Principe.States);
      });
    }else if(Variables.property_country == 'Puerto Rico'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Rico.States);
      });
    }else if(Variables.property_country == 'Qatar'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Qatar.States);
      });
    }else if(Variables.property_country == 'Romania'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Romania.States);
      });
    }else if(Variables.property_country == 'Russia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Russia.States);
      });
    }else if(Variables.property_country == 'Rwanda'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Rwanda.States);
      });
    }else if(Variables.property_country == 'Saint Helena'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Helena.States);
      });
    }else if(Variables.property_country == 'Saint Kitts'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Kitts.States);
      });
    }else if(Variables.property_country == 'Saint Lucia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Lucia.States);
      });
    }else if(Variables.property_country == 'Saint Pierre'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Pierre.States);
      });
    }else if(Variables.property_country == 'Turkey'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Turkey.States);
      });
    }else if(Variables.property_country == 'Samoa'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Samoa.States);
      });
    }else if(Variables.property_country == 'San Marino'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(SanMarino.States);
      });
    }else if(Variables.property_country == 'Sao Tome'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Sao.States);
      });
    }else if(Variables.property_country == 'Saudi Arabia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Saudi.States);
      });
    }else if(Variables.property_country == 'Senegal'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Senegal.States);
      });
    }else if(Variables.property_country == 'Serbia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Serbia.States);
      });
    }else if(Variables.property_country == 'Seychelles'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Seychelles.States);
      });
    }else if(Variables.property_country == 'Sierra Leone'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Sieere.States);
      });
    }else if(Variables.property_country == 'Singapore'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Singapore.States);
      });
    }else if(Variables.property_country == 'Slovakia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Slovakia.States);
      });
    }else if(Variables.property_country == 'South Africa'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(SouthAfrica.States);
      });
    }else if(Variables.property_country == 'Slovenia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Slovenia.States);
      });
    }else if(Variables.property_country == 'Solomon Islands'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(SolomonIslands.States);
      });
    }else if(Variables.property_country == 'Somalia'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Somalia.States);
      });
    }else if(Variables.property_country == 'Spain'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Spain.States);
      });
    }else if(Variables.property_country == 'Sri Lanka'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(SriLanka.States);
      });
    }else if(Variables.property_country == 'Suriname'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Suriname.States);
      });
    }else if(Variables.property_country == 'Swaziland'){
      setState(() {
        StateDialogs.stateItems.clear();
        StateDialogs.stateItems.addAll(Swaziland.States);
      });
    }else if(Variables.property_country == 'Sweden'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Sweden.States);
    });
    }else if(Variables.property_country == 'Switzerland'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Switzerland.States);
    });
    }else if(Variables.property_country == 'Syria'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Syria.States);
    });
    }else if(Variables.property_country == 'USA'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(USA.States);
    });
    }else if(Variables.property_country == 'Taiwan'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tawian.States);
    });
    }else if(Variables.property_country == 'Tobago'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tobago.States);
    });
    }else if(Variables.property_country == 'Togo'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Togo.States);
    });
    }else if(Variables.property_country == 'Saint Vincent'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Vincent.States);
    });
    }else if(Variables.property_country == 'Tajikistan'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tajikistan.States);
    });
    }else if(Variables.property_country == 'Tanzania'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tanzania.States);
    });
    }else if(Variables.property_country == 'Tokelau'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tokelau.States);
    });
    }else if(Variables.property_country == 'Tonga'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tonga.States);
    });
    }else if(Variables.property_country == 'Trinidad'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Trinidad.States);
    });
    }else if(Variables.property_country == 'Thailand'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Thailand.States);
    });
    }else if(Variables.property_country == 'Tunisia'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tunisia.States);
    });
    }else if(Variables.property_country == 'Turkey'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Turkey.States);
    });
    }else if(Variables.property_country == 'Turkmenistan'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tanzania.States);
    });
    }else if(Variables.property_country == 'Turks Islands'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Turks.States);
    });
    }else if(Variables.property_country == 'Tuvalu'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Tanzania.States);
    });
    }else if(Variables.property_country == 'Uganda'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Uganda.States);
    });
    }else if(Variables.property_country == 'Ukraine'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Ukraine.States);
    });
    }else if(Variables.property_country == 'United Kingdom'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Uk.States);
    });
    }else if(Variables.property_country == 'Uzbekistan'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Uzbekistan.States);
    });
    }else if(Variables.property_country == 'Vanuatu'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Vanuatu.States);
    });
    }else if(Variables.property_country == 'Venezuela'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Venezuela.States);
    });
    }else if(Variables.property_country == 'Vietnam'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Vietnam.States);
    });
    }else if(Variables.property_country == 'Wallis'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Wallis.States);
    });
    }else if(Variables.property_country == 'Yemen'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Yemen.States);
    });
    }else if(Variables.property_country == 'Zambia'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Zambia.States);
    });
    }else if(Variables.property_country == 'Zimbabwe'){
    setState(() {
    StateDialogs.stateItems.clear();
    StateDialogs.stateItems.addAll(Zimbabwe.States);
    });
    }


  }

  }






