import 'package:flutter/material.dart';

import 'FQASpage.dart';
import 'homepage.dart';

class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  _DrawerpageState createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Center(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  decoration: new BoxDecoration(
                    color: Color(0XFF2cbb95),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text("FQAS",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    fqas()));
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
