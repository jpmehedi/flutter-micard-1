import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/avatar.png"),
                ),
                Text(
                  "Mehedi Hasan",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'flutter developer'.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      color: Colors.teal.shade100,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                  width: 200,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Cardbuilder(
                  icon: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  text: "+880- 1790 180 925",
                ),
                Cardbuilder(
                  icon: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  text: "mehedicse@gmail.com",
                ),
              ],
            ),
          )),
    );
  }
}

class Cardbuilder extends StatelessWidget {
  Cardbuilder({this.icon, this.text});

  final Icon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: ListTile(
          leading: icon,
          title: Text(
            text,
            style: TextStyle(
              color: Colors.teal,
              fontFamily: 'Source Sans Pro',
              fontSize: 20.0,
            ),
          ),
        ));
  }
}
