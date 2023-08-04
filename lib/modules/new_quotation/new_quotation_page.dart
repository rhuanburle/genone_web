import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_controller.dart';
import 'package:genone_web_flutter/modules/new_quotation/widgets/cell_spreadsheet.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class NewQuotationPage extends StatelessWidget {
  const NewQuotationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(NewQuotationController());
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: LayoutBuilder(
        builder: (BuildContext, constraints) {
          return SingleChildScrollView(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                constraints: const BoxConstraints(maxWidth: 1366),
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
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Obx(() {
                      return Container(
                        height: ctrl.heightSpreadsheet.value,
                        width: 1100,
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
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ctrl.worksheetTitlesList.length,
                          itemBuilder: (context, i) {
                            return SizedBox(
                              width: 100,
                              child: CellSpreadsheet(
                                colorDif: ctrl.colorDifList[i],
                                text: ctrl.worksheetTitlesList[i],
                              ),
                            );
                          },
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          ctrl.numberLines.value++;
                          ctrl.heightSpreadsheet.value += 25.0;
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.add),
                            Text('Adicionar Linha'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
