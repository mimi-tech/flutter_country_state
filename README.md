# flutter_country_state

An intuitive and versatile Flutter package designed to simplify the display of countries, states, and cities within your application. With seamless integration, it offers a comprehensive list of countries worldwide, allowing users to effortlessly navigate through states and cities. Featuring a user-friendly search functionality and extensive customization options, it can be easily integrated into both bottom sheets and full-screen layouts, enhancing the user experience and streamlining development.
<p>This works on both Android, Ios, and Web</p>


<img src="https://github.com/mimi-tech/flutter_country_state/assets/62711340/393e5bca-b921-4a2b-8ab1-bd8ce568a2bd" width="600" height="400">

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
<img src="https://github.com/mimi-tech/flutter_country_state/assets/62711340/33747458-abff-47d6-9bb2-8a2f42a7c2bd" >

</td>

<td>
<img src="https://github.com/mimi-tech/flutter_country_state/assets/62711340/cb2a4851-de71-4f88-87e5-e11c3722e53e">
</td>

<td>
<img src="https://github.com/mimi-tech/flutter_country_state/assets/62711340/312fcea7-984c-425e-9d23-3e421772e363">
</td>
</tr>
</table>


<table>
<tr>
<td>
<img src="https://github.com/mimi-tech/flutter_country_state/assets/62711340/5f1a7a55-91a3-4e80-a968-1bb63dbd5e63">

</td>

<td>
<img src="https://github.com/mimi-tech/flutter_country_state/assets/62711340/df6401ce-0199-4c3a-b3fe-c6fefc9d530a">
</td>

<td>
<img src="https://github.com/mimi-tech/flutter_country_state/assets/62711340/0b8b0d47-6d1e-4336-97d5-3a4615ed1a71">
</td>
</tr>
</table>




 ### You can also change the style of the text of list of the country, states, and cities
<p>-searchHint</p>
<p>-substringBackground</p>
<p>-subStringStyle</p>
<p>-style</p>
<p>-searchStyle</p>
<p>selectedCountryBackgroundColor</p>
<p>notSelectedCountryBackgroundColor</p>
<p>selectedStateBackgroundColor</p>
<p>notSelectedStateBackgroundColor</p>
<p>selectedCityBackgroundColor</p>
<p>notSelectedCityBackgroundColor</p>
<p>onSelectCountry</p>
<p>onSelectedState</p>
<p>countryHeaderStyle</p>
<p>stateHeaderStyle</p>
<p>onSelectedCity</p>



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
      child: ShowCountryDialog(
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
    child: ShowStateDialog(
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
### This will display the cities of the state selected
 ``` dart
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
```

## Next goal
- [ x ] Add countries flag 
- [ x ] Add countries code


