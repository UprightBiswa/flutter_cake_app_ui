import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:logger/logger.dart';

class PostController extends GetxController {
  var isLoading = true.obs;
  var isError = false.obs;
  var posts = [].obs;
  var page = 1.obs;
  var isFetchingMore = false.obs;
  final int limit = 10; // Load 10 posts at a time
  final Logger logger = Logger();

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  Future<void> fetchPosts({bool loadMore = false}) async {
    try {
      if (loadMore) {
        isFetchingMore(true);
      } else {
        isLoading(true);
        isError(false);
      }

      var response = await http.get(Uri.parse(
          'https://jsonplaceholder.typicode.com/posts?_page=${page.value}&_limit=$limit'));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        if (loadMore) {
          posts.addAll(data);
        } else {
          posts.assignAll(data);
        }
        page.value++;
      } else {
        isError(true);
        logger.e('Failed to load posts: ${response.statusCode}');
      }
    } catch (e) {
      isError(true);
      logger.e('Error fetching posts: $e');
    } finally {
      isLoading(false);
      isFetchingMore(false);
    }
  }
}
