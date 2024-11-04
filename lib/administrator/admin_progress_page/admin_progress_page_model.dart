import 'package:working_planning/backend/schema/progress_record.dart';

import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_progress_page_widget.dart' show AdminProgressPageWidget;
import 'package:flutter/material.dart';

class AdminProgressPageModel extends FlutterFlowModel<AdminProgressPageWidget> {
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProgressRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
