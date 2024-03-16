import 'package:design/business_logics/blocs/location_cubit/location_cubit.dart';
import 'package:design/business_logics/blocs/toggle_blocs/toggle_blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppMultiProvider extends StatelessWidget {
  final Widget child;

  const AppMultiProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        /// api call bloc

        BlocProvider<ShowPasswordToggleBloc>(
            create: (_) => ShowPasswordToggleBloc()),
        BlocProvider<ShowOldPasswordToggleBloc>(
            create: (_) => ShowOldPasswordToggleBloc()),
        BlocProvider<ChooseUserToggleBloc>(
            create: (_) => ChooseUserToggleBloc()),
        BlocProvider<CheckBoxToggleBloc>(create: (_) => CheckBoxToggleBloc()),
        BlocProvider<TextFieldOnChangedToggleBloc>(
            create: (_) => TextFieldOnChangedToggleBloc()),
        BlocProvider<NumberPickerChangedToggleBloc>(
            create: (_) => NumberPickerChangedToggleBloc()),
        BlocProvider<ShowConPasswordToggleBloc>(
            create: (_) => ShowConPasswordToggleBloc()),

        /// toggle bloc
        BlocProvider<OpenDatePickerBloc>(
            create: (_) => OpenDatePickerBloc(), lazy: false),
        BlocProvider<PostImageIndexToggleBloc>(
            create: (_) => PostImageIndexToggleBloc(), lazy: false),
        BlocProvider<LocationCubit>(
            create: (_) => LocationCubit(), lazy: false),
        BlocProvider<ImageVideoSelectionBloc>(
            create: (_) => ImageVideoSelectionBloc(), lazy: false),
      ],
      child: child,
    );
  }
}
