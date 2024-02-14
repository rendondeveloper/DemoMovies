import 'package:demo_movies_map_profile/common/const/configuration_app.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movie_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';
import 'package:util_commons/utils/extensions/extension_context.dart';
import 'package:widgets_ui/widget/card_widget/card_widget.dart';

class MovieCard extends StatelessWidget {
  final MovieState data;

  const MovieCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
        onTap: () {},
        child: Stack(
          fit: StackFit.expand,
          children: [


            ClipRRect(
              borderRadius: BorderRadius.circular(radiusMedium),
              child: Image.network(data.imageCard, fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
            ),


            Padding(
              padding: const EdgeInsets.only(bottom: simpleSmallSeparation, left: simpleSmallSeparation, right: simpleSmallSeparation),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Wrap(
                  children: [
                    Text(
                      data.title,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: context
                          .getThemeData()
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: onText, backgroundColor:context.getThemeData().primaryColor.withOpacity(0.6),),
                    ),
                    Row(children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            const Icon(Icons.back_hand_sharp, size: doubleSeparation,),
                            Text(
                              data.rating.toString(),
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: context
                                  .getThemeData()
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(color: onText, backgroundColor:context.getThemeData().primaryColor.withOpacity(0.6),),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            const Icon(Icons.how_to_vote, size: doubleSeparation,),
                            Text(
                              data.vote.toString(),
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: context
                                  .getThemeData()
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(color: onText, backgroundColor:context.getThemeData().primaryColor.withOpacity(0.6),),
                            ),
                          ],
                        ),
                      ),
                    ],)
                  ],
                ),
              ),
            ),


          ],
        ));
  }
}
