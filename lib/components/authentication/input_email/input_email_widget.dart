import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'input_email_model.dart';
export 'input_email_model.dart';

class InputEmailWidget extends StatefulWidget {
  const InputEmailWidget({Key? key}) : super(key: key);

  @override
  _InputEmailWidgetState createState() => _InputEmailWidgetState();
}

class _InputEmailWidgetState extends State<InputEmailWidget> {
  late InputEmailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputEmailModel());

    _model.emailAddressController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          controller: _model.emailAddressController,
          autofocus: true,
          autofillHints: [AutofillHints.email],
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Color(0xFF57636C),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF1F4F8),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF4B39EF),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE0E3E7),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE0E3E7),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            filled: true,
            fillColor: Color(0xFFF1F4F8),
          ),
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xFF101213),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
          keyboardType: TextInputType.emailAddress,
          validator:
              _model.emailAddressControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
