import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

import 'Drawerpage.dart';

class selectlang extends StatefulWidget {
  const selectlang({Key? key}) : super(key: key);

  @override
  _selectlangState createState() => _selectlangState();
}

class _selectlangState extends State<selectlang> {
  int x = 0;
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
                  onPressed: () {},
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
                "Select Language",
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
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      x = 0;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 160,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0XFF2cbb95),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: x == 0 ? Color(0XFF2cbb95) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "Hindi",
                          style: TextStyle(
                            fontSize: 20,
                              color:
                              x == 0 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      x = 1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 160,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0XFF2cbb95),
                        ),
                        color: x == 1 ? Color(0XFF2cbb95) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "English",
                          style: TextStyle(
                              fontSize: 20,
                              color:
                              x == 1 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(child: Center(child: Text("Ads")),height: 100,width: double.infinity,)
          ],
        ),
      ),
    );
  }
}
