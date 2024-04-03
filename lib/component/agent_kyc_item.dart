import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/user.pb.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';

class AgentKycItem extends StatelessWidget {
  final AgentKycInfo info;

  const AgentKycItem({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        alert(S.of(context).agent_kyc_applyCard(info.email), context, () {
          UserService.getInstance()
              .agentCard(context, info.openId)
              .then((result) {
            if (result.code == 0) {
              alert(result.msg, context, () {});
            }else{
              GlobalParams.eventBus.fire("agent_kyc_finish");
              alert(S.of(context).tips_successApply, context, () {});
            }
          });
        }, showCancel: true);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 88, 170, 229),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(info.email,
                    style: const TextStyle(color: Colors.white, fontSize: 16)),
                const Spacer(),
                Text(info.lastName + info.firstName,
                    style: const TextStyle(color: Colors.white, fontSize: 16)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(StringTools.starString2(info.idNum,begin: 4,end: 4,word: "***") , style: const TextStyle(color: Colors.white)),
                const Spacer(),
                Text("(${info.areaCode})${info.mobile}",
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
