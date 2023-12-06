import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_copy_model.dart';
export 'home_copy_model.dart';

class HomeCopyWidget extends StatefulWidget {
  const HomeCopyWidget({
    Key? key,
    this.apagarSoliCol,
  }) : super(key: key);

  final DocumentReference? apagarSoliCol;

  @override
  _HomeCopyWidgetState createState() => _HomeCopyWidgetState();
}

class _HomeCopyWidgetState extends State<HomeCopyWidget> {
  late HomeCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).lineColor,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 1300.0,
                    height: 54.5,
                    decoration: BoxDecoration(
                      color: Color(0xFF41AD59),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'E-Recycle',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 25.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 497.8,
                              height: 705.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF7CC390),
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: Color(0xFF324B39),
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 5.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Sobre  Nós',
                                      icon: Icon(
                                        Icons.info,
                                        size: 25.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: 470.0,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF7CC390),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 30.0,
                                            ),
                                        elevation: 1.0,
                                        borderSide: BorderSide(
                                          color: Color(0xFF324B39),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 15.0, 0.0),
                                    child: Text(
                                      'A E-Recyclo é uma empresa especializada em reciclagem de lixo eletrônico, que tem como objetivo ajudar na preservação do meio ambiente e na promoção da sustentabilidade.\nCom a constante evolução tecnológica, a quantidade de lixo eletrônico gerado tem aumentado significativamente ao longo dos anos, tornando-se um grande desafio para a sociedade. A E-Recyclo surge como uma solução para esse problema, oferecendo serviços de coleta, transporte e reciclagem de lixo eletrônico.\nA empresa conta com profissionais capacitados e equipamentos modernos para garantir um processo de reciclagem eficiente e seguro. O lixo eletrônico coletado é encaminhado para um centro de triagem, onde é separado por tipo de material e encaminhado para a reciclagem.\nDentre os materiais recicláveis, destacam-se metais como o cobre, o alumínio e o ferro, que podem ser reutilizados na fabricação de novos produtos. Além disso, a E-Recyclo também promove a reutilização de componentes eletrônicos em bom estado, que são disponibilizados para empresas e organizações que precisam de equipamentos eletrônicos.\nA E-Recyclo segue todas as normas e legislações ambientais, garantindo um processo de reciclagem responsável e sustentável. A empresa é certificada pelos órgãos competentes e realiza constantes treinamentos e capacitações para seus colaboradores, visando sempre aprimorar a qualidade de seus serviços.\nAo escolher a E-Recyclo para reciclar seu lixo eletrônico, além de estar contribuindo para a preservação do meio ambiente, você também estará promovendo a inclusão social, já que a empresa realiza a capacitação de jovens em situação de vulnerabilidade social para trabalhar em seus projetos de reciclagem.\nEm resumo, a E-Recyclo é uma empresa comprometida com a preservação do meio ambiente e com a promoção da sustentabilidade, que oferece serviços de reciclagem de lixo eletrônico de forma eficiente e responsável, garantindo a destinação correta dos resíduos e contribuindo para um futuro mais sustentável.',
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 15.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 15.0),
                              child: Container(
                                width: 768.5,
                                height: 705.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC7E3BD),
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 15.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 35.0, 0.0, 5.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Pontos de Coleta',
                                              icon: FaIcon(
                                                FontAwesomeIcons.mapMarkedAlt,
                                                size: 30.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 350.0,
                                                height: 90.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC7E3BD),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 22.0,
                                                        ),
                                                elevation: 1.0,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF324B39),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 35.0, 0.0, 5.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Solicitar ponto de Coleta',
                                              icon: Icon(
                                                Icons.phonelink_ring_sharp,
                                                size: 30.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 350.0,
                                                height: 90.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC7E3BD),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 22.0,
                                                        ),
                                                elevation: 1.0,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF324B39),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 35.0, 0.0, 5.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Solicitar Coleta',
                                              icon: FaIcon(
                                                FontAwesomeIcons.caravan,
                                                size: 30.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 350.0,
                                                height: 90.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC7E3BD),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 22.0,
                                                        ),
                                                elevation: 1.0,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF324B39),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 35.0, 0.0, 5.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Inf. de Reciclagem',
                                              icon: FaIcon(
                                                FontAwesomeIcons.book,
                                                size: 30.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 350.0,
                                                height: 90.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC7E3BD),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 22.0,
                                                        ),
                                                elevation: 1.0,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF324B39),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 35.0, 0.0, 5.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Gerenciar Web',
                                              icon: Icon(
                                                Icons.settings_sharp,
                                                size: 30.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 350.0,
                                                height: 90.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC7E3BD),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 22.0,
                                                        ),
                                                elevation: 1.0,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF324B39),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 100.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.asset(
                                            'assets/images/Nossa_logo_1.png',
                                            width: 368.0,
                                            height: 274.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
