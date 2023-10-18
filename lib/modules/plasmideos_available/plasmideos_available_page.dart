import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/free_vectors_available.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/global_widgets/footer.dart';
import 'package:genone_web_flutter/modules/plasmideos_available/plasmideos_available_controller.dart';
import 'package:genone_web_flutter/utils/app_images.dart';
import 'package:get/get.dart';

class PlasmideosAvailablePage extends StatelessWidget {
  const PlasmideosAvailablePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetX<PlasmideosAvailableController>(
      init: PlasmideosAvailableController(),
      builder: (ctrl) {
        return Scaffold(
          appBar: AppBarCustomized.appBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 1300),
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Pag. ${ctrl.indexList.value + 1} of ${ctrl.freeVectorsAvailableLists.length}'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.arrow_back_ios, color: Colors.blue, size: 20),
                                  onPressed: () {
                                    if(ctrl.indexList.value > 0) {
                                      ctrl.indexList.value--;
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.arrow_forward_ios, color: Colors.blue, size: 20),
                                  onPressed: () {
                                    if(ctrl.indexList.value < ctrl.freeVectorsAvailableLists.length - 1) {
                                      ctrl.indexList.value++;
                                    }
                                  },
                                ),
                                const SizedBox(width: 40),
                                const Column(
                                  children: [
                                    AutoSizeText(
                                      "VETORES DISPONÍVEIS PARA CLONAGENS",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        DataTable(
                          headingTextStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          border: TableBorder.all(color: Colors.blue),
                          headingRowColor: MaterialStateColor.resolveWith(
                              (states) => Colors.blue[200]!),
                          columns: <DataColumn>[
                            for (String nameColum in ctrl.nameColumList)
                              DataColumn(
                                label: Text(
                                  nameColum,
                                  style: const TextStyle(
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                          ],
                          rows: <DataRow>[
                            for (FreeVectorsAvailable vector
                                in ctrl.freeVectorsAvailableLists[
                                    ctrl.indexList.value])
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text(vector.nameVector)),
                                  DataCell(Text(vector.application)),
                                  DataCell(Text(vector.resistance)),
                                  DataCell(Text(vector.promoter)),
                                  DataCell(Text(vector.tagsN)),
                                  DataCell(Text(vector.tagsC)),
                                  DataCell(Text(vector.cleavage)),
                                  DataCell(Text(vector.sequence)),
                                ],
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Footer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
