import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:test_flutter_project/network/post.dart';
import 'package:test_flutter_project/network/post_event.dart';
import 'package:test_flutter_project/network/post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final http.Client httpClient;

  PostBloc({required this.httpClient});

  // @override
  // Stream<PostEvent> transform(Stream<PostEvent> events) {
  //   return (events as Observable<PostEvent>).debounce(
  //       const Duration(milliseconds: 500));
  // }

  @override
  PostState? get initialState => null;

  @override
  Stream<PostState?> mapEventToState(
      PostState currentState, PostEvent event) async* {
    yield null;
  }

  Future<List<Post>> _fetchPosts(int startIndex, int limit) async {
    final response = await httpClient.get(
        'https://jsonplaceholder.typicode.com/posts?_start=$startIndex&_limit=$limit');
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      return data.map((rawPost) {
        return Post(rawPost['id'], rawPost['title'], rawPost['body']);
      }).toList();
    } else {
      throw Exception('error fetching posts');
    }
  }
}
