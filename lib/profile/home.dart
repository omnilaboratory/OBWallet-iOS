import 'package:awallet/component/head_logo.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';

import '../logins/login.dart';

class ProfileHome extends StatefulWidget {
  const ProfileHome({super.key});

  @override
  State<ProfileHome> createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadLogo(title: "Profile"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildUserInfo(),
            const SizedBox(height: 40),
            btnBtnItem(Icons.verified_user_outlined, "Update Password", () {}),
            const SizedBox(height: 20),
            btnBtnItem(Icons.logout_outlined, "Logout", () {
              LocalStorage.remove(LocalStorage.userToken);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            }),
          ],
        ),
      )),
    );
  }

  Widget buildUserInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      width: double.infinity,
      height: 120,
      decoration: ShapeDecoration(
        color: const Color(0xFF638AC1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Email: ${CommonService.userInfo!.email}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              )),
          Text("Username: ${CommonService.userInfo!.userName}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )),
        ],
      ),
    );
  }

  Widget btnBtnItem(IconData icon, String name, Function onTap) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: 60,
        padding: const EdgeInsets.only(left: 20),
        decoration: ShapeDecoration(
          color: const Color(0x11B7B8BD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Row(
          children: [Icon(icon), const SizedBox(width: 10), Text(name)],
        ),
      ),
    );
  }
}
