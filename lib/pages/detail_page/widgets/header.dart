part of '../detail_page.dart';

class DetailHeader extends StatelessWidget {
  final Game game;
  const DetailHeader({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 160.0,
      floating: false,
      pinned: true,
      elevation: 0,
      backgroundColor: AppTheme.backgroundColor,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              child: Text(
                game.name!,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            if (game.developers!.isNotEmpty)
              Text(
                game.developers!.first.name!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
          ],
        ),
        background: SizedBox(
          height: 380,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              if (game.backgroundImageAdditional != null)
                CachedNetworkImage(
                  imageUrl: game.backgroundImageAdditional!,
                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  colorBlendMode: BlendMode.srcOver,
                  color: Colors.black.withOpacity(.5),
                  fit: BoxFit.cover,
                )
              else
                Material(
                  color: Colors.black.withOpacity(.5),
                  child: SizedBox(
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              Align(
                alignment: const Alignment(0, -0.2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: game.backgroundImage!,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
