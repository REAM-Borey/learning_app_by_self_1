import 'package:go_router/go_router.dart';
import 'package:learning_flutter_1/data/models/backend/api/api_product.dart';
import 'package:learning_flutter_1/presentation/screens/home/home_screen.dart';
import 'package:learning_flutter_1/presentation/screens/home/second_screen.dart';
import 'package:learning_flutter_1/presentation/screens/login/login_screen.dart';
import 'package:learning_flutter_1/presentation/screens/order/order_screen.dart';
import 'package:learning_flutter_1/presentation/screens/products/product_detail_screen.dart';
import 'package:learning_flutter_1/presentation/screens/products/products_screen.dart';

class AppGoRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyHomeScreen(title: 'Home Screen'),
      ),

      GoRoute(
        path: '/second',
        builder: (context, state) => const SecondScreen(),
      ),

      GoRoute(path: '/login', builder: (context, state) => Loginpage()),

      GoRoute(path: '/products', builder: (context, state) => ProductsScreen()),
      GoRoute(
        path: '/productDetail',
        builder: (context, state) =>
            ProductDetailScreen(product: state.extra as Product),
      ),

      GoRoute(
        path: '/orders',
        builder: (context, state) => const OrdersScreen(),
      ),
    ],
  );
}
