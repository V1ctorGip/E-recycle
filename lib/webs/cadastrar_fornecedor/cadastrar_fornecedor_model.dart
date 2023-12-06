import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrarFornecedorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nome-Fornecedor widget.
  TextEditingController? nomeFornecedorController;
  String? Function(BuildContext, String?)? nomeFornecedorControllerValidator;
  // State field(s) for CNPJ-Fornecedor widget.
  TextEditingController? cNPJFornecedorController;
  String? Function(BuildContext, String?)? cNPJFornecedorControllerValidator;
  // State field(s) for Email-Fornecedor widget.
  TextEditingController? emailFornecedorController;
  String? Function(BuildContext, String?)? emailFornecedorControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeFornecedorController?.dispose();
    cNPJFornecedorController?.dispose();
    emailFornecedorController?.dispose();
  }

  /// Additional helper methods are added here.

}
