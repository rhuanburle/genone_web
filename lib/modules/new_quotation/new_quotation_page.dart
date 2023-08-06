import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_controller.dart';
import 'package:genone_web_flutter/modules/new_quotation/widgets/cell_spreadsheet.dart';
import 'package:genone_web_flutter/modules/new_quotation/widgets/dropdown_widget.dart';
import 'package:genone_web_flutter/modules/new_quotation/widgets/text_field_customer.dart';
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
                    SizedBox(
                      width: 1100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 30,
                              width: 110,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                ),
                                onPressed: () {
                                  ctrl.addLine();
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.add),
                                    Text('Adicionar Linha', style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Text('** Sequência somente Letras Maiúsculas', style: TextStyle(fontSize: 10)),
                        ],
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
                        child: Column(
                          children: [
                            Flexible(
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
                            ),
                            if(ctrl.validateConcluded.value)
                            for(var line in ctrl.linesBudgetsList)
                              SizedBox(
                                height: 25,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: ctrl.worksheetTitlesList.length,
                                  itemBuilder: (context, i) {
                                    return Container(
                                        alignment: Alignment.center,
                                        height: 25,
                                        width: 100,
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                          color: line.sequenceValid.value ? Colors.white : Colors.red[100],
                                          border: Border.all(color: Colors.grey[300]!),
                                        ),
                                        child: !ctrl.columnsSelectOption.contains(ctrl.worksheetTitlesList[i]) ?
                                      TextFieldCustomer(line: line, text: ctrl.worksheetTitlesList[i])
                                      : DropdownWidget(line: line, text: ctrl.worksheetTitlesList[i]),
                                    );
                                  },
                                ),
                              ),
                          ],
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 500,
                      alignment: Alignment.center,
                      child: Wrap(
                        spacing: 50,
                        runSpacing: 20,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 160,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                              ),
                              onPressed: () {
                                ctrl.validateSequential();
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.check),
                                  Text('Validar Sequência'),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 160,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                              ),
                              onPressed: () {
                                print(ctrl.linesBudgetsList);
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.send),
                                  Text('Enviar Cotação'),
                                ],
                              ),
                            ),
                          ),
                        ],
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
