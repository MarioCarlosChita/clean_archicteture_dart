import 'package:clean_architectures/core/api/api.dart';
import 'package:clean_architectures/feacture/data/exception/exception.dart';
import 'package:clean_architectures/feacture/data/models/post_model.dart';
import 'package:http/http.dart' as  http;
import 'dart:html';
import 'dart:convert';

abstract class ListAllPostDataSourceRemote{
     Future<List<PostModel>>  list() ;
}


class ListAllPostsDataSourceRemotes implements   ListAllPostDataSourceRemote {
   final http.Client client;
   ListAllPostsDataSourceRemotes({required this.client});

  @override
  Future<List<PostModel>> list() async{
     final response =  await client.get(Uri.parse(ApiSetting().BASEURL+"/posts"));
     if(response.statusCode ==  HttpStatus.ok){
         return   List.from(json.decode(response.body).map((e)=> PostModel.toJson(e)));
     }
     throw ServerException();
  }

}

