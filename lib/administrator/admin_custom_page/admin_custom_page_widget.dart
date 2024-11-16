import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';

import 'admin_custom_page_model.dart';
export 'admin_custom_page_model.dart';

class AdminCustomPageWidget extends StatefulWidget {
  const AdminCustomPageWidget({
    super.key,
    this.email,
  });

  final String? email;

  @override
  State<AdminCustomPageWidget> createState() => _AdminCustomPageWidgetState();
}

class _AdminCustomPageWidgetState extends State<AdminCustomPageWidget> {
  late AdminCustomPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminCustomPageModel());
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
        body: SafeArea(
          top: true,
          child: Column(
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
                      onPressed: () {
                        context.pushNamed('User');
                      },
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
                                  fontFamily: 'Plus Jakarta Sans',
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
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '',
                        icon: const Icon(
                          Icons.question_mark,
                          color: Color(0xFF090909),
                          size: 30,
                        ),
                        options: FFButtonOptions(
                          height: 43,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16, 0, 16, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: const Color(0x00FFFFFF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
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
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Text(
                        'Customized',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: Text(
                        'User',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 28,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    StreamBuilder<List<UserRecord>>(
                      stream: queryUserRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<UserRecord> dropDownUserRecordList =
                            snapshot.data!;

                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: dropDownUserRecordList
                              .map((e) => e.name)
                              .toList(),
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue = val),
                          width: 392,
                          height: 58,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Select User...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 8,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12, 0, 12, 0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: StreamBuilder<List<UserRecord>>(
                    stream: queryUserRecord(
                      queryBuilder: (userRecord) => userRecord.where(
                        'Name',
                        isEqualTo: _model.dropDownValue,
                      ),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<UserRecord> containerUserRecordList = snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerUserRecord =
                          containerUserRecordList.isNotEmpty
                              ? containerUserRecordList.first
                              : null;

                      return Container(
                        width: 398,
                        height: 546,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        alignment: const AlignmentDirectional(0, 0),
                        child: Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/man-person-icon.png',
                                        width: 167,
                                        height: 177,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1, 0),
                                        child: Text(
                                          'Monthly Payment',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 24,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          containerUserRecord?.membership,
                                          'Not Membership',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: const Text(
                                                        'Mountly Payment'),
                                                    content:
                                                        const Text('1 Mounth'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                false),
                                                        child: const Text(
                                                            'Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                true),
                                                        child: const Text(
                                                            'Confirm'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ) ??
                                              false;

                                      await containerUserRecord!.reference
                                          .update(createUserRecordData(
                                        membership: '1 Mounth',
                                      ));
                                    },
                                    text: '',
                                    icon: const Icon(
                                      Icons.add_circle,
                                      color: Color(0xFF181818),
                                      size: 30,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      color: const Color(0x006F61EF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.white,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        context.pushNamed('AdminFoodPlanPage');
                                      },
                                      text: 'Add Food Plan',
                                      icon: const Icon(
                                        Icons.add_circle,
                                        size: 20,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40,
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(16, 0, 16, 0),
                                        iconPadding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 0),
                                        color: const Color(0x004B39EF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF0B0B0B),
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        context.pushNamed('AdminRoutinesPage');
                                      },
                                      text: 'Add Routines ',
                                      icon: const Icon(
                                        Icons.add_circle,
                                        size: 20,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40,
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(16, 0, 16, 0),
                                        iconPadding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 0),
                                        color: const Color(0x004B39EF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF0B0B0B),
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  /*Accept
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Accept',
                      icon: const Icon(
                        Icons.check_circle,
                        size: 20,
                      ),
                      options: FFButtonOptions(
                        height: 40,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: const Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF0B0B0B),
                                  fontSize: 20,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  */
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () {
                        context.pushNamed('AdminObjectPage');
                      },
                      text: 'Menu',
                      icon: const Icon(
                        Icons.menu,
                        size: 20,
                      ),
                      options: FFButtonOptions(
                        height: 40,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: const Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF0B0B0B),
                                  fontSize: 20,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  /* New User
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'New User',
                      icon: const Icon(
                        Icons.person_add,
                        size: 20,
                      ),
                      options: FFButtonOptions(
                        height: 40,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: const Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF0B0B0B),
                                  fontSize: 20,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  */
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
