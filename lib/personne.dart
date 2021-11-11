import 'package:yafa_cv/experience.dart';

class Personne {
  final String name;
  final String phone;
  final String email;
  final String profilDescription;
  final List<String> skills;
  final List<Experience> experiences;
  const Personne(
      {required this.name,
      required this.phone,
      required this.email,
      required this.profilDescription,
      required this.skills,
      required this.experiences});
}
