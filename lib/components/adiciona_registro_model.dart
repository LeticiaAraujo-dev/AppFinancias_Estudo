import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'adiciona_registro_widget.dart' show AdicionaRegistroWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdicionaRegistroModel extends FlutterFlowModel<AdicionaRegistroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AddDesc widget.
  FocusNode? addDescFocusNode;
  TextEditingController? addDescTextController;
  String? Function(BuildContext, String?)? addDescTextControllerValidator;
  String? _addDescTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Descrição do gasto... is required';
    }

    return null;
  }

  // State field(s) for AddValor widget.
  FocusNode? addValorFocusNode;
  TextEditingController? addValorTextController;
  String? Function(BuildContext, String?)? addValorTextControllerValidator;
  String? _addValorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Formato deve ser 00.00';
    }

    return null;
  }

  // State field(s) for AddCat widget.
  String? addCatValue;
  FormFieldController<String>? addCatValueController;
  // State field(s) for AddTipo widget.
  String? addTipoValue;
  FormFieldController<String>? addTipoValueController;

  @override
  void initState(BuildContext context) {
    addDescTextControllerValidator = _addDescTextControllerValidator;
    addValorTextControllerValidator = _addValorTextControllerValidator;
  }

  @override
  void dispose() {
    addDescFocusNode?.dispose();
    addDescTextController?.dispose();

    addValorFocusNode?.dispose();
    addValorTextController?.dispose();
  }
}
