import 'dart:io';
import 'package:clean_architectures/feacture/data/datasource/datasource_remote/list_all_post_datasource_remote.dart';
import 'package:clean_architectures/feacture/data/exception/failure.dart';
import 'package:clean_architectures/feacture/domain/entities/post.dart';
import 'package:clean_architectures/feacture/domain/repositories/list_all_post_users_repository.dart';
import 'package:dartz/dartz.dart';

abstract class  ListAllPostUsersRepositoryImpl implements   ListAllPostUsersRepository{}

class ListAllPostsUsersRepositoryImpl   implements ListAllPostUsersRepositoryImpl {
  final ListAllPostDataSourceRemote dataSourceRemote;
  ListAllPostsUsersRepositoryImpl({required this.dataSourceRemote});

  @override
  Future<Either<Failure, List<Post>>> list()  async{
      try{
         return right( await  dataSourceRemote.list());
      }  on SocketException {
         return left(FailureServerConnection(message: "NO Internet Connection"));
      } on FormatException {
         return left(FailureServerFormat(message: "Request Error"));
      }
  }

}