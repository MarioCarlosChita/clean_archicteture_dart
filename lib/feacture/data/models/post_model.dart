

import 'package:clean_architectures/feacture/domain/entities/post.dart';

class PostModel extends Post{
  final  String id;
  final  String userId;
  final  String title;
  final  String body;

  PostModel({
    required  this.title,
    required  this.id,
    required  this.body,
    required  this.userId
  }):super(title: title, body: body , id: id, userId: userId);

  factory  PostModel.toJson(Map<String, dynamic> map){
    return PostModel(
        title: map['title'],
        id: map['id'],
        body: map['body'],
        userId: map['userId']
    );
  }
}