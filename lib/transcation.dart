import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/linechart.dart';

class TranscationPage extends StatelessWidget {
  const TranscationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const CircleAvatar(
          foregroundImage: AssetImage("assets/user.jpg"),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 62, 62, 62),
            child: Icon(Icons.search_sharp, color: Colors.white),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 62, 62, 62),
            child: Icon(Icons.notifications, color: Colors.white),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Your ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 30),
                  ),
                  Text(
                    "Activity",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 30),
                  )
                ],
              ),
              const Row(
                children: [
                  Text(
                    "April 01-April 30 2024 >",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: size.width * 0.45,
                    child: const Card(
                      color: Color.fromARGB(255, 62, 62, 62),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Spending",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            "\$911.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: size.width * 0.45,
                    child: const Card(
                      color: Color.fromARGB(255, 62, 62, 62),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Income",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            "\$550.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: size.width * 0.92,
                      width: size.width * 0.92,
                      child: const Card(
                        color: Color.fromARGB(255, 62, 62, 62),
                        child: MyLineChart(),
                      ))
                ],
              ),
              const SizedBox(width: 30),
              const Row(
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w200),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(225, 109, 109, 109),
                          Color.fromARGB(214, 29, 29, 29),
                        ],
                      )),
                  child: const Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Grocery payment",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        "\$78",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
