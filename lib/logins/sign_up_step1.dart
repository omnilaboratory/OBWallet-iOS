import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/logins/sign_up_step2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class SignUpStepOne extends StatefulWidget {
  const SignUpStepOne({super.key});

  @override
  State<SignUpStepOne> createState() => _SignUpStepOneState();
}

class _SignUpStepOneState extends State<SignUpStepOne> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();
  final TextEditingController _psw2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(height: 55),
        buildTitle(),
        const SizedBox(height: 55),
        buildInputField(),
        const SizedBox(height: 200),
        buildButtons(context)
      ])),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        title: const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image(image: AssetImage("asset/images/logo_head.png")),
          Text('Sign Up',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ))
        ]));
  }

  Row buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomWhiteButton(
          icon: 'asset/images/icon_arrow_left_green.png',
          text: 'BACK',
          fontColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        BottomWhiteButton(
          icon: 'asset/images/icon_arrow_right_green.png',
          text: 'NEXT',
          fontColor: Colors.black,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SignUpStepTwo()));
          },
        ),
      ],
    );
  }

  Container buildInputField() {
    return Container(
      width: 320,
      height: 292,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x7AAAA9DD),
            blurRadius: 10,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            TextFormField(
              controller: _unameController,
              decoration: const InputDecoration(
                  labelText: "Username",
                  hintText: "Username",
                  prefixIcon: Icon(Icons.person)),
              // 校验用户名
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "wrong username";
              },
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: _pswController,
              decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "wrong password";
              },
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: _psw2Controller,
              decoration: const InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Confirm Password",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "wrong Confirm Password";
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFFEC9A1E),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Step 1',
          style: TextStyle(
            color: Color(0xD6EC9A1E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Dash(
              direction: Axis.horizontal,
              dashLength: 4,
              length: 45,
              dashColor: Color(0xFF999999)),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFF999999),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'MS UI Gothic',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Step 2',
          style: TextStyle(
            color: Color(0xD6999999),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
