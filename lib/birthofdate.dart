import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class birthdate extends StatefulWidget {
  const birthdate({Key? key}) : super(key: key);

  @override
  _birthdateState createState() => _birthdateState();
}

class _birthdateState extends State<birthdate> {

  TextEditingController dateCtl = TextEditingController();
  DateTime ? date;
  // List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  // late String _selectedLocation; // Option 2
  late String _dropDownValue;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios_outlined,
            color: Colors.black,),
        ),
      ),

      body:
      Column(
        children: [
          Center(
            child: Image(image: AssetImage('assets/images/logo black.png',
            ),
              width: 125,
              height: 125,),
          ),

          SizedBox(
            height: 30,
          ),


          TextFormField(
            controller: dateCtl,
            decoration: InputDecoration(
              labelText: 'date of birth',
            ),

            onTap: () {
              showDatePicker(context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.parse('2022-09-04'),
              ).then((value) {
                dateCtl.text = value
                    .toString()
                    .split(' ')
                    .first;
                // dateCtl.text = date.toIso8601String();

                if (date != null) {
                  setState(() {
                    date = date;
                  });
                }
              },
              );
            },
          ),


          SizedBox(
            height: 30.0,
          ),

          //
          // DropdownButton(
          // hint: Text('Please choose a location'), // Not necessary for Option 1
          // value: _selectedLocation,
          // onChanged: (newValue) {
          // setState(() {
          // _selectedLocation = newValue;
          // });
          // },
          // items: _locations.map((location) {
          // return DropdownMenuItem(
          // child: new Text(location),
          // value: location,
          // );
          // }).toList(),
          // ),

          //
          // DropdownButton(
          // hint: _dropDownValue == null
          // ? Text('Dropdown')
          //     : Text(
          // _dropDownValue,
          // style: TextStyle(color: Colors.blue),
          // ),
          // isExpanded: true,
          // iconSize: 30.0,
          // style: TextStyle(color: Colors.blue),
          // items: ['One', 'Two', 'Three'].map(
          // (val) {
          // return DropdownMenuItem<String>(
          // value: val,
          // child: Text(val),
          // );
          // },
          // ).toList(),
          // onChanged: (val) {
          //   setState(
          //         () {
          //       _dropDownValue = val;
          //     },
          //   );
          // },
          // ),
        ],
      ),
    );
  }
}
