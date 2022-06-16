import 'package:flutter/material.dart';
import 'package:flutter_country_state/flutter_country_state.dart';

class StateBottomSheet{

  showSelectedCountryStates({required context, required tap}){


    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(horizontal: 20.0),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size.fromHeight(20.0),
                          ),
                        ),
                        onPressed: ()=>Navigator.pop(context),
                        child: const Text('Cancel',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: tap,
                        child: const Text('Done',
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: StateDialog(
                    selectedStateBackgroundColor: Colors.orange,
                    notSelectedStateBackgroundColor: Colors.white,
                    substringBackground: Colors.green,
                    style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),

                    subStringStyle: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          );
        });


  }
}