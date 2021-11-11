import 'package:flutter/material.dart';
import 'package:yafa_cv/experience.dart';
import 'package:yafa_cv/personne.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YAFA CV',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: Typography.englishLike2018.apply(bodyColor: Colors.indigo),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final Personne _personne = const Personne(
    name: "Valentine Guérin",
    phone: "04 70 45 67 89",
    email: "bonjouresitevraimentsuper.fr",
    profilDescription:
        "Je suis une spécialiste en ressources humaines avec plus de 5 ans d'expérience dans le recrutement, la mise en oeuvre de programmes, les systèmes techniques et l'analytique du personnel.",
    skills: [
      "Formation et développement des employés",
      "Meilleures pratiques de recrutement",
      "Mécanisme souple appliqué aux RH",
      "Systèmes informatiques liés aux RH et science des données"
    ],
    experiences: [
      Experience(
        title: "Directrice générale des RH",
        date: "mars 2018 à présent",
        description:
            "• S'assure un excellent niveau de participation du personnel\n• Offre un accompagnement du personnel\n• Supervise le système d'information des RH\n• Contribue à la planification organisationnelle",
      ),
      Experience(
        title: "Généraliste en ressources humaines",
        date: "février 2015 - mars 2018",
        description:
            "• Facilite l'embauche des nouveaux employés\n• Travaille étroitement avec la service de la paie et gère le programme des aides sociales\n• Organise et anime des formations du personnel",
      ),
      Experience(
        title: "Généraliste en ressources humaines",
        date: "février 2015 - mars 2018",
        description:
            "• Facilite l'embauche des nouveaux employés\n• Travaille étroitement avec la service de la paie et gère le programme des aides sociales\n• Organise et anime des formations du personnel",
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        children: [
                          Text(
                            _personne.name.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text(
                              "Téléphone : ${_personne.phone}",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .apply(color: Colors.indigo),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            "E-mail : ${_personne.email}",
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .apply(color: Colors.indigo),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/avatar.jpg"),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PROFIL",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.indigo.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 14.0),
                    Text(_personne.profilDescription),
                    const SizedBox(height: 24.0),
                    Text(
                      "COMPÉTENCES PRINCIPALES",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.indigo.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 14.0),
                    for (var skill in _personne.skills) Text("- $skill"),
                    const SizedBox(height: 24.0),
                    Text(
                      "EXPÉRIENCE PROFESSIONNELLE",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.indigo.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 14.0),
                    for (var experience in _personne.experiences)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            experience.title,
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            experience.date.toUpperCase(),
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(experience.description),
                          const SizedBox(
                            height: 14.0,
                          )
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
