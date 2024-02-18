import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';

class PhysicalCardBind extends StatefulWidget {
  const PhysicalCardBind({
    super.key,
  });

  @override
  State<PhysicalCardBind> createState() => _PhysicalCardBindState();
}

class _PhysicalCardBindState extends State<PhysicalCardBind> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cardNoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  // final TextEditingController _cidController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  onConfirm() {
    FocusScope.of(context).requestFocus(FocusNode());
    if ((_formKey.currentState as FormState).validate() == false) {
      return;
    }

    var loading = showLoading(context);
    CardBindRequest cardBindRequest = CardBindRequest();
    cardBindRequest.cardNo = _cardNoController.text.trim();
    cardBindRequest.email = _emailController.text.trim();
    cardBindRequest.mobile = _mobileController.text.trim();
    // cardBindRequest.cid = _cidController.text.trim();
    cardBindRequest.firstName = _firstNameController.text.trim();
    cardBindRequest.lastName = _lastNameController.text.trim();
    CardService.getInstance().cardBind(context, cardBindRequest).then((resp) {
      removeLoading(loading);
      if (resp.code == 1) {
        Navigator.pop(context);
        GlobalParams.eventBus.fire("kyc_state");
        GlobalParams.eventBus.fire("cardBind_Finish");
      } else {
        alert(resp.msg, context, () {});
      }
    });
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    width: size.width * 0.85,
                    height: size.height * 0.7,
                    child: Column(children: [
                      const SizedBox(height: 25),
                      createDialogTitle(S.of(context).bindCard_title),
                      const SizedBox(height: 25),
                      buildInputField(),
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BottomButton(
                              icon: 'asset/images/icon_confirm_green.png',
                              text: S.of(context).common_Confirm.toUpperCase(),
                              onPressed: onConfirm,
                            )
                          ]),
                      const SizedBox(height: 30),
                    ]),
                  ),
                  const SizedBox(height: 30),
                  BottomWhiteButton(
                    icon: 'asset/images/icon_close_white.png',
                    text: S.of(context).common_Cancel.toUpperCase(),
                    onPressed: onClose,
                  )
                ],
              ),
            ),
          )),
    );
  }

  Widget buildInputField() {
    return Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  createTextFormField(
                      _cardNoController, S.of(context).bindCard_cardNo,
                      icon: const Icon(Icons.add_card_outlined), maxLength: 30),
                  const SizedBox(height: 10),
                  createTextFormField(
                      _mobileController, S.of(context).bindCard_mobile,
                      icon: const Icon(Icons.phone), maxLength: 20),
                ],
              ),
            ),
            const SizedBox(height: 10),
            createTextFormField(_emailController, S.of(context).common_Email,
                icon: const Icon(Icons.email), maxLength: 30),
            const SizedBox(height: 10),
            createTextFormField(
                _firstNameController, S.of(context).realCard_firstName,
                icon: const Icon(Icons.drive_file_rename_outline),
                maxLength: 30),
            const SizedBox(height: 10),
            createTextFormField(
                _lastNameController, S.of(context).realCard_lastName,
                icon: const Icon(Icons.drive_file_rename_outline),
                maxLength: 30),
          ],
        ));
  }
}
