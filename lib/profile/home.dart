import 'package:awallet/component/head_logo.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/profile/my_users.dart';
import 'package:awallet/profile/update_psw.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';

import '../logins/login.dart';
import 'my_invitation_code.dart';
import 'my_reward.dart';

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
        automaticallyImplyLeading: false,
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
            btnBtnItem(Icons.verified_user_outlined, "Update Password", () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const UpdatePsw();
                  });
            }),
            const SizedBox(height: 20),
            btnBtnItem(Icons.insert_invitation_sharp, "My Invitation Code", () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const MyInvitationCode();
                  });
            }),
            const SizedBox(height: 20),
            btnBtnItem(Icons.people_alt_rounded, "My Users", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyUsers()));
            }),
            const SizedBox(height: 20),
            btnBtnItem(Icons.monetization_on_outlined, "My Reward", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyReward()));
            }),
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
          Row(
            children: [
              const Icon(Icons.person, color: Colors.white, size: 30),
              const SizedBox(width: 10),
              Text(CommonService.userInfo!.userName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.email, color: Colors.white, size: 30),
              const SizedBox(width: 10),
              Text(CommonService.userInfo!.email,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ],
          ),
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
