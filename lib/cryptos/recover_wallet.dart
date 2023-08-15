import 'dart:developer';
import 'package:flutter/material.dart';
import '../component/rect_button.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [DriveApi.driveFileScope],
);

class RecoverWallet extends StatefulWidget {
  const RecoverWallet({super.key});

  @override
  State<RecoverWallet> createState() => _RecoverWalletState();
}

class _RecoverWalletState extends State<RecoverWallet> {
  @override
  void initState() {
    super.initState();

    // trying to sign in silently if has signed in
    _googleSignIn.signInSilently();
  }

  // recover wallet from Google Drive
  recoverFromDrive() async {
    final client = (await _googleSignIn.authenticatedClient())!;

    // get the instance to access resource in the drive
    final drive = DriveApi(client);
    log('Drive instance: $drive');

    // get the recover files
    var query   = "name='RECOVER_FILE_NAME'";
    final files = await drive.files.list(q: query);

    for (final file in files.files!) {
      log('File Name: ${file.name}');
    }
  }

  onGoogleDrive() async {
    bool isSignedIn = await _googleSignIn.isSignedIn();

    if (isSignedIn) {
      log('Google account signed in.');
      recoverFromDrive();
    } else {
      log('Google account NOT signed in.');
      GoogleSignInAccount? account = await _googleSignIn.signIn();

      if (account != null) {
        log('Signed In: $account');
        recoverFromDrive();
      }
    }
  }

  onLocalFiles() {
    log('onLocalFiles');
  }

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
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 28, bottom: 50),
                    child:
                        Text("Recover Wallet", style: TextStyle(fontSize: 20)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            width: 30,
                            height: 30,
                            image: AssetImage("asset/images/icon_smile.png")),
                        SizedBox(width: 10),
                        Text("Select the source to recover",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF333333))),
                      ],
                    ),
                  ),
                  RectButton(
                      icon: 'asset/images/icon_google.png',
                      text: 'Google Drive',
                      onPressed: onGoogleDrive),
                  const SizedBox(height: 30),
                  RectButton(
                      icon: 'asset/images/icon_folder.png',
                      text: 'Local Files',
                      onPressed: onLocalFiles),
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
        )
      );
  }
}
