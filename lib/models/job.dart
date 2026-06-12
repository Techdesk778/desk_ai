class Job {
  final String id;
  final String title;
  final String company;
  final String description;
  final String trainingStatus; // e.g., "Not Started", "In Progress", "Completed"

  Job({
    required this.id,
    required this.title,
    required this.company,
    required this.description,
    this.trainingStatus = "Not Started",
  });
}