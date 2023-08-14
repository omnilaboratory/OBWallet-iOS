import 'package:flutter/material.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.8,
                height: size.height * 0.65,
                child: const Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 28, bottom: 50),
                    child: Text("Top Up", style: TextStyle(fontSize: 20)),
                  ),

                ]),
              ),
              const SizedBox(height: 20),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Image(
                      image: AssetImage("asset/images/btn_cancel.png")))
            ],
          ),
        ));
  }
}
