import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PublicationsController extends GetxController with AppUtil {

  final List<Uri> urls = [
    Uri.parse('http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4663616/'),
    Uri.parse('https://www.ncbi.nlm.nih.gov/pubmed/25760706'),
    Uri.parse('http://www.sciencedirect.com/science/article/pii/S1359511315002500'),
    Uri.parse('http://www.ncbi.nlm.nih.gov/pubmed/25930987'),
    Uri.parse('http://www.ncbi.nlm.nih.gov/pubmed/25688758'),
    Uri.parse('http://www.ncbi.nlm.nih.gov/pubmed/26084256'),
    Uri.parse('https://www.ncbi.nlm.nih.gov/pubmed/26005927'),
    Uri.parse('http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4486185/'),
  ];

  final List<String> texts = [
    'Dias, D. M., de Castro Moreira, M. E., Gomes, M. J. C., Lopes Toledo, R. C., Nutti, M. R., Pinheiro Sant’Ana, H. M., & Martino, H. S. D. (2015). Rice and Bean Targets for Biofortification Combined with High Carotenoid Content Crops Regulate Transcriptional Mechanisms Increasing Iron Bioavailability.Nutrients, 7(11), 9683-9696.',
    'Campos, B. M., Liberato, M. V., Polikarpov, I., Zeri, A. C. M., & Squina, F. M. (2015). Cloning, purification, crystallization and preliminary X-ray studies of a carbohydrate-binding module from family 64 (StX). Acta Crystallographica Section F: Structural Biology Communications, 71(3), 0-0.',
    'Jucá, T. L., de Oliveira Monteiro-Moreira, A. C., Moreira, R. A., de Araújo, C. V., de Souza Lopes, J. L., Moreno, F. B. M. B., & Ramos, M. V. (2015). A new peptide from Jatropha curcas seeds: unusual sequence and insights into its synthetic analogue that enhances proteolytic activity of papain. Process Biochemistry.',
    'Machado, R. J., Junior, L. G., Monteiro, N. K., Silva-Júnior, A. A., Portaro, F. C., Barbosa, E. G., … & Fernandes-Pedrosa, M. F. (2015). Homology modeling, vasorelaxant and bradykinin-potentiating activities of a novel hypotensin found in the scorpion venom from Tityus stigmurus. Toxicon, 101, 11-18.',
    'Dias-Da-Silva, W., Tambourgi, D. V., & Portaro, F. V. (1850). New proline-rich oligopeptides from the venom of African adders: Insights into the hypotensive effect of the venoms. Biochimica et Biophysica Acta, 2015, 1180-1187.',
    'Macedo, T. Z., Okada, D. Y., Delforno, T. P., Braga, J. K., Silva, E. L., & Varesche, M. B. A. (2015). The comparative advantages of ethanol and sucrose as co-substrates in the degradation of an anionic surfactant: microbial community selection. Bioprocess and biosystems engineering,38(10), 1835-1844.',
    'Delforno, T. P., Moura, A. G. L., Okada, D. Y., Sakamoto, I. K., & Varesche, M. B. A. (2015). Microbial diversity and the implications of sulfide levels in an anaerobic reactor used to remove an anionic surfactant from laundry wastewater. Bioresource technology.',
    'Pontes, T. B., Moreira-Nunes, C. D. F. A., da Silva Maués, J. H., Lamarão, L. M., de Lemos, J. A. R., Montenegro, R. C., & Burbano, R. M. R. (2015). The miRNA Profile of Platelets Stored in a Blood Bank and Its Relation to Cellular Damage from Storage. PloS one, 10(6), e0129399.',
  ];

  goToUrl(Uri url) async {
    canLaunchUrl(url).then((value) async {
      if (value) {
        await launchUrl(url, mode: LaunchMode.platformDefault);
      } else {
        print('Could not launch $url');
      }
    });
  }
}