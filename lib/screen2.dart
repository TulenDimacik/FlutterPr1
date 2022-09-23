import 'package:flutter/material.dart';

class MindDeepRelax extends StatefulWidget {
  const MindDeepRelax({Key? key}) : super(key: key);

  @override
  State<MindDeepRelax> createState() => _ScreenState();
}

class _ScreenState extends State<MindDeepRelax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 15),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(242, 201, 76, 1),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Image.asset("lib/assets/img2.png"),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: const Text(
            "Peter Mach",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
          alignment: Alignment.centerLeft,
          child: const Text(
            "Mind Deep Relax",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          alignment: Alignment.centerLeft,
          child: const Text(
            "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
        Stack(children: [
          Container(
            width: 320,
            height: 50,
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 40),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: const Color.fromRGBO(3, 158, 162, 1)),
              child: const Text(
                "Play Next Session",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(60, 35, 0, 0),
            width: 20,
            height: 20,
            child: Image.asset("lib/assets/img3.png"),
          ),
        ]),
        Row(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(47, 128, 237, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                ),
                Container(
            margin: const EdgeInsets.fromLTRB(35, 25, 0, 0),
            width: 20,
            height: 20,
            child: Image.asset("lib/assets/img3.png"),
          ),
              ]),
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text("Sweet Memories", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                 alignment: Alignment.topCenter,
                 child: const Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                     Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                     Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        //
         Row(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(3, 158, 162,1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                ),
                Container(
            margin: const EdgeInsets.fromLTRB(35, 25, 0, 0),
            width: 20,
            height: 20,
            child: Image.asset("lib/assets/img3.png"),
          ),
              ]),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: const Text("A Day Dream", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                 child: const Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                     Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                     Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        //
         Row(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(240, 136, 53, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                ),
                Container(
            margin: const EdgeInsets.fromLTRB(35, 25, 0, 0),
            width: 20,
            height: 20,
            child: Image.asset("lib/assets/img3.png"),
          ),
              ]),
            Column( 
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: const Text("Mind Explore", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                 child: const Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                     Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                     Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      alignment: Alignment.centerRight,
                      width: 8,
                      height: 8,
                       decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )

      ]),
    );
  }
}
