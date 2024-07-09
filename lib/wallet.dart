import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 62, 62, 62),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        title: const Text(
          "Transaction",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  foregroundImage: AssetImage("assets/user.jpg"),
                  radius: 48,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Gabriel Graeene",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w100),
          ),
          Text(
            "Gabriel123@gmail.com",
            style: TextStyle(
              color: const Color.fromARGB(255, 213, 213, 213),
              fontSize: 10,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "\$ 1,896",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w800),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Family Card",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        "******9934",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 213, 213, 213),
                            fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "VISA",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 40,
              width: 400,
              child: Center(
                child: const Text(
                  "Send now",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
