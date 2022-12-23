import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gafar_game_list/pages/home/bloc/home_bloc.dart';
import 'package:gafar_game_list/utils/theme.dart';
import 'package:gafar_game_list/widgets/custom_search_bar.dart';
import 'package:provider/provider.dart';

part 'widgets/popular.dart';
part 'widgets/new_release.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<HomeBloc>(context);
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc.add(const HomeEventStarted());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state is HomeLoaded
                ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      CustomSearchBar(),
                      HomePopular(),
                      HomeNewRelease(),
                    ],
                  )
                : const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
