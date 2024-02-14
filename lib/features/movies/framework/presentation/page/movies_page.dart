import 'package:demo_movies_map_profile/common/utils/context_extension.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/categories_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movies_state.dart';
import 'package:demo_movies_map_profile/features/movies/framework/di/movies_provider.dart';
import 'package:demo_movies_map_profile/features/movies/framework/presentation/page/widget/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';
import 'package:util_commons/utils/extensions/extension_context.dart';
import 'package:widgets_ui/widget/empty/empty_state_simple_widget.dart';

class MoviesPage extends ConsumerWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesState = ref.watch(categoriesProvider.notifier);
    final moviesState = ref.watch(moviesProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.getString.moviesPageAppBarTitle),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: StreamBuilder(
                stream: categoriesState.stream,
                builder: (context, snapshot) {
                  final state = snapshot.hasData
                      ? snapshot.data as CategoriesState
                      : const CategoriesState();
                  switch (state.isLoading) {
                    case true:
                      return const CircularProgressIndicator();
                    case false:
                      return ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              horizontal: simpleSeparation),
                          scrollDirection: Axis.horizontal,
                          itemCount: state.genres.length,
                          itemBuilder: (context, index) {
                            final item = state.genres[index];
                            return ChoiceChip(
                              label: Text(item.name),
                              selected: state.selectedIndex == index,
                              onSelected: (selected) {
                                ref
                                    .read(categoriesProvider.notifier)
                                    .updateCategory(index);
                              },
                            );
                          });
                  }
                },
              )),
          Expanded(
              flex: 9,
              child: StreamBuilder(
                  stream: moviesState.stream,
                  builder: (context, snapshot) {
                    final state = snapshot.hasData
                        ? snapshot.data as MoviesState
                        : const MoviesState();
                    switch (state.isLoading) {
                      case true:
                        return const CircularProgressIndicator();
                      case false:
                        if (state.movies.isEmpty) {
                          return EmptyStateSimpleWidget(
                            text: Text(context
                                .getString.moviesPageEmptyStateTextMessage),
                            icon:  Icon(Icons.movie, color: context.getThemeData().primaryColor,),
                          );
                        } else {
                          return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, // number of items in each row
                              mainAxisSpacing: 8.0, // spacing between rows
                              crossAxisSpacing: 8.0, // spacing between columns
                            ),
                            padding: const EdgeInsets.all(8.0),
                            itemCount: state.movies.length,
                            itemBuilder: (context, index) {
                              final item = state.movies[index];
                              return MovieCard(data: item);
                            },
                          );
                        }
                    }
                  }))
        ],
      ),
    );
  }
}
