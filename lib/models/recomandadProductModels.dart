// class RecommendedProductData {
//   final String productImage;
//   final String productName;
//   final double price;

//   RecommendedProductData({
//     required this.productImage,
//     required this.productName,
//     required this.price,
//   });

//   // Example: Factory method to create a list of temporary data
//   static List<RecommendedProductData> getRecomandProductTemporaryData() {
//     return [
//       RecommendedProductData(
//         productImage: 'assets/images/product1.png',
//         productName: 'Product A',
//         price: 10.99,
//       ),
//       RecommendedProductData(
//         productImage: 'assets/images/product2.png',
//         productName: 'Product B',
//         price: 15.49,
//       ),
//       RecommendedProductData(
//         productImage: 'assets/images/product3.png',
//         productName: 'Product C',
//         price: 8.75,
//       ),
//     ];
//   }
// }

class RecommendedProductList {
  static List<Map<String, String>> getProducts() {
    return [
      {'image': 'assets/products/1.png'},
      {'image': 'assets/products/2.png'},
      // {'image': 'assets/products/3.png'},
      // {'image': 'assets/products/4.png'},
    ];
  }
}


