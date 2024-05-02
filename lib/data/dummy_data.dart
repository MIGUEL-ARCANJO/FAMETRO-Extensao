import 'package:flutter/material.dart';
import 'package:inclusao_digital/models/content_model.dart';
import 'package:inclusao_digital/models/short_curts_model.dart';

const DUMMY_CONTENT = [
  ContentModel(
      'c1',
      'Introdução à Informática',
      'Introdução ao Mundo Digital',
      {
        "Introdução":
            "A informática básica abrange uma ampla gama de conhecimentos e habilidades relacionados ao uso de computadores e tecnologias digitais é essencial para qualquer pessoa que queira se sentir confortável e confiante ao lidar com dispositivos eletrônicos e programas de computador.",
        "Conceitos da Informática":
            "Introdução à Informática é o estudo dos fundamentos e princípios básicos da computação e tecnologia da informação. Ela abrange conceitos como hardware, software, redes, sistemas operacionais e aplicativos.",
      },
      'assets/images/icon_intro.jpg'),
  ContentModel(
    'c2',
    'Básico de Hardwares',
    'Mostrar Componentes Hardwares do Computador',
    {
      'O que são?':
          "O hardware é a parte física que compõe um sistema de computador e é responsável por executar tarefas específicas de processamento, armazenamento e comunicação de dados.",
      'Processor (CPU)':
          " É o cérebro do computador, responsável por executar instruções e processar dados.",
      "RAM (Random Acess Memory)":
          "A memória de acesso aleatório (RAM) é usada para armazenar temporariamente dados e programas em execução, permitindo acesso rápido a eles pelo processador.",
      'Hard Disk Drive (HDD)':
          " É usado para armazenar permanentemente dados, programas e arquivos no computador.",
      'Motherboard':
          "É a principal placa de circuito do computador que abriga e conecta todos os outros componentes de hardware.",
      'Graphics Processing Unit (GPU)':
          "Responsável pelo processamento de gráficos e exibição de imagens na tela."
    },
    'assets/images/icon_hard.jpg',
  ),
  ContentModel(
      'c3',
      'Atalhos do Teclado',
      'Mostrar alguns atalhos relacionados ao explorer',
      {},
      'assets/images/icon_shortcut.jpg'),
];

const DUMMY_SHORTCURTS = [
  ShortCutsModel(
      'Word',
      [
        {'CTRL+X': 'Cut'},
        {'CTRL+C': 'Copy'},
        {'CTRL+V': 'Paste'},
        {'CTRL+Z': 'Undo'},
      ],
      Colors.blue),
  ShortCutsModel(
      'Excel',
      [
        {'CTRL+X': 'Cut'},
        {'CTRL+C': 'Copy'},
        {'CTRL+V': 'Paste'},
        {'CTRL+Z': 'Undo'},
      ],
      Colors.green),
  ShortCutsModel(
      'PowerPoint',
      [
        {'CTRL+X': 'Cut'},
        {'CTRL+C': 'Copy'},
        {'CTRL+V': 'Paste'},
        {'CTRL+Z': 'Undo'},
      ],
      Colors.orange),
];

const DUMMY_WORD = ShortCuts(
    'O que é Word?',
    "O Word é usado para criar, editar e formatar documentos de texto, e oferece uma ampla gama de recursos para facilitar a produção de documentos profissionais e pessoais.",
    {
      'Ctrl+O': 'Open Document',
      'Ctrl+N': 'Create New Document',
      'Ctrl+S': 'Save Document',
      'Ctrl+W': 'Close Document',
      'Ctrl+X': 'Cut',
      'Ctrl+C': 'Copy',
      'Ctrl+V': 'Paste',
      'Ctrl+A': 'Select All',
      'Ctrl+B': 'Bold',
      'Ctrl+Z': 'Undo',
    });
const DUMMY_EXCEL = ShortCuts(
    'O que é Excel?',
    "O Excel é um aplicativo de planilha desenvolvido pela Microsoft. O Excel é amplamente utilizado para criar planilhas eletrônicas, organizar dados, realizar cálculos, criar gráficos e facilitar a análise de informações numéricas.",
    {
      'Ctrl+O': 'Open WorkBook',
      'Ctrl+N': 'Create New WorkBook',
      'Ctrl+S': 'Save WorkBook',
      'Ctrl+W': 'Close current WorkBook',
      'Ctrl+X': 'Cut',
      'Ctrl+C': 'Copy',
      'Ctrl+V': 'Paste',
      'Ctrl+A': 'Select All',
      'Ctrl+B': 'Bold',
      'Alt+M': 'Go the Formula Tab',
      'Crtl+Z': 'Undo',
    });

const DUMMY_PPTX = ShortCuts(
    'O que é o Power Point?',
    "O PowerPoint é um programa desenvolvido pela Microsoft. O PowerPoint é amplamente utilizado para criar apresentações visuais dinâmicas e profissionais, que podem incluir texto, imagens, gráficos, animações e vídeos.",
    {
      'Ctrl+O': 'Open Presentation',
      'Ctrl+N': 'Create New Presentation',
      'Ctrl+S': 'Save Presentation',
      'Ctrl+W': 'Close Presentation',
      'Ctrl+Q': 'Saven and Close Presentation',
      'Ctrl+Y': 'Repeat last Action',
      'Ctrl+V': 'Paste',
      'Ctrl+A': 'Select All',
      'Ctrl+B': 'Bold',
      'Ctrl+Tab': 'Switch between different open presentations',
      'Ctrl+Z': 'Undo',
    });
