import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gafar_game_list/models/game.dart';
import 'package:gafar_game_list/pages/home/bloc/home_bloc.dart';
import 'package:gafar_game_list/utils/const.dart';
import 'package:gafar_game_list/utils/helpers.dart';
import 'package:gafar_game_list/utils/theme.dart';
import 'package:gafar_game_list/widgets/custom_game_card.dart';
import 'package:gafar_game_list/widgets/custom_search_bar.dart';
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

  void onSubmitSearchBar(String query) => _bloc.add(HomeEventSearch(query));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
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
                        HomeListGame(bloc: _bloc),
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
