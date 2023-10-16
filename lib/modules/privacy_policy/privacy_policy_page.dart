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
                constraints: const BoxConstraints(maxWidth: 1100),
                padding: const EdgeInsets.all(40),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: AutoSizeText(
                        "POLÍTICA DE PRIVACIDADE",
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    AutoSizeText(
                      "A GenOne Genômica e Biotecnologia Ltda. (“GenOne”) está comprometida em proteger a privacidade dos usuários do seu site. Esta Política de Privacidade (“Política”) descreve como a GenOne coleta, usa, compartilha e protege as informações pessoais dos usuários do site. Ao acessar ou usar o site, você concorda com os termos desta Política. Se você não concorda com os termos desta Política, não acesse ou use o site.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    AutoSizeText(
                      "COMENTÁRIOS",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    AutoSizeText(
                      "Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário. ",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    AutoSizeText(
                      "MÍDIA",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    AutoSizeText(
                      "Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    AutoSizeText(
                      "FORMULÁRIOS DE CONTATO COOKIES",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    AutoSizeText(
                      "Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus dados novamente quando fizer outro comentário. Estes cookies duram um ano.Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar “Lembrar-me”, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    AutoSizeText(
                      "MÍDIA INCORPORADA DE OUTROS SITES",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    AutoSizeText(
                      "Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    AutoSizeText(
                      "COM QUEM PARTILHAMOS SEUS DADOS E POR QUANTO TEMPO MANTEMOS OS SEUS DADOS",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    AutoSizeText(
                      "Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    AutoSizeText(
                      "QUAIS OS SEUS DIREITOS SOBRE SEUS DADOS",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    AutoSizeText(
                      "Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    AutoSizeText(
                      "PARA ONDE ENVIAMOS SEUS DADOS",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    AutoSizeText(
                      "Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 16,
                      ),
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
