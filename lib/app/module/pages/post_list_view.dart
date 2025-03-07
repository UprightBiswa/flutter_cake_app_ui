import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/post_controller.dart';
import '../widgets/post_card.dart';
import '../widgets/shimmer_loader.dart';

class PostListPage extends StatelessWidget {
  final PostController controller = Get.put(PostController());
  final ScrollController scrollController = ScrollController();

  PostListPage({super.key}) {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        controller.fetchPosts(loadMore: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: RefreshIndicator(
        onRefresh: () => controller.fetchPosts(),
        child: Obx(() {
          if (controller.isLoading.value) {
            return const ShimmerLoader();
          }
          if (controller.isError.value) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Failed to load posts',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => controller.fetchPosts(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }
          return ListView.builder(
            controller: scrollController,
            itemCount:
                controller.posts.length +
                (controller.isFetchingMore.value ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == controller.posts.length) {
                return const Center(child: CircularProgressIndicator());
              }
              return PostCard(post: controller.posts[index]);
            },
          );
        }),
      ),
    );
  }
}
