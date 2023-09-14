// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color.fromARGB(255, 2, 16, 41),
                  centerTitle: true,
                  title: Text(
                    "kingsley's profile",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                backgroundColor: Color.fromARGB(255, 178, 158, 183),
                body: Container(
                    child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      CircleAvatar(
                        radius: 100,
                        backgroundImage:
                            Image.asset("assets/images/profile_image2.jpg").image,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 70,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "First Name:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white70),
                                  ),
                                  Text("kingsley",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white70,
                                      ))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Last Name:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white70),
                                  ),
                                  Text("Nnajide",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white70,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width:200, child: TextField()),
                      SizedBox(width:200, child: TextField()),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: (){ print("working"); }, 
                              child: Text("Delete Profile"),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),),
                          ),
                        
                       ],
                     )
                    ]),
                  ),
                )))));
  }
}