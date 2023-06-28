import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/modules/home/widgets/footer.dart';
import 'package:genone_web_flutter/modules/home_user/home_user_controller.dart';
import 'package:genone_web_flutter/modules/home_user/widgets/options_block_widget.dart';
import 'package:genone_web_flutter/modules/home_user/widgets/personal_data_widget.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:genone_web_flutter/utils/app_images.dart';
import 'package:get/get.dart';

class HomeUserPage extends StatelessWidget {
  const HomeUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<HomeUserController>();
    final widthMedia = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: SingleChildScrollView(
        child: Center(
          child: Obx(() {
            return Container(
              constraints: const BoxConstraints(maxWidth: 1366),
              child: ctrl.isInitLoading.value
                  ? Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Column(
                        children: const [
                          Text(
                            "Loading...",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              width: 70,
                              height: 70,
                              child: CircularProgressIndicator()),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            if (widthMedia > 1080)
                              Image.asset(
                                AppImages.logoGenoneSmall,
                                width: widthMedia >= 1366 ? 500 : widthMedia <= 1086 ? 300 : widthMedia * 0.3,
                                color: Colors.blue,
                              ),
                            Column(
                              crossAxisAlignment: widthMedia > 1080 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 50, bottom: 10),
                                  child: Text(
                                    "Bem vindo Rhuan!",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Wrap(
                                  spacing: 20,
                                  runSpacing: 20,
                                  children: const [
                                    PersonalDataWidget(
                                      name: "Dados Pessoais",
                                      icon: Icons.person_pin,
                                      route: "/dados_pessoais",
                                    ),
                                    PersonalDataWidget(
                                      name: "Endereços Cadastrados",
                                      icon: Icons.edit_location_alt_outlined,
                                      route: "/enderecos",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                const Text("Gerenciamento de Pedidos",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Wrap(
                                  spacing: 20,
                                  runSpacing: 20,
                                  children: const [
                                    OptionsBlocWidget(
                                      name: "Pedidos Online",
                                      icon: Icons.shopping_cart_outlined,
                                      route: AppRoutes.newQuotationPage,
                                    ),
                                    OptionsBlocWidget(
                                      name: "Minhas Cotações",
                                      icon: Icons.note_alt_outlined,
                                      route: "/pedidos_online",
                                    ),
                                    OptionsBlocWidget(
                                      name: "Meus Pedidos",
                                      icon: Icons.sticky_note_2_outlined,
                                      route: "/pedidos_online",
                                    ),
                                    OptionsBlocWidget(
                                      name: "Meus Vetores",
                                      icon: Icons.content_paste_search_outlined,
                                      route: "/pedidos_online",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 100),
                              ],
                            ),
                          ],
                        ),
                        const Footer(),
                      ],
                    ),
            );
          }),
        ),
      ),
    );
  }
}
