import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/requests/user_request.dart';
import 'package:genone_web_flutter/global_widgets/dialog_general.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:search_cep/search_cep.dart';
import 'package:uuid/uuid.dart';

class RegisterUserController extends GetxController with AppUtil {
  RxBool isPix = false.obs;
  RxBool isBankSlip = false.obs;
  RxBool isBankTransfer = false.obs;
  RxBool isCpf = true.obs;
  List<String> paymentMethod = [];
  final storage = GetStorage();

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

  late UserRequest userSendInfo;

  sendForm(context) async {
    bool isCreateSuccess = false;
    try {
      if(validateFields()) {
        await getPaymentMethods();
        await buildModelUserInfo();
      }
      if(isCreateSuccess) {
        getShowDialog(context);
      }

    } catch (e) {
      loggerError(message: e);
    }
  }

  var uuid = const Uuid();
  buildModelUserInfo() {
    try {
      var id = uuid.v4();
      userSendInfo = UserRequest(
        name: nameController.text,
        phone: phoneController.text,
        city: cityController.text,
        state: stateController.text,
        company: companyController.text,
        id: storage.read('userId'),
        email: storage.read('userEmail'),
        streetAddress: addressController.text,
        zipCode: cepController.text,
        dateCreated: DateTime.now().toString(),
        dateUpdated: DateTime.now().toString(),
        paymentMethods: paymentMethod,
      );
    } catch (e) {
      loggerError(message: e);
    }
  }

  getPaymentMethods() async {
    if (isPix.value == true) {
      paymentMethod.add('PIX');
    }
    if (isBankSlip.value == true) {
      paymentMethod.add('BOLETO');
    }
    if (isBankTransfer.value == true) {
      paymentMethod.add('TRANSFERENCIA');
    }
  }

  void searchCep() async {
    final viaCepSearchCep = ViaCepSearchCep();
    String _cep = cepController.text.replaceAll('-', '');
    final infoCepJSON = await viaCepSearchCep.searchInfoByCep(cep: _cep);
    try {
      infoCepJSON.forEach((r) {
        addressController.text = r.logradouro.toString().toUpperCase();
        districtController.text = r.bairro.toString().toUpperCase();
        cityController.text = r.localidade.toString().toUpperCase();
        stateController.text = r.uf.toString().toUpperCase();
        countryController.text = "BRASIL";
      });
    } catch (e) {
      print(e);
    }
  }

  bool validateFields() {
    if (nameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        companyController.text.isEmpty ||
        phoneController.text.isEmpty ||
        cnpjCpfController.text.isEmpty ||
        cepController.text.isEmpty ||
        addressController.text.isEmpty ||
        districtController.text.isEmpty ||
        cityController.text.isEmpty ||
        stateController.text.isEmpty ||
        countryController.text.isEmpty) {
      showRawSnackbar(title: 'Atenção', message: 'Preencha todos os campos obrigatórios');
      return false;
    } else if (isCpf.value == true && cnpjCpfController.text.length < 11) {
      showRawSnackbar(title: 'Atenção', message: 'CPF inválido');
      return false;
    } else if (isCpf.value == false && cnpjCpfController.text.length < 14) {
      showRawSnackbar(title: 'Atenção', message: 'CNPJ inválido');
      return false;
    } else {
      return true;
    }
  }

  getShowDialog(BuildContext context) async {
    await showDialog(context: context, builder: (context) => const DialogGeneral(title: "Cadastro Realizado", message: "Você sera direcionado para a pagina principal"));
    Get.toNamed(AppRoutes.homeUserPage);
  }
}
