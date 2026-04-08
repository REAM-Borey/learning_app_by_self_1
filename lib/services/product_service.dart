import 'package:http/http.dart' as http;
import 'package:learning_flutter_1/configs/app_config.dart';
import 'package:learning_flutter_1/data/models/backend/api/api_product.dart';

class ProductService {
  Future<void> fetchAllProducts() async {
    var url = Uri.https(AppConfig.apiBaseUrl, AppConfig.productsEndpoint);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<Product> products = ProductFromJson(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
