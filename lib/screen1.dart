import 'package:flutter/material.dart';

class Medinow extends StatefulWidget {
  const Medinow({Key? key}) : super(key: key);

  @override
  State<Medinow> createState() => _ScreenState();
}

class _ScreenState extends State<Medinow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          
      child: Column(children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0,50,0,0),
          child: const Text(
            "medinow",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40, color: Colors.white),
          ),
        ),
        const Text("Mediate With Us!", style: TextStyle( fontSize: 17, color: Colors.white)),
        Container(
          width: 340,
          height: 50,
          margin: const EdgeInsets.fromLTRB(0, 60, 0, 10),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),primary: Colors.white
            ),
            child: const Text("Sign in with Apple", style: TextStyle(fontSize: 16, color: Colors.black),),
          ),
        ),
         Container(
          width: 340,
          height: 50,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),primary: const Color.fromRGBO(205, 253, 254, 1)
            ),
            child: const Text("Continue with Email or Phone", style: TextStyle(fontSize: 16, color: Colors.black),),
          ),
        ),
        const Text("Continue With Google", style: TextStyle(color: Colors.white, fontSize: 16),),

         Expanded(child: Image.asset("lib/assets/img1.png")),
      ]),
    ),
    backgroundColor: const Color.fromRGBO(3, 158, 162, 1)
        );
  }
}
