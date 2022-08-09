// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CallModel {
  final String title;
  final String image;
  final Icon callType;
  final String time;

  static Icon callReceived = Icon(
    Icons.call_received_rounded,
    color: Colors.teal,
    size: 18,
  );
  static Icon callMissed = Icon(
    Icons.call_missed_outgoing_rounded,
    color: Colors.red,
    size: 18,
  );

  CallModel(
      {required this.image,
      required this.title,
      required this.callType,
      required this.time});
}

List<CallModel> callData = [
  CallModel(
      title: 'Azeem',
      image: 'images/2.jpg',
      callType: CallModel.callMissed,
      time: 'August 06, 4:54 PM'),
  CallModel(
      title: 'Areeb',
      image: 'images/3.jpg',
      callType: CallModel.callReceived,
      time: 'August 05, 3:20 AM'),
  CallModel(
      title: 'Ashir',
      image: 'images/1.jpg',
      callType: CallModel.callMissed,
      time: 'August 05, 8:12 AM'),
  CallModel(
      title: 'Hamza',
      image: 'images/4.jpg',
      callType: CallModel.callReceived,
      time: 'August 05, 4:35 AM'),
  CallModel(
      title: 'Rocky',
      image: 'images/5.jpg',
      callType: CallModel.callReceived,
      time: 'August 04, 1:52 PM'),
  CallModel(
      title: 'Hashim',
      image: 'images/6.jpg',
      callType: CallModel.callReceived,
      time: 'August 06, 4:54 AM'),
  CallModel(
      title: 'Taimoor',
      image: 'images/7.jpg',
      callType: CallModel.callReceived,
      time: 'August 06, 4:54 AM'),
  CallModel(
      title: 'Zeeshan',
      image: 'images/8.jpg',
      callType: CallModel.callMissed,
      time: 'August 06, 4:54 AM'),
  CallModel(
      title: 'Huzaifa',
      image: 'images/9.jpg',
      callType: CallModel.callMissed,
      time: 'August 06, 4:54 AM'),
  CallModel(
      title: 'Ali',
      image: 'images/10.jpg',
      callType: CallModel.callReceived,
      time: 'August 06, 4:54 AM'),
  CallModel(
      title: 'Sameer',
      image: 'images/11.jpg',
      callType: CallModel.callReceived,
      time: 'August 06, 4:54 AM'),
];
