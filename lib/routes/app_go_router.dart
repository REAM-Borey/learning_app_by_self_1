import 'package:go_router/go_router.dart';
import 'package:learning_flutter_1/data/models/backend/api/api_product.dart';
import 'package:learning_flutter_1/presentation/screens/home/home_screen.dart';
import 'package:learning_flutter_1/presentation/screens/home/welcome_screen.dart';
import 'package:learning_flutter_1/presentation/screens/login/login_screen.dart';
import 'package:learning_flutter_1/presentation/screens/order/order_screen.dart';
import 'package:learning_flutter_1/presentation/screens/products/product_detail_screen.dart';
import 'package:learning_flutter_1/presentation/screens/products/products_screen.dart';
import 'package:learning_flutter_1/presentation/screens/register/register_screen.dart';
import 'package:learning_flutter_1/presentation/screens/splash/splash_screen.dart';

class AppGoRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),

      // GoRoute(
      //   path: '/second',
      //   builder: (context, state) => const SecondScreen(),
      // ),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),

      GoRoute(
        path: '/products',
        builder: (context, state) => const ProductsScreen(),
      ),
      GoRoute(
        path: '/detail',
        builder: (context, state) =>
            ProductDetailScreen(product: state.extra as Product),
      ),

      GoRoute(
        path: '/orders',
        builder: (context, state) => const OrdersScreen(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
    ],
  );
}
