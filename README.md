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
<img src="https://user-images.githubusercontent.com/62711340/151657235-c2788bb1-3e8b-4395-95be-12835d989aac.jpeg">

</td>

<td>
<img src="https://user-images.githubusercontent.com/62711340/151657287-775c8cc9-6c90-48be-a6d2-97c9876ee577.jpeg">
</td>
</tr>
</table>


<table>
<tr>
<td>
<img src="https://user-images.githubusercontent.com/62711340/151657556-b4e075c4-3fc6-4ae1-88b1-6bf8abf5be19.jpeg">

</td>

<td>
<img src="https://user-images.githubusercontent.com/62711340/151657580-90a57249-78ea-4767-9c31-ecab5fcd6de8.jpeg">
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



<hr>
 
 ## Use It
 ### This will display the countries; You can display the country and state either with bottom sheet or dialog
  ``` dart
 ShowMyDialog(
searchHint: 'Search country',
substringBackground: Colors.green,
style: TextStyle(),
searchStyle: TextStyle(),
subStringStyle: TextStyle(),
selectedCountryBackgroundColor: Colors.orange,
notSelectedCountryBackgroundColor: Colors.white,
)
```
### This will display the states of the country selected
 ``` dart
StateDialog(
style: TextStyle(),
subStringStyle: TextStyle(),
substringBackground: Colors.blueAccent,
selectedStateBackgroundColor: Colors.orange,
notSelectedStateBackgroundColor: Colors.white,
),
```

## Next goal
- [ x ] Add countries flag 
- [ x ] Add countries code

