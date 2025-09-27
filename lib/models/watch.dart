class Watch {
  final String name;
  final double price; // Changed to double for calculations
  final String imagePath;
  final String description;
  final String brand;
  final String category;
  final bool isFavorite;

  Watch({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    this.brand = 'WatchX',
    this.category = 'Luxury',
    this.isFavorite = false,
  });
}