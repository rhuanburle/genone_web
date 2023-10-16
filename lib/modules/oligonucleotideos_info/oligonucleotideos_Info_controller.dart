import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/global_vision.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class OligonucleotideosInfoController extends GetxController {
  Uri urlFormDownload = Uri.parse(
      'https://drive.google.com/u/0/uc?id=1PgAGxfV3AivfCuvnzHWncEy21XezljSd&export=download');

  List<GlobalVision> globalVisionList = [
    GlobalVision(id: 1, title: 'Qualidade', text: TextFlash().quality),
    GlobalVision(id: 2, title: 'Química', text: TextFlash().chemical),
    GlobalVision(id: 3, title: 'Ciclo da síntese de oligo', text: TextFlash().oligoSynthesisCycle),
    GlobalVision(id: 4, title: 'Escala, rendimento e método', text: "Escala, rendimento e método"),
    GlobalVision(id: 5, title: 'Armazenamento e estabilidade', text: TextFlash().quality),
    GlobalVision(id: 6, title: 'Documentação', text: TextFlash().quality),
    GlobalVision(id: 7, title: 'Modificações', text: TextFlash().quality),
    GlobalVision(id: 8, title: 'Purificações', text: TextFlash().quality),
    GlobalVision(id: 9, title: 'Oligos longos', text: TextFlash().quality),
  ];

  goDownloadForm() async {
    canLaunchUrl(urlFormDownload).then((value) async {
      if (value) {
        await launchUrl(urlFormDownload, mode: LaunchMode.platformDefault);
      } else {
        print('Could not launch $urlFormDownload');
      }
    });
  }
}

class TextFlash {
  String quality = """Um sistema de controle de qualidade rigoroso garante que você pode esperar oligonucleotídeos do mais alto padrão. Antes da síntese, todos os produtos químicos são verificados para atender aos nossos padrões de qualidade. Durante a síntese de oligo totalmente automatizada, todas as etapas da síntese são monitoradas por várias funções de controle em nossos sintetizadores de DNA. Desta forma podemos garantir a eficiência do acoplamento da síntese para atender às nossas demandas.

A síntese  de nossos oligos é garantida por rigoroso controle de qualidade. Todos os oligos são rotineiramente analisados ​​por medição de densidade óptica (OD). Além disso, os oligos são analisados ​​por eletroforese em gel e espectrometria de massa por cromatografia líquida (LCMS). Se os oligos não atenderem aos nossos requisitos, eles serão ressintetizados. O resultado de nosso rigoroso processo de controle de qualidade é um produto do mais alto padrão. Todos os oligos são fornecidos com nossa folha de especificações do produto, que inclui: % de conteúdo de GC, rendimento em nmol e μgram, OD, temperatura de fusão e peso molecular (MW).""";
  String chemical = """A Genone usa química de fosforamidita otimizada e reagentes da mais alta qualidade. Os programas de manuseio de pedidos e de síntese de oligo resultam em uma eficiência média de acoplamento acima de 99,5%. Com essa eficiência, somos capazes de sintetizar oligos de DNA de até 130 bases. A síntese é realizada em condições de baixo teor de sal, o que evita a necessidade de purificação adicional para a maioria das aplicações básicas de biologia molecular, como PCR, sequenciamento, estudos de hibridização e estudos antisense. Purificação adicional por HPLC, PAGE ou cartucho (OPC) está disponível para aplicações mais sensíveis.""";
  String oligoSynthesisCycle = """A síntese de oligonucleotídeos é realizada por uma adição em etapas de resíduos de nucleotídeos ao terminal 5 ‘da cadeia em crescimento até que a sequência desejada seja montada. Cada adição é chamada de ciclo sintético (figura 1) e consiste em quatro reações químicas: desbloqueio, acoplamento, cobertura e oxidação. No final da síntese, o oligo é liberado do suporte sólido e é eluído da coluna ou poço. Como suporte sólido, usamos esferas de poliestireno (PB).""";
  String scaleYieldMethod = """A GenOne oferece cinco escalas de síntese diferentes para oligos de DNA: 25 nmol, 50 nmol, 100 nmol, 200nmol e 1000 nmol. Para cada escala de síntese existe uma restrição quanto ao comprimento do oligo.

Escala de 25 nmol: 40 bases máx. comprimento

Escala de 50 nmol: 150 bases máx. comprimento

Escala de 100 nmol: 225 bases máx. comprimento

Escala de 200 nmol: 300 bases máx. comprimento

Escala de 1000 nmol: 300 bases máx. Comprimento

Para escalas maiores entre em contato: vendas@genone.com.br

Oligo padrão de rendimento garantido

Para oligos de DNA padrão não rotulados e não purificados por HPLC / PAGE de até 30 bases, garantimos um rendimento mínimo. No entanto, em muitos casos, você receberá mais do que o mínimo garantido!

Escala de 25 nmol: 5 nmol min. produção

Escala de 50 nmol: 10 nmol min. produção

Escala de 100 nmol: 25 nmol min. produção

Escala de 200 nmol: 50 nmol min. Produção

Escala de 1000 nmol: 250 nmol min. produção

Método

A GenOne possui dois protocolos de síntese: ‘Alta Pureza’ e ‘B-puro’. O protocolo usado depende do comprimento do oligo. Isso significa que os protocolos foram otimizados para determinados comprimentos de oligo.

O protocolo de alta pureza são usados para oligos entre 1 e 79 bases.

Todos os oligos de DNA com mais de 80 bases são sintetizados em nosso protocolo de síntese B-puro.

Cada protocolo oferece a maior eficiência de acoplamento possível para a faixa especificada.

Formato e concentração

Seu oligo de DNA é enviado na forma liofilizada.

Os oligos de DNA podem ser entregues em tubos de 1.5ml na concentração ou combinação desejada.

Dê uma olhada em nosso site e obtenha mais informações sobre este assunto.""";

  String storageStability = 'Os oligos não modificados podem ser usados ​​por pelo menos 12 meses quando armazenados a -20 ° C. Use água esterilizada sem nuclease para soluções de trabalho. Os oligonucleotídeos modificados com corantes fluorescentes devem ser mantidos longe da luz tanto quanto possível. Evite ciclos repetidos de congelamento e descongelamento, pois esse processo pode levar à degradação do oligo.';
  String docments = 'Todos os seus oligos de DNA são entregues com uma folha de especificações, incluindo conteúdo de GC, peso molecular, temperatura de fusão (Tm), valor de DO, sequência e quantidade em µgrama e nmol.';
  String modifications = 'As modificações podem ser incorporadas durante (direta) ou após a síntese (indireta). Você pode escolher entre mais de 300 modificações. Se a modificação desejada não estiver listada em nosso site, entre em contato conosco (vendas@genone.com.br).';
  String Purifications = '''Todos os oligos de DNA são sintetizados em condições de baixo teor de sal. Isso evita a necessidade de purificação para a maioria das aplicações básicas de biologia molecular. Uma purificação adicional está disponível para aplicações mais sensíveis. Além disso, recomendamos a purificação de oligos com mais de 35 bases. Oferecemos três formas diferentes de purificação:

Purificação de cartucho de fase reversa – OPC

HPLC

PAGE''';
  String longOligos = '''Oligonucleotídeos de até 130 bases são obtidos com nosso protocolo de síntese de oligonucleotídeos B-puro. Este protocolo permite a síntese de oligo longo de alta qualidade a um preço acessível. Usando o protocolo B-puro, podemos alcançar uma eficiência de acoplamento> 99,5%.

Oligonucleotídeos com mais de 80 bases são sintetizados automaticamente neste protocolo. O controle de qualidade adicional é realizado em nosso sistema LC-MS de última geração para garantir a mais alta qualidade e funcionalidade otimizada dos oligonucleotídeos.

''';
}


