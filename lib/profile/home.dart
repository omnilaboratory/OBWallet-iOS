import 'package:awallet/cards/real_card_step1.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/profile/my_users.dart';
import 'package:awallet/profile/update_psw.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';

import '../logins/login.dart';
import 'guide.dart';
import 'language.dart';
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
    List<Widget> list = [];
    list.add(buildUserInfo());
    list.add(const SizedBox(height: 40));
    list.add(btnBtnItem(Icons.insert_invitation_sharp,
        S.of(context).profile_home_InvitationCode, () {
      showDialog(
          context: context,
          builder: (context) {
            return const MyInvitationCode();
          });
    }));
    list.add(const SizedBox(height: 10));
    list.add(btnBtnItem(
        Icons.people_alt_rounded, S.of(context).profile_home_MyUsers, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyUsers()));
    }));

    if (CommonService.userInfo?.userType == 3) {
      list.add(const SizedBox(height: 10));
      list.add(btnBtnItem(
          Icons.monetization_on_outlined, S.of(context).profile_home_MyReward,
          () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyReward()));
      }));
    }
    list.add(const SizedBox(height: 10));
    list.add(btnBtnItem(
        Icons.language, S.of(context).profile_language_title, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Language()));
    }));
    list.add(const SizedBox(height: 10));
    list.add(
        btnBtnItem(Icons.help_center_outlined, S.of(context).profile_guide_title, () {
      showDialog(
          context: context,
          builder: (context) {
            return const Guide();
          });
    }));
    list.add(const SizedBox(height: 10));
    list.add(
        btnBtnItem(Icons.car_crash, "实体卡", () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const RealCardStep1()));
    }));
    list.add(const SizedBox(height: 10));
    list.add(btnBtnItem(
        Icons.verified_user_outlined, S.of(context).profile_home_UpdatePassword,
        () {
      showDialog(
          context: context,
          builder: (context) {
            return const UpdatePsw();
          });
    }));
    list.add(const SizedBox(height: 10));
    list.add(btnBtnItem(
        Icons.logout_outlined, S.of(context).profile_home_Logout, () {
      LocalStorage.remove(LocalStorage.userToken);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    }));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: HeadLogo(title: S.of(context).main_home_Profile),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: list,
          ),
        ),
      ),
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
