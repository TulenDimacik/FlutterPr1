import 'package:flutter/material.dart';

class Meditate extends StatefulWidget {
  const Meditate({Key? key}) : super(key: key);

  @override
  State<Meditate> createState() => _ScreenState();
}

class _ScreenState extends State<Meditate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: const Text(
                  "Meditate",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
              ),
              Container(
                height: 17,
                width: 17,
                margin: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                child: Image.asset("assets/Loop.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: const Color.fromRGBO(3, 158, 162, 1),
                  ),
                  child: const Text(
                    "All",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
              Container(
                height: 30,
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: const Color.fromRGBO(230, 254, 255, 1),
                  ),
                  child: const Text(
                    "Bible In a Year",
                    style: TextStyle(
                        color: Color.fromRGBO(3, 158, 162, 1), fontSize: 13),
                  ),
                ),
              ),
              Container(
                height: 30,
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: const Color.fromRGBO(230, 254, 255, 1),
                  ),
                  child: const Text(
                    "Dailies",
                    style: TextStyle(
                        color: Color.fromRGBO(3, 158, 162, 1), fontSize: 13),
                  ),
                ),
              ),
              Container(
                height: 30,
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: const Color.fromRGBO(230, 254, 255, 1),
                  ),
                  child: const Text(
                    "Minutes",
                    style: TextStyle(
                        color: Color.fromRGBO(3, 158, 162, 1), fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            height: 150,
            width: 340,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(242, 201, 76, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Image.asset("assets/MeditateLogo.png"),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "A Song of Moon",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 3, 0, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Start with the basics",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: const Text(
                  "♡",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                child: const Text(
                  "9 Sessions",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                child: const Text(
                  "Start",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                child: const Text(
                  "›",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 95,
                width: 140,
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Image.asset("assets/CloudAndMoon.png"),
              ),
              Container(
                height: 95,
                width: 140,
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Image.asset("assets/OrangeCloud.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "The Sleep Hour",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Easy on the Mission",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Ashna Mukherjee",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 92, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Peter Mach",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: const Text(
                  "♡",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: const Text(
                  "3 Sessions",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: const Text(
                  "Start",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: const Text(
                  "›",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: const Text(
                  "♡",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: const Text(
                  "5 minutes",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                child: const Text(
                  "Start",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: const Text(
                  "›",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 95,
                width: 140,
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Image.asset("assets/Planet.png"),
              ),
              Container(
                height: 95,
                width: 140,
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Image.asset("assets/BlueCloud.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Relax with Me",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 48, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Sun and Energy",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Amanda James",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 87, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Micheal Hiu",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: const Text(
                  "♡",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: const Text(
                  "3 Sessions",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: const Text(
                  "Start",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: const Text(
                  "›",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: const Text(
                  "♡",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: const Text(
                  "5 minutes",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                child: const Text(
                  "Start",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: const Text(
                  "›",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
