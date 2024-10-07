import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_implements.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/home/presentation/views_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/BookDetailsView',
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(getIt.get<HomeRepoImplements>()),
          child: BookDetailsView(
            bookmodel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
