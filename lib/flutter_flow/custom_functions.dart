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

dynamic createChatRequest(List<dynamic>? messages) {
  return messages;
}

dynamic createMessageJson(
  String content,
  String role,
) {
  return {'role': role, 'content': content};
}

dynamic openAPICreateMessage(
  String? role,
  String? content,
) {
  return {'role': role, 'content': content};
}
