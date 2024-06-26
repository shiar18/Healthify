import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthify/user/home_page/home_screen.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID, required this.name, required this.uid}) : super(key: key);
  final String callID;
  final String name;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1501834791, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "650bbe6ddf9c62c7e579155e940af335f134a8cf11486043bd3d97b94c8559ed", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: uid,
      userName: name,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        // ..topMenuBar.isVisible = true
        // ..topMenuBar.buttons = [
        //   ZegoCallMenuBarButtonName.minimizingButton,
        //   ZegoCallMenuBarButtonName.showMemberListButton,
        // ]
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
      //= (context) => Navigator.of(context).pop(),
    );
  }
}
