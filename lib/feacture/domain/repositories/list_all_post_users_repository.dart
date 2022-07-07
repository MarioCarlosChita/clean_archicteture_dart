

import 'package:clean_architectures/feacture/data/exception/failure.dart';
import 'package:clean_architectures/feacture/domain/entities/post.dart';
import 'package:dartz/dartz.dart';

abstract class  ListAllPostUsersRepository{
  Future<Either<Failure , List<Post>>> list();
}