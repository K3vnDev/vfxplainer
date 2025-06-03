class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;

  const QuizQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
  });
}

final List<QuizQuestion> quizQuestions = [
  const QuizQuestion(
    question: "¿Cuál es el propósito principal de los efectos visuales?",
    options: [
      "Reemplazar actores reales",
      "Contar historias visuales imposibles con métodos tradicionales",
      "Evitar el uso de cámaras",
      "Reducir el tiempo de rodaje"
    ],
    correctIndex: 1,
  ),
  const QuizQuestion(
    question: "¿Cuál de estas etapas NO forma parte del proceso de VFX?",
    options: [
      "Preproducción",
      "Rodaje",
      "Animación tradicional",
      "Postproducción"
    ],
    correctIndex: 2,
  ),
  const QuizQuestion(
    question: "¿Dónde más se usan los efectos visuales además del cine?",
    options: [
      "Solamente en la televisión",
      "En videojuegos, publicidad y medios digitales",
      "Solo en animaciones japonesas",
      "Exclusivamente en documentales"
    ],
    correctIndex: 1,
  ),
  const QuizQuestion(
    question: "¿Qué se suele usar durante el rodaje para facilitar los VFX?",
    options: ["Luces LED", "Pantallas verdes", "Cámaras lentas", "Drones"],
    correctIndex: 1,
  ),
  const QuizQuestion(
    question: "¿Qué diferencia se nota al comparar escenas con y sin VFX?",
    options: [
      "Cambio de iluminación",
      "Actores distintos",
      "Transformación completa de la percepción de la escena",
      "Menor duración de las escenas"
    ],
    correctIndex: 2,
  ),
  const QuizQuestion(
    question:
        "¿Qué permite lograr un mayor nivel de inmersión en las películas?",
    options: [
      "El guion",
      "Los actores de renombre",
      "Los efectos visuales bien integrados",
      "Los subtítulos animados"
    ],
    correctIndex: 2,
  ),
  const QuizQuestion(
    question: "¿Qué software usan comúnmente los artistas de VFX?",
    options: [
      "Microsoft Paint",
      "Software avanzado de manipulación digital",
      "PowerPoint",
      "Excel para gráficos"
    ],
    correctIndex: 1,
  ),
  const QuizQuestion(
    question: "¿Qué se planifica durante la preproducción?",
    options: [
      "La edición final",
      "El presupuesto de marketing",
      "Los efectos visuales y guiones gráficos",
      "La música de fondo"
    ],
    correctIndex: 2,
  ),
  const QuizQuestion(
    question: "¿Por qué los VFX son clave en la industria actual?",
    options: [
      "Reducen el pago a los actores",
      "Permiten escenas imposibles de filmar físicamente",
      "Evitan errores de grabación",
      "Solo son una moda"
    ],
    correctIndex: 1,
  ),
  const QuizQuestion(
    question:
        "¿Qué característica tienen las escenas con VFX comparadas con las reales?",
    options: [
      "Más desenfoque",
      "Mayor detalle y realismo imposible de lograr físicamente",
      "Menos participación actoral",
      "Solo colores más vivos"
    ],
    correctIndex: 1,
  ),
];
