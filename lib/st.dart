import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_country_state/flutter_country_state.dart';

class showCountry extends StatelessWidget {
  const showCountry({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('country'),
        onPressed: () {
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
                                      Text('select your country'),
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
                                        Container(child:ShowMyDialog())

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


        }
    );
  }
}