import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'editar_registro_widget.dart' show EditarRegistroWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarRegistroModel extends FlutterFlowModel<EditarRegistroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EditDesc widget.
  FocusNode? editDescFocusNode;
  TextEditingController? editDescTextController;
  String? Function(BuildContext, String?)? editDescTextControllerValidator;
  // State field(s) for EditValor widget.
  FocusNode? editValorFocusNode;
  TextEditingController? editValorTextController;
  String? Function(BuildContext, String?)? editValorTextControllerValidator;
  // State field(s) for EditCat widget.
  String? editCatValue;
  FormFieldController<String>? editCatValueController;
  // State field(s) for EditTipo widget.
  String? editTipoValue;
  FormFieldController<String>? editTipoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editDescFocusNode?.dispose();
    editDescTextController?.dispose();

    editValorFocusNode?.dispose();
    editValorTextController?.dispose();
  }
}
