import 'package:flutter/material.dart';
import 'package:one_minute_loan/pages/Emicalculator.dart';
import 'package:one_minute_loan/pages/selectlanguage.dart';

import 'Drawerpage.dart';
import 'homepage.dart';

class Bankloanpage extends StatefulWidget {
  const Bankloanpage({Key? key}) : super(key: key);

  @override
  _BankloanpageState createState() => _BankloanpageState();
}

class _BankloanpageState extends State<Bankloanpage> {
  TextEditingController name = TextEditingController();
  TextEditingController Birthdate = TextEditingController();
  TextEditingController Aadharnumber = TextEditingController();
  TextEditingController amountofloan = TextEditingController();
  TextEditingController bankaccountnumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
        drawer: Drawerpage(),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Enter YourName'),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Enter BirthDate'),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: Birthdate,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Enter Aadharnumber'),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: Aadharnumber,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Enter Amount of Loan'),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: amountofloan,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Enter bankAccount number'),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: bankaccountnumber,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0XFF2cbb95),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => HomePage()));
                          name.clear();
                          Birthdate.clear();
                          Aadharnumber.clear();
                          amountofloan.clear();
                          bankaccountnumber.clear();
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0XFF2cbb95),
                        ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Emicalculator()));
                    },
                    child: const Text('EMI calculator'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
