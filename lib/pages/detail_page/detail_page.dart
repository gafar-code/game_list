import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/models/developer.dart';
import 'package:game/models/game.dart';
import 'package:game/models/platform.dart';
import 'package:game/models/screen_shoot.dart';
import 'package:game/pages/detail_page/bloc/detail_bloc.dart';
import 'package:game/utils/theme.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

part 'widgets/aditional_info.dart';
part 'widgets/description.dart';
part 'widgets/genres.dart';
part 'widgets/header.dart';
part 'widgets/screenshots.dart';

class DetailPage extends StatefulWidget {
  final int? gameId;
  const DetailPage({super.key, this.gameId});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late DetailBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<DetailBloc>(context);
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc.add(DetailEventStarted(gameId: widget.gameId!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: BlocBuilder<DetailBloc, DetailState>(
        builder: (context, state) {
          if (state is DetailLoaded) {
            return NestedScrollView(
              
                headerSliverBuilder: (BuildContext context, _) {
                  return [
                    DetailHeader(game: state.game),
                  ];
                },
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      DetailScreenShots(screenShoots: state.screenShoot),
                      DetailDescription(game: state.game),
                      DetailGenres(game: state.game),
                      DetailAditionalInfo(game: state.game),
                    ],
                  ),
                ));
          }
          if (state is DetailError) return Center(child: Text(state.errorMsg));
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
