import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<MessageStruct> chatMessages = [];
  void addToChatMessages(MessageStruct item) => chatMessages.add(item);
  void removeFromChatMessages(MessageStruct item) => chatMessages.remove(item);
  void removeAtIndexFromChatMessages(int index) => chatMessages.removeAt(index);

  ///  State fields for stateful widgets in this page.

  // State field(s) for userMessageInput widget.
  TextEditingController? userMessageInputController;
  String? Function(BuildContext, String?)? userMessageInputControllerValidator;
  // Stores action output result for [Backend Call - API (Chat)] action in IconButton widget.
  ApiCallResponse? apiResulttvp;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    userMessageInputController?.dispose();
  }

  /// Additional helper methods are added here.

}
