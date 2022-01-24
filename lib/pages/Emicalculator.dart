import 'package:flutter/material.dart';
import 'package:one_minute_loan/pages/selectlanguage.dart';

import 'Drawerpage.dart';

class Emicalculator extends StatefulWidget {
  const Emicalculator({Key? key}) : super(key: key);

  @override
  _EmicalculatorState createState() => _EmicalculatorState();
}

class _EmicalculatorState extends State<Emicalculator> {
  TextEditingController principalAmount = TextEditingController();
  TextEditingController rateofinterest = TextEditingController();
  TextEditingController lordterminmonth = TextEditingController();
  num expectedamount = 0;
  double Totalinterest = 0;
  num wealth = 0;
  double monthlyEmi = 0;
  double TotalPayment = 0;
  num total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFdefff6),
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
                            builder: (BuildContext context) => selectlang()));
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
                "EMI Calculator",
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
      drawer: Drawerpage(),
      body: SingleChildScrollView(
        child: Form(
          child: new Column(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18, top: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Can't be Empty",
                    labelText: "Principal amount",
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String? value) {
                    return (value != null && value.contains(''))
                        ? "Can't be Empty"
                        : null;
                  },
                  controller: principalAmount,
                )),
            Padding(
                padding:
                const EdgeInsets.only(left: 18.0, right: 18),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Can't be Empty",
                    labelText: "Rate of interest(p.a)",
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String? value) {
                    return (value != null && value.contains(''))
                        ? "Can't be Empty"
                        : null;
                  },
                  controller: rateofinterest,
                )),
            Padding(
              padding:
              const EdgeInsets.only(left: 18.0, right: 18),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Can't be Empty",
                  labelText: "Load Term in months",
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains(''))
                      ? "Can't be Empty"
                      : null;
                },
                controller: lordterminmonth,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    " Monthly EMI :",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 133),
                  child: Text(
                    "$monthlyEmi",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    " Total Interest:",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 133),
                  child: Text(
                    "$Totalinterest",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21.0),
                  child: Text(
                    "Total payment:",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Text(
                    "$TotalPayment",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 88.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    double p = double.parse(principalAmount.text);
                    double r = double.parse(rateofinterest.text);
                    double t = double.parse(lordterminmonth.text);
                    Totalinterest = (p * r) / 100;
                    TotalPayment = p + Totalinterest;
                    monthlyEmi = (TotalPayment / t);
                    String inString =
                    monthlyEmi.toStringAsFixed(2);
                    monthlyEmi = double.parse(inString);
                  });
                },
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: 160,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    principalAmount.clear();
                    rateofinterest.clear();
                    lordterminmonth.clear();
                    Totalinterest = 0;
                    TotalPayment = 0;
                    monthlyEmi = 0;
                  });
                },
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 160,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "RESET",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
