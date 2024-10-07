import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplements implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplements(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              "volumes?Filtering=free-ebooks&q=subject:general&Sorting=newest");
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
          // ignore: empty_catches
        } catch (e) {}
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.FromDioError(e));
      }
      return left(ServerFailure(errormassage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBookList() async {
    try {
      var data = await apiService.get(
          endpoint: "volumes?Filtering=free-ebooks&q=subject:");
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
          // ignore: empty_catches
        } catch (e) {}
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.FromDioError(e));
      }
      return left(ServerFailure(errormassage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarbooks(
      {required category}) async {
    try {
      var data = await apiService.get(
          endpoint:
              "volumes?Filtering=free-ebooks&q=subject:&Sorting=relevance");
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
          // ignore: empty_catches
        } catch (e) {}
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.FromDioError(e));
      }
      return left(ServerFailure(errormassage: e.toString()));
    }
  }
}
