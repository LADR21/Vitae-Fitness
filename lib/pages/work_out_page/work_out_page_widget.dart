import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import 'work_out_page_model.dart';
export 'work_out_page_model.dart';

class WorkOutPageWidget extends StatefulWidget {
  const WorkOutPageWidget({super.key});

  @override
  State<WorkOutPageWidget> createState() => _WorkOutPageWidgetState();
}

class _WorkOutPageWidgetState extends State<WorkOutPageWidget> {
  late WorkOutPageModel _model;
  late int index = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkOutPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  void _incremento() {
    setState(() {
      index++;
    });
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
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'User',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/gy-removebg-preview.png',
                  width: 227,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Text(
                      'WorkOut Plan',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        dateTimeFormat("MMMEd", _model.datePicked),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 20,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          final _datePickedDate = await showDatePicker(
                            context: context,
                            initialDate: getCurrentTimestamp,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2050),
                            builder: (context, child) {
                              return wrapInMaterialDatePickerTheme(
                                context,
                                child!,
                                headerBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                headerForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                headerTextStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 32,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                pickerBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                pickerForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                selectedDateTimeBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                selectedDateTimeForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                actionButtonForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16, 0, 16, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: const Color(0x004B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                ],
              ),
              Expanded(
                child: StreamBuilder<List<WorkPlanRecord>>(
                  stream: queryWorkPlanRecord(
                    queryBuilder: (workPlanRecord) => workPlanRecord.where(
                      'Date',
                      isEqualTo: dateTimeFormat("MMMEd", _model.datePicked),
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    // Verifica si hay datos
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const SizedBox(
                          width: 398,
                          height: 476,
                          child:
                              Center(child: Text('No hay datos disponibles')));
                    }

                    List<WorkPlanRecord> containerWorkPlanRecordList =
                        snapshot.data!;

                    // Asegúrate de que el índice no exceda la longitud de la lista
                    if (index >= containerWorkPlanRecordList.length) {
                      index =
                          0; // O puedes manejarlo de otra manera, como mostrar un mensaje
                    }
                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(),
                      alignment: const AlignmentDirectional(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Text(
                              containerWorkPlanRecordList[index].name,
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
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: containerWorkPlanRecordList[index]
                                      .description,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 26,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/dumbbell-fitness-and-bodybuilder-black-man-with-royalty-free-image-1684408420.jpg',
                                      width: 265,
                                      height: 328,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    _incremento();
                                  },
                                  text: '',
                                  icon: const Icon(
                                    Icons.navigate_next,
                                    size: 50,
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
                                          color: const Color(0xFF0A0A0A),
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      context.pushNamed('ObjectPageC');
                    },
                    text: 'Menu',
                    icon: const Icon(
                      Icons.menu,
                      size: 26,
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
                                color: const Color(0xFF0F0F0F),
                                fontSize: 20,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      context.pushNamed('FoodPlanPage');
                    },
                    text: 'Food Plan',
                    icon: const Icon(
                      Icons.food_bank,
                      size: 36,
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
                                color: const Color(0xFF0F0F0F),
                                fontSize: 20,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
