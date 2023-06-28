import 'package:genone_web_flutter/modules/new_quotation/new_quotation_controller.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_repository.dart';
import 'package:get/get.dart';

class NewQuotationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewQuotationController>(
      () => NewQuotationController(),
    );
    Get.lazyPut<NewQuotationRepository>(
          () => NewQuotationRepository(),
    );

  }
}