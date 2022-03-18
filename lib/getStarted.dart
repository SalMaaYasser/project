import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/registerAs.dart';
import 'login.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0,
      ),

      body:
      Column(
        children:[
          Center(
            child: Image(image: AssetImage('assets/images/logo black.png',
            ),
              width: 125,
              height: 125,
            ),
          ),

          SizedBox(
            height: 230,
          ),

          Column(
            children:[
              MaterialButton(
                elevation:5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> registerAs()));
                },
                child: Container(
                  height: 50,
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size:19.0),
                    ],
                  ),
                ),
                color: Colors.black,
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          MaterialButton(
            height: 55,
            minWidth: 340,
            elevation:5.0,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20)),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> loginscren()));
            },
            child: Text(
              "Already have an account ?",
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
    );
  }
}
