class Restaurant {
  final String name;
  final String cuisine;
  final String price;
  final double rating;
  final Map<String, dynamic> location;
  final Map<String, dynamic> hours;
  final String website;
  final String phoneNumber;

  Restaurant({
    required this.name,
    required this.cuisine,
    required this.price,
    required this.rating,
    required this.location,
    required this.hours,
    required this.website,
    required this.phoneNumber,
  });
}