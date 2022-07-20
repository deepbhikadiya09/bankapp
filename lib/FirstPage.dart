import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List Bank = [
    "Axis Bank",
    "IDBI Bank",
    "Kotak Bank",
    "ICICI Bank",
    "HDFC Bank",
    "State Bank of India",
    "Central Bank of India",
    "IDFC First Bank",
    "RBL Bank",
    "Bandhan Bank",
  ];
  String Axis = "https://www.axisbank.com/";
  String Idbi = "https://www.idbibank.in/";
  String Kotsk = "https://www.kotak.com/en/home.html";
  String Icici = "https://www.icicibank.com/";
  String Hdfc = "https://www.hdfcbank.com/";
      String Sbi = "https://www.onlinesbi.com/";
  String Cbi = "https://www.centralbankofindia.co.in/en";
      String Idfc = "https://www.idfcfirstbank.com/";
  String Rbl = "https://abacus.rblbank.com/DigiAqui/#/welcome?LeadSource=AW-DSA-HighMAB-Pinlocation&utm_campaign=AW-RBL--DB-Sep-21&utm_medium=cpc&utm_source=google";
      String Ban = "https://bandhanbank.com/";
  List finalBank=[];
  List color = [
    Colors.lightBlue,
    Colors.red,
    Colors.green,
    Colors.amber,
    Colors.teal,
    Colors.orange,
    Colors.brown,
    Colors.teal,
    Colors.yellowAccent,
    Colors.pinkAccent
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Bank App",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: ListView.builder(
              itemCount: Bank.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    finalBank.add(Axis);
                    finalBank.add(Idbi);
                    finalBank.add(Kotsk);
                    finalBank.add(Icici);
                    finalBank.add(Hdfc);
                    finalBank.add(Sbi);
                    finalBank.add(Cbi);
                    finalBank.add(Idfc);
                    finalBank.add(Rbl);
                    finalBank.add(Ban);
                    Navigator.pushNamed(context, '/SecondPage',arguments: finalBank[index]);
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: color[index],
                    ),
                    child: Center(
                        child: Text(
                      "${Bank[index]}",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.8),
                    )),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
