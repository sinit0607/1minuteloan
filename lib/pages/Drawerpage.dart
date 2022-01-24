import 'package:flutter/material.dart';
import 'package:one_minute_loan/pages/FAQSpage.dart';

import 'Emicalculator.dart';

class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  _DrawerpageState createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  List<String> titlelist = ["FAQS", "EMI Calculator"];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Center(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 2,
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
                      title: Text(
                        titlelist[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      fqas()));
                        } else if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Emicalculator()));
                        }
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
