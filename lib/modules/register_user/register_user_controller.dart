import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/user_register.dart';
import 'package:genone_web_flutter/data/repository/repository_api.dart';
import 'package:genone_web_flutter/global_widgets/dialog_general.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';
import 'package:search_cep/search_cep.dart';

class RegisterUserController extends GetxController with AppUtil {
  RxBool isPix = false.obs;
  RxBool isBankSlip = false.obs;
  RxBool isBankTransfer = false.obs;
  RxBool isCpf = true.obs;
  List<String> paymentMethod = [];
  final data = Get.arguments;
  String email = '';
  String password = '';
  final repository = Get.find<RepositoryApi>();

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

  late UserRegister userSendInfo;

  @override
  void onInit() {
    email = data['email'];
    password = data['password'];
    super.onInit();
  }

  sendForm(context) async {
    bool isCreateSuccess = false;
    try {
      if(validateFields()) {
        await getPaymentMethods();
        isCreateSuccess = await buildModelUserInfo() ?? false;
      }

      repository.signUp(userSendInfo);

      if(isCreateSuccess) {
        getShowDialog(context);
      }
    } catch (e) {
      loggerError(message: e);
    }
  }

  buildModelUserInfo() {
    try {
      userSendInfo = UserRegister(
        name: nameController.text,
        email: email,
        password: password,
        phone: phoneController.text,
        city: cityController.text,
        state: stateController.text,
        company: companyController.text,
        adress: addressController.text,
        zip: cepController.text,
        dateCreated: DateTime.now().toString(),
        dateUpdate: DateTime.now().toString(),
        paymentMethods: paymentMethod.first,
        cpf: isCpf.value ? cnpjCpfController.text : '',
        cnpj: !isCpf.value ? cnpjCpfController.text : '',
        birthDate: '1900-01-01',
        district: districtController.text,
        complement: complementController.text,
        comments: commentsController.text,
      );
      return true;
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
