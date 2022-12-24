import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:game/models/game.dart';
import 'package:game/router/app_arguments.dart';
import 'package:game/router/app_router.dart';
import 'package:game/utils/theme.dart';
import 'package:intl/intl.dart';

class CustomGameCard extends StatelessWidget {
  final Game game;
  final bool useCard;
  const CustomGameCard({
    super.key,
    required this.game,
    this.useCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          AppRoutes.detailPage,
          arguments: DetailPageArguments(id: game.id!),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Container(
            decoration: BoxDecoration(
              color: useCard ? AppTheme.secondryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: 272,
            child: Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                      height: 160,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: game.backgroundImage!,
                          height: 160,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) {
                            return const Material(
                              color: Colors.blue,
                              child: SizedBox(
                                height: 160,
                              ),
                            );
                          },
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .6,
                              child: Text(
                                game.name!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Text(
                              "Release date:",
                              style: TextStyle(color: AppTheme.white8Color, fontSize: 14),
                            ),
                            Text(
                              DateFormat("MMMM, dd, yyyy").format(game.released!),
                              style: const TextStyle(color: AppTheme.white8Color, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      if (game.metacritic != null)
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              color: AppTheme.greenColor,
                              borderRadius: BorderRadius.circular(12),
                              child: SizedBox(
                                height: 30,
                                width: 52,
                                child: Center(
                                  child: Text(
                                    "${game.metacritic}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "Metascore",
                                style: TextStyle(
                                  color: AppTheme.white8Color,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
