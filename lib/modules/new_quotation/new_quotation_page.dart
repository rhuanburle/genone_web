import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_controller.dart';
import 'package:genone_web_flutter/modules/new_quotation/widgets/cell_spreadsheet.dart';
import 'package:get/get.dart';

class NewQuotationPage extends StatelessWidget {
  const NewQuotationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery
        .of(context)
        .size
        .width;
    final ctrl = Get.put(NewQuotationController());
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          constraints: const BoxConstraints(maxWidth: 1366),
          width: widthMedia,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'Nova Cotação',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RobotoMono',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 500,
                        child: GridView(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 11,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0,
                            childAspectRatio: 1.0,
                          ),
                          scrollDirection: Axis.vertical,
                          children: [
                            Column(
                              children: const [
                                CellSpreadsheet(colorDif: false, text: "Nome"),
                              ],
                            ),
                            const CellSpreadsheet(
                                colorDif: true,
                                text: "Sítios de Restrição 5'"),
                            const CellSpreadsheet(
                                colorDif: false, text: "Sequência"),
                            const CellSpreadsheet(
                                colorDif: true,
                                text: "Sítios de Restrição 3'"),
                            const CellSpreadsheet(colorDif: false, text: "Vetor"),
                            const CellSpreadsheet(colorDif: true, text: "DNA/PTN"),
                            const CellSpreadsheet(
                                colorDif: false,
                                text: "Quantidade a ser Entregue"),
                            const CellSpreadsheet(
                                colorDif: true, text: "Tipo de Preparação"),
                            const CellSpreadsheet(
                                colorDif: false, text: "Otimizar"),
                            const CellSpreadsheet(colorDif: true, text: "Espécie"),
                            const CellSpreadsheet(
                                colorDif: false,
                                text: "Sítios de Restrição para evitar"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
