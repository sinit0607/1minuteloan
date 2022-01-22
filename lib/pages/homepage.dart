import 'package:flutter/material.dart';
import 'package:one_minute_loan/pages/personal_loan_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> titlelist = [
    "Personal Loan",
    "Business Loan",
    "     Car Loan",
    "    Home Loan",
    "    Gold Loan",
    "Education Loan",
    "   Adhar Loan",
    "     Pan Card",
  ];
  List<String> imagelist = [
    "assets/Group 154.png",
    "assets/Group 155.png",
    "assets/Group 156.png",
    "assets/Group 157.png",
    "assets/Group 158.png",
    "assets/Group 159.png",
    "assets/Group 160.png",
    "assets/Group 161.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(80.0),
      child: AppBar(
        backgroundColor: Color(0XFF2cbb95),
          leading: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Image.asset("assets/menu.png",color: Colors.white,)
          ),
          actions: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0,right: 5),
            child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.g_translate,size: 30,),
        ),
          )],
          title: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Text("1 Minute Loan",style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          centerTitle: true,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(18),
    ),)
      ),
    ),
    body: GridView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(30),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 15),
      itemCount: titlelist.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if (index == 0) {
                  print("1 tapped");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              personalloan()));
                } else if (index == 1) {
                  print("2 tapped");
                } else if (index == 2) {
                  print("third tapped");
                } else if (index == 3) {
                  print("fourth tapped");
                }else if (index == 4) {
                  print("five tapped");
                }else if (index == 5) {
                  print("6 tapped");
                }else if (index == 6) {
                  print("7 tapped");
                }else if (index == 7) {
                  print("8 tapped");
                }
              },
              child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            imagelist[index],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70.0,left: 4),
                            child: Text(titlelist[index],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign:TextAlign.center,),
                          ),
                        ],
                      ),

                    ],
                  )),
            ),
          ],
        );
      },
    ),);
  }
}
