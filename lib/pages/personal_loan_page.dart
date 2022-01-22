import 'package:flutter/material.dart';
import 'package:one_minute_loan/pages/whatisapersonalloanpage.dart';

class personalloan extends StatefulWidget {
  const personalloan({Key? key}) : super(key: key);

  @override
  _personalloanState createState() => _personalloanState();
}

class _personalloanState extends State<personalloan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 10,
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
                      title: Text("What is a Personal Loan?"),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                whatispersonalloan()));
                      },
                    ),
                  ),
                ),
              );
            }));
  }
}
