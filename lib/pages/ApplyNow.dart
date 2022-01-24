import 'package:flutter/material.dart';

import 'bankloanpage.dart';

class ApplyNow extends StatefulWidget {
  const ApplyNow({Key? key}) : super(key: key);

  @override
  _ApplyNowState createState() => _ApplyNowState();
}

class _ApplyNowState extends State<ApplyNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFdefff6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
            backgroundColor: Color(0XFF2cbb95),
            title: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                "Personal Loan",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(18),
              ),
            )),
      ),
      body:  ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0XFF2cbb95)),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: ListTile(
                  title: Text(" SBI Bank Personal Loan",style: TextStyle(color: Colors.black),),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Bankloanpage()));
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
