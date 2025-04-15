import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'logggiiin_widget.dart' show LogggiiinWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogggiiinModel extends FlutterFlowModel<LogggiiinWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for nomecreate widget.
  FocusNode? nomecreateFocusNode;
  TextEditingController? nomecreateTextController;
  String? Function(BuildContext, String?)? nomecreateTextControllerValidator;
  // State field(s) for emailcreate widget.
  FocusNode? emailcreateFocusNode;
  TextEditingController? emailcreateTextController;
  String? Function(BuildContext, String?)? emailcreateTextControllerValidator;
  // State field(s) for passwordcreate widget.
  FocusNode? passwordcreateFocusNode;
  TextEditingController? passwordcreateTextController;
  late bool passwordcreateVisibility;
  String? Function(BuildContext, String?)?
      passwordcreateTextControllerValidator;
  // State field(s) for confim_passwordcreate widget.
  FocusNode? confimPasswordcreateFocusNode;
  TextEditingController? confimPasswordcreateTextController;
  late bool confimPasswordcreateVisibility;
  String? Function(BuildContext, String?)?
      confimPasswordcreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordcreateVisibility = false;
    confimPasswordcreateVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    nomecreateFocusNode?.dispose();
    nomecreateTextController?.dispose();

    emailcreateFocusNode?.dispose();
    emailcreateTextController?.dispose();

    passwordcreateFocusNode?.dispose();
    passwordcreateTextController?.dispose();

    confimPasswordcreateFocusNode?.dispose();
    confimPasswordcreateTextController?.dispose();
  }
}
