import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/search_weather/cubit.dart';
import 'package:weather_app/blocs/search_weather/state_search.dart';
import 'package:weather_app/common/style.dart';

class SearchStatusBanner extends StatefulWidget {
  @override
  _SearchStatusBannerState createState() => _SearchStatusBannerState();
}

class _SearchStatusBannerState extends State<SearchStatusBanner> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
        builder: (BuildContext context, SearchState state) {
      return Center(
        child: AnimatedContainer(
          height: state.maybeWhen(
              error: (String msg) => 24.0,
              loading: () => 36.0,
              orElse: () => 0.0),
          duration: const Duration(milliseconds: 200),
          child: Center(
            child: state.maybeWhen(
              error: (String msg) => Text(
                msg,
                style: errorMsgTextStyle(),
              ),
              loading: () => const CircularProgressIndicator(),
              orElse: () => Container(),
            ),
          ),
        ),
      );
    });
  }
}
