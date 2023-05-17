import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

dynamic parseChatJson(List<dynamic> previous) {
  return null;
}

dynamic userMessageToMessagesJSON(
  String newMessage,
  String? name,
) {
  return {'role': 'user', 'content': newMessage, 'name': name};
}
