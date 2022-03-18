
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/register.dart';

import 'getstarted.dart';

class registerAs extends StatefulWidget {
  const registerAs({Key? key}) : super(key: key);

  @override
  _registerAsState createState() => _registerAsState();
}

class _registerAsState extends State<registerAs> {
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

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Image(image: AssetImage('assets/images/logo black.png',
              ),
                width: 125,
                height: 125,
              ),
            ),
          ),

          SizedBox(
            height:110,
          ),

          Column(
            children: [
              Text('Register as',
                style:TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),

              SizedBox(
                height:20,
              ),

              Padding(
                padding: const EdgeInsetsDirectional.only(start: 130),
                child: Row(
                  children:[
                    MaterialButton(
                      height: 55,
                      minWidth: 120,
                      elevation:5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> RegisterScreen() ));

                      },
                      child: Text(
                        "Customer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      color: Colors.white,
                    ),

                    SizedBox(
                      width: 20.0,
                    ),

                    MaterialButton(
                      height: 55,
                      minWidth: 120,
                      elevation:5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20)),
                      onPressed: () {},
                      child: Text(
                        "Seller",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),


              SizedBox(
                height:60,
              ),

              MaterialButton(
                height: 55,
                minWidth: 280,
                elevation:5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20)),
                onPressed: () {
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=> ));

                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                color: Colors.black,
              ),

            ],
          ),




        ],
      ),
    );
  }
}
