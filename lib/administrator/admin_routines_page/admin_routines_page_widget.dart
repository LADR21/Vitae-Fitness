import 'package:working_planning/backend/backend.dart';
import 'package:working_planning/flutter_flow/upload_data.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import 'admin_routines_page_model.dart';
export 'admin_routines_page_model.dart';

class AdminRoutinesPageWidget extends StatefulWidget {
  const AdminRoutinesPageWidget({super.key});

  @override
  State<AdminRoutinesPageWidget> createState() =>
      _AdminRoutinesPageWidgetState();
}

class _AdminRoutinesPageWidgetState extends State<AdminRoutinesPageWidget> {
  late AdminRoutinesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminRoutinesPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: const AlignmentDirectional(1, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FFButtonWidget(
                    onPressed: () {},
                    text: '',
                    icon: const Icon(
                      Icons.person,
                      size: 30,
                    ),
                    options: FFButtonOptions(
                      height: 40,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: const Color(0x00FFFFFF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1, 0),
                    child: FFButtonWidget(
                      onPressed: () {},
                      text: '',
                      icon: const Icon(
                        Icons.question_mark,
                        color: Color(0xFF090909),
                        size: 30,
                      ),
                      options: FFButtonOptions(
                        height: 43,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: const Color(0x00FFFFFF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/gy-removebg-preview.png',
                        width: 227,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Container(
                        width: 398,
                        height: 458,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        alignment: const AlignmentDirectional(0, 0),
                        child: Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: Text(
                                  'Routines',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              // Generated code for this Row Widget...
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Text(
                                      'Add Food Plan',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 20,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                          "MMMEd", _model.datePicked),
                                      '20',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontSize: 20,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      final _datePickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: getCurrentTimestamp,
                                        lastDate: DateTime(2050),
                                        builder: (context, child) {
                                          return wrapInMaterialDatePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 32,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 24,
                                          );
                                        },
                                      );
                                      if (_datePickedDate != null) {
                                        safeSetState(() {
                                          _model.datePicked = DateTime(
                                            _datePickedDate.year,
                                            _datePickedDate.month,
                                            _datePickedDate.day,
                                          );
                                        });
                                      }
                                    },
                                    text: '',
                                    icon: const Icon(
                                      Icons.calendar_month,
                                      size: 30,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 16, 0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      color: const Color(0x004B39EF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: const Color(0xFF0B0B0B),
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width: 200,
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Name Exercise ',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width: 200,
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Description Exercise',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.memory(
                                      _model.uploadedLocalFile.bytes ??
                                          Uint8List.fromList([]),
                                      width: 180,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await WorkPlanRecord.collection.doc().set(
                                          createWorkPlanRecordData(
                                              date: dateTimeFormat(
                                                  "MMMEd", _model.datePicked),
                                              name: _model.textController1.text,
                                              description:
                                                  _model.textController2.text,
                                              media: _model
                                                  .uploadedLocalFile.name));
                                      _model.textController1.text = ('');
                                      _model.textController2.text = ('');
                                    },
                                    text: '',
                                    icon: const Icon(
                                      Icons.add_circle_outlined,
                                      size: 26,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 16, 0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      color: const Color(0x004B39EF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: const Color(0xFF151414),
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {},
                                        text: 'Accept',
                                        icon: const Icon(
                                          Icons.check_circle,
                                          size: 20,
                                        ),
                                        options: FFButtonOptions(
                                          height: 52,
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(16, 0, 16, 0),
                                          iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                          color: const Color(0x004B39EF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    color:
                                                        const Color(0xFF101010),
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {},
                                        text: 'Delete',
                                        icon: const Icon(
                                          Icons.delete,
                                          size: 20,
                                        ),
                                        options: FFButtonOptions(
                                          height: 52,
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(16, 0, 16, 0),
                                          iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                          color: const Color(0x004B39EF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    color:
                                                        const Color(0xFF101010),
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          context.pushNamed('AdminObjectPage');
                                        },
                                        text: 'Menu',
                                        icon: const Icon(
                                          Icons.menu,
                                          size: 20,
                                        ),
                                        options: FFButtonOptions(
                                          height: 52,
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(16, 0, 16, 0),
                                          iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                          color: const Color(0x004B39EF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    color:
                                                        const Color(0xFF101010),
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Generated code for this Button Widget...
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () async {
                      final selectedMedia =
                          await selectMediaWithSourceBottomSheet(
                        context: context,
                        allowPhoto: true,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        safeSetState(() => _model.isDataUploading = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();
                        } finally {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          _model.isDataUploading = false;
                        }
                        if (selectedUploadedFiles.length ==
                            selectedMedia.length) {
                          safeSetState(() {
                            _model.uploadedLocalFile =
                                selectedUploadedFiles.first;
                          });
                          showUploadMessage(context, 'Success!');
                        } else {
                          safeSetState(() {});
                          showUploadMessage(context, 'Failed to upload data');
                          return;
                        }
                      }
                    },
                    text: 'Add sample videos',
                    options: FFButtonOptions(
                      height: 52,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: const Color(0x004B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: const Color(0xFF1304FF),
                                letterSpacing: 0.0,
                                decoration: TextDecoration.underline,
                              ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
