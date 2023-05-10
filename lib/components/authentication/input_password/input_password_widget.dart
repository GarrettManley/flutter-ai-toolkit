import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'input_password_model.dart';
export 'input_password_model.dart';

class InputPasswordWidget extends StatefulWidget {
  const InputPasswordWidget({Key? key}) : super(key: key);

  @override
  _InputPasswordWidgetState createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  late InputPasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputPasswordModel());

    _model.passwordController ??= TextEditingController();
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
          controller: _model.passwordController,
          autofocus: true,
          autofillHints: [AutofillHints.password],
          obscureText: !_model.passwordVisibility,
          decoration: InputDecoration(
            labelText: 'Password',
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
            suffixIcon: InkWell(
              onTap: () => setState(
                () => _model.passwordVisibility = !_model.passwordVisibility,
              ),
              focusNode: FocusNode(skipTraversal: true),
              child: Icon(
                _model.passwordVisibility
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Color(0xFF57636C),
                size: 24.0,
              ),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xFF101213),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
          validator: _model.passwordControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
