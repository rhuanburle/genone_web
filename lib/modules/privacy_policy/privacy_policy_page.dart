import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/global_widgets/footer.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 1366),
                padding: const EdgeInsets.all(40),
                child: const Column(
                  children: [
                    AutoSizeText(
                      "POLÍTICA DE PRIVACIDADE",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 30),
                    AutoSizeText(
                      "A GenOne Genômica e Biotecnologia Ltda. (“GenOne”) está comprometida em proteger a privacidade dos usuários do seu site. Esta Política de Privacidade (“Política”) descreve como a GenOne coleta, usa, compartilha e protege as informações pessoais dos usuários do site. Ao acessar ou usar o site, você concorda com os termos desta Política. Se você não concorda com os termos desta Política, não acesse ou use o site.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 30),
                    AutoSizeText(
                      "1. Informações coletadas",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 30),
                    AutoSizeText(
                      "A GenOne coleta informações pessoais sobre você quando você as fornece voluntariamente, como quando você se registra no site, envia um e-mail para a GenOne ou responde a uma pesquisa. As informações pessoais podem incluir seu nome, endereço de e-mail, número de telefone, endereço residencial e informações de cartão de crédito. A GenOne também pode coletar informações pessoais sobre você de outras fontes, como informações de terceiros.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 30),
                    AutoSizeText(
                      "2. Uso de informações coletadas",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 30),
                    AutoSizeText(
                      "A GenOne pode usar as informações pessoais que coleta de você para fornecer serviços e informações que você solicita, para processar e concluir transações, para enviar atualizações e informações sobre a GenOne e para enviar comunicações",
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
  }
}
