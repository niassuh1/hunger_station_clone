class Restaurant {
  final String name;
  final List<dynamic> categories;
  final dynamic duration;
  final bool liveTracking;
  final String logo;
  final String cover;

  Restaurant(
      {required this.name,
      required this.categories,
      required this.duration,
      required this.liveTracking,
      required this.logo,
      required this.cover});
}
