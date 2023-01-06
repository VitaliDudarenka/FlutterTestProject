import 'package:equatable/equatable.dart';
import 'package:test_flutter_project/network/post.dart';

abstract class PostState extends Equatable {
  PostState([Iterable? props]) : super(props);
}

class PostUninitialized extends PostState {
  @override
  String toString() => 'PostUninitialized';
}

class PostInitialized extends PostState {
  final List<Post> posts;
  final bool hasError;
  final bool hasReachedMax;

  PostInitialized(this.posts, this.hasError, this.hasReachedMax)
      : super([posts, hasError, hasReachedMax]);

  factory PostInitialized.success(List<Post> posts) {
    return PostInitialized(posts, false, false);
  }

  factory PostInitialized.failure() {
    return PostInitialized([], true, false);
  }

  PostInitialized copyWith({
    List<Post>? posts,
    bool? hasError,
    bool? hasReachedMax,
  }) {
    return PostInitialized(posts ?? this.posts, hasError ?? this.hasError,
        hasReachedMax ?? this.hasReachedMax);
  }

  @override
  String toString() =>
      'PostInitialized { posts: ${posts.length}, hasError: $hasError, hasReachedMax: $hasReachedMax }';
}
