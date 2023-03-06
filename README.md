# flutter_country_state

A customizable Flutter package that displays all countries with there respective states.




## Example

 Please run the app in the [Example](https://github.com/mimi-tech/flutter_country_state/tree/master/example) folder

## Installation
* add the dependency to your [pubspec.yaml](https://github.com/mimi-tech/flutter_country_state/tree/master/pubspec.yaml) file.
```
dependencies:
  flutter:
    sdk: flutter
  flutter_country_state:
  ```
<table>
<tr>
<td>
<img src="https://user-images.githubusercontent.com/62711340/223138303-89a8eafa-0304-474b-9091-af7512dc6c5c.png">

</td>

<td>
<img src="https://user-images.githubusercontent.com/62711340/223125871-737e089d-c77d-4232-bb38-84de24183a84.png">
</td>
</tr>
</table>





 ### You can also change the style of the text of list of the country and states
<p>-searchHint</p>
<p>-substringBackground</p>
<p>-subStringStyle</p>
<p>-style</p>
<p>-searchStyle</p>
<p>selectedCountryBackgroundColor</p>
<p>notSelectedCountryBackgroundColor</p>
<p>selectedStateBackgroundColor</p>
<p>notSelectedStateBackgroundColor</p>
<p>onSelectCountry</p>
<p>onSelectedState</p>



<hr>
 
 ## Use It
 ### This will display the list of countries in the world
  ``` dart
 showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    isDismissible: false,
    builder: (context) =>  SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ShowMyDialog(
        searchHint: 'Search for a country',
        substringBackground: Colors.black,
        style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
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
```
### This will display the states of the country selected
 ``` dart
showModalBottomSheet(
  isScrollControlled: true,
  context: context,
  isDismissible: false,
  builder: (context) => SizedBox(
    height: MediaQuery.of(context).size.height * 0.7,
    child: StateDialog(
      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
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
```

## Next goal
- [ x ] Add countries flag 
- [ x ] Add countries code

