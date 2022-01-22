import 'package:flutter/material.dart';

import 'ApplyNow.dart';

class whatispersonalloan extends StatefulWidget {
  const whatispersonalloan({Key? key}) : super(key: key);

  @override
  _whatispersonalloanState createState() => _whatispersonalloanState();
}

class _whatispersonalloanState extends State<whatispersonalloan> {
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
                "What is a Personal Loan?",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFFdefff6),
            ),
            child: Column(
              children: [
                Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Center(
                      child: Text("ADS"),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(14.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            """
Personal Loan is an unsecured credit provided by financial institutions based on criteria like employment history, repayment capacity, income level, profession and credit history. Personal Loan, which is also known as a consumer loan is a multi-purpose loan, which you can use to meet any of your immediate needs.\nHow a Personal Loan Works
To get a personal loan, you need to apply to a lender. Again, this can be a bank, credit union, or online personal loan lender. 
Generally, you would first complete an application. The lender reviews it and decides whether to approve or deny it.""",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 140.0, bottom: 10),
                          child: TextButton.icon(
                            label: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                ' Apply Now'.toUpperCase(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0XFF2cbb95),
                                shadowColor: Colors.red,
                                elevation: 2,
                                textStyle: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                     ApplyNow()));
                            },
                            icon: Icon(
                              Icons.check_circle,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
