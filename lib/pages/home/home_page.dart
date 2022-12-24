import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game/models/game.dart';
import 'package:game/pages/home/bloc/home_bloc.dart';
import 'package:game/utils/const.dart';
import 'package:game/utils/helpers.dart';
import 'package:game/utils/theme.dart';
import 'package:game/widgets/custom_game_card.dart';
import 'package:game/widgets/custom_search_bar.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'widgets/list_label.dart';
part 'widgets/list_game.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<HomeBloc>(context)
      ..add(const HomeEventStarted())
      ..pagingController.addPageRequestListener((pageKey) async {
        await _bloc.fetchData(page: pageKey);
      });
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc.add(const HomeEventStarted());
    });
  }

  void onSubmitSearchBar(String query) {
    if (!Helper.isEmpty(query)) _bloc.add(HomeEventSearch(query));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomSearchBar(
              controller: _bloc.searchController,
              onSubmit: onSubmitSearchBar,
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeLoaded) {
                  return Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        HomeListLabel(bloc: _bloc, query: state.query),
                        HomeListGame(bloc: _bloc, query: state.query),
                      ],
                    ),
                  );
                }
                return const Padding(
                  padding: EdgeInsets.only(top: 48),
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
