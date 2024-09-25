import 'package:medic_app/path/imagens.dart';

class Remedio {
  final String nome;
  final String imagen;
  final String indicacao;
  final String contraIndicacoes;
  final String bula;
  bool precisaDeReceita = false;

  Remedio({
    this.precisaDeReceita = false,
    required this.imagen,
    required this.indicacao,
    required this.contraIndicacoes,
    required this.bula,
    required this.nome,
  });
}

Remedio dipirona = Remedio(
  imagen: Imagens.dipirona,
  indicacao:
      '-Dores de cabeça\n-Dores musculares\n-Cólica renal\n-Cólica menstrual\n-Pós-operatórias e de outras origens.',
  contraIndicacoes:
      '-Pessoas com menos de 3 meses de idade ou menos de 5 kg Gestantes e mulheres em amamentação\n-Pessoas com alergia à dipirona ou a qualquer componente da formulação\n-Pessoas com hipersensibilidade a pirazolonas e pirazolidinas\n-Pessoas com função da medula óssea prejudicada\n-Pessoas com doenças do sistema hematopoiético\n-Pessoas com histórico de broncoespasmo ou outras reações anafilactoides\n-Pessoas com porfiria hepática aguda intermitente\n-Pessoas com deficiência congênita da glicose-6-fosfato-desidrogenase ',
  bula: '',
  nome: 'Dipirona-1000MG',
);
Remedio omeprazol = Remedio(
  imagen: Imagens.omeprazol,
  indicacao:
      'tratar certas condições em que haja muita produção de ácido no estômago. É usado para tratar :\n-úlceras gástricas (estômago)\n-duodenais (intestino)\n-refluxo gastro-esofágico (quando o suco gástrico do estômago volta para o esôfago)',
  contraIndicacoes:
      'Pessoas alérgicas ao omeprazol ou a qualquer componente da fórmula não devem recorrer ao medicamento,Gravidez e amamentação: não há comprovação sobre a segurança do omeprazol para gestantes e lactantes. Por isso, seu uso deve ser orientado por um médico.',
  bula: '',
  nome: 'Omeprazol-40MG',
);

Remedio ritalina = Remedio(
  imagen: Imagens.ritalina,
  indicacao:
      'tratamento de Tdah melhorarando a atenção e a concentração e reduzindo a impulsividade',
  contraIndicacoes:
      'Ansiedade, tensão ou agitação\n-Alterações da tireoide\n-Problemas cardíacos, incluindo hipertensão\n-Glaucoma\n-Síndrome de Tourette\n-O medicamento não é recomendado para crianças com menos de 6 anos.',
  bula: '',
  nome: 'Ritalina-10MG',
  precisaDeReceita: true,
);
Remedio dorflex = Remedio(
  imagen: Imagens.dorflex,
  indicacao:
      'Dorflex é um medicamento que possui ação analgésica e relaxante muscular. É indicado para aliviar dores relacionadas à contratura muscular excessiva, como a dor de cabeça tensional , e também as dores musculares.',
  contraIndicacoes:
      '-hipersensibilidade a qualquer um dos componentes da fórmula\n-não deve ser utilizado em pacientes com glaucoma\n-obstrução pilórica ou duodenal\n-acalasia do esôfago,\n-úlcera péptica estenosante\n-hipertrofia prostática,',
  bula: '',
  nome: 'Dorflex',
);
Remedio loratadina = Remedio(
  imagen: Imagens.loratadina,
  indicacao:
      ' indicada para o alívio dos sintomas associados com a rinite alérgica, como:\n-coceira nasal\n-nariz escorrendo\n-espirros\n-ardor e coceira nos olhos',
  contraIndicacoes:
      ' hipersensibilidade à loratadina ou outro componente da formulação\n-Precauções:\nUtilizar com cuidado em pacientes com doença renal ou hepática, ajuste de dose recomendado. Segurança em crianças menores de 2 anos não estabelecida',
  bula: '',
  nome: 'Loratadina-10MG',
);
Remedio domperidona = Remedio(
  imagen: Imagens.domperidona,
  indicacao:
      'medicamento utilizado no tratamento da má digestão, tornando mais rápida a movimentação dos alimentos no esôfago, estômago e intestinos',
  contraIndicacoes:
      ' é contraindicado para pacientes com insuficiência hepática moderada (Child-Pugh 7 a 9) ou grave (ChildPugh > 9)',
  bula: '',
  nome: 'Domperidona-10MG',
);

List<Remedio> listaDeRemedios = [
  dipirona,
  omeprazol,
  ritalina,
  dorflex,
  loratadina,
  domperidona,
];
