class ExperienceItem {
  const ExperienceItem(
      {required this.companyName,
      required this.position,
      required this.year,
      required this.keyPoints});

  final String companyName;
  final String position;
  final String year;
  final List<String> keyPoints;
}
