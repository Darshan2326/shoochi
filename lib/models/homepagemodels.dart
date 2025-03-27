class Store {
  final String storeImage;
  final String storeName;
  final double km;

  Store({
    required this.storeImage,
    required this.storeName,
    required this.km,
  });

  // Example: Factory method to create a list of temporary data
  static List<Store> getTemporaryData() {
    return [
      Store(storeImage: 'assets/1.png', storeName: 'Balaji Treders', km: 1.2),
      Store(storeImage: 'assets/2.png', storeName: 'Shi Vashvi Store', km: 2.5),
      Store(
          storeImage: 'assets/3.png',
          storeName: 'jagdambe krishna store',
          km: 0.8),
    ];
  }
}
