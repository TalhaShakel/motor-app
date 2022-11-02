import 'package:flutter/material.dart';
import 'package:flutter_application_1/constaint.dart';
import 'package:flutter_application_1/home/homescreen.dart';
import 'package:get/get.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimecolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 8,
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "User Name",
                      hintStyle: TextStyle(color: Colors.grey[400])),
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email or Phone number",
                      hintStyle: TextStyle(color: Colors.grey[400])),
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Cnic",
                      hintStyle: TextStyle(color: Colors.grey[400])),
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mobile No",
                      hintStyle: TextStyle(color: Colors.grey[400])),
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey[400])),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => HomeScreen());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(143, 148, 251, 1),
                      Color.fromRGBO(143, 148, 251, .6),
                    ])),
                child: Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
