import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplements implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplements({required this.apiService});
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBookList() {
    // TODO: implement fetchFeaturedBookList
    throw UnimplementedError();
  }
}