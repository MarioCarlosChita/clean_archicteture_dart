import 'package:clean_architectures/feacture/data/exception/failure.dart';
import 'package:clean_architectures/feacture/domain/entities/post.dart';
import 'package:clean_architectures/feacture/domain/repositories/list_all_post_users_repository.dart';
import 'package:dartz/dartz.dart';

abstract class ListAllPostUsers{
     Future<Either<Failure , List<Post>>> list();
}

class ListAllPostsUsers implements   ListAllPostUsers {

  final ListAllPostUsersRepository repository;

  ListAllPostsUsers({required this.repository});

  @override
  Future<Either<Failure, List<Post>>> list() {
     return this.repository.list();
  }

}