import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterUserController extends GetxController {
  RxBool isPix = false.obs;
  RxBool isBankSlip = false.obs;
  RxBool isBankTransfer = false.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cnpjCpfController = TextEditingController();
  TextEditingController cepController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController complementController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController commentsController = TextEditingController();


}