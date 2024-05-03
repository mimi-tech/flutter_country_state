import 'package:flutter/material.dart';
import 'package:flutter_country_state/flutter_country_state.dart';
import 'package:flutter_country_state/state-list.dart';

class ShowStateDialog extends StatefulWidget {
  ShowStateDialog({
     this.substringBackground,
     this.subStringStyle,
     this.style,
     this.selectedStateBackgroundColor,
     this.notSelectedStateBackgroundColor,
     required this.onSelectedState,
     this.stateHeaderStyle,
    this.closeIcon,
  });

  final Color? substringBackground;
  final TextStyle? style;
  final TextStyle? subStringStyle;
  final TextStyle? stateHeaderStyle;
  final Color? selectedStateBackgroundColor;
  final Color? notSelectedStateBackgroundColor;
  final VoidCallback onSelectedState;
  final Widget? closeIcon;

  @override
  _ShowStateDialogState createState() => _ShowStateDialogState();
}

class _ShowStateDialogState extends State<ShowStateDialog> {
  List<int> selectedState = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          widget.closeIcon??Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topRight,
            child: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.close,color: Colors.red,),),
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("states in ${Selected.country}".toUpperCase(),
                style: widget.stateHeaderStyle ?? TextStyle(fontSize: 20)),
          ),

          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: StateDialogs.stateItems.length,
                itemBuilder: (context, index) {
                  var users = StateDialogs.stateItems[index];
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    width: double.maxFinite,
                    // color: selectedState.contains(index)
                    //     ? widget.selectedStateBackgroundColor ?? Colors.blue
                    //     : widget.notSelectedStateBackgroundColor ?? Colors.transparent,
                    child: ListTile(
                        leading: CircleAvatar(
                          foregroundColor: Colors.white,
                          backgroundColor: widget.substringBackground ?? Colors.blue,
                          child: Text(users.substring(0, 1).toUpperCase(),
                              style: widget.subStringStyle ?? TextStyle(fontSize: 20)),
                        ),
                        title: Text(StateDialogs.stateItems[index],
                            style: widget.style ?? TextStyle(fontSize: 20)),
                        onTap: () {
                          setState(() {
                            _userSelectedCountryState(
                                context, StateDialogs.stateItems[index], index);
                          });
                        }),
                  );
                }),
          ),
        ],
      ),
    );
  }

  _userSelectedCountryState(BuildContext context, String data, int index) {
    setState(() {
      Selected.state = data;
      selectedState.clear();
      selectedState.add(index);
    });
    Navigator.pop(context);
    widget.onSelectedState();
  }
}

