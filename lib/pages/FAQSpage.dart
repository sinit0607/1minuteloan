import 'package:flutter/material.dart';
import 'package:one_minute_loan/pages/selectlanguage.dart';

import 'Drawerpage.dart';

class fqas extends StatefulWidget {
  const fqas({Key? key}) : super(key: key);

  @override
  _fqasState createState() => _fqasState();
}

class _fqasState extends State<fqas> {
  List<String> titlelist = [
    "Debit Card FAQs",
    "Credit Card FAQs",
    "Credit Score FAQs",
    "Home Loan Balance Transfer FAQs",
    "Income Tax FAQs",
    "Loan Against Property FAQs",
    "Saving Account FAQs",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
            backgroundColor: Color(0XFF2cbb95),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, right: 5),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                            selectlang()));
                  },
                  icon: Icon(
                    Icons.g_translate,
                    size: 30,
                  ),
                ),
              )
            ],
            title: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                "1 Minute Loan",
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
      drawer:Drawerpage(),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: titlelist.length,
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
                  title: Center(
                      child: Text(
                    titlelist[index],
                    style: TextStyle(color: Colors.white),
                  )),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) =>
                    //             whatispersonalloan()));
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
