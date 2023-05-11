import '/auth/firebase_auth/auth_util.dart';
import '/components/authentication/input_email/input_email_widget.dart';
import '/components/authentication/input_password/input_password_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Input_Email component.
  late InputEmailModel inputEmailModel;
  // Model for Input_Password component.
  late InputPasswordModel inputPasswordModel1;
  // Model for Input_Password component.
  late InputPasswordModel inputPasswordModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inputEmailModel = createModel(context, () => InputEmailModel());
    inputPasswordModel1 = createModel(context, () => InputPasswordModel());
    inputPasswordModel2 = createModel(context, () => InputPasswordModel());
  }

  void dispose() {
    inputEmailModel.dispose();
    inputPasswordModel1.dispose();
    inputPasswordModel2.dispose();
  }

  /// Additional helper methods are added here.

}
