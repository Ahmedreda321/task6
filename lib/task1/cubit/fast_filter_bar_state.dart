part of 'fast_filter_bar_cubit.dart';

@immutable
sealed class FastFilterBarState {}

final class FastFilterBarInitial extends FastFilterBarState {}

// ignore: camel_case_types
final class selectIt extends FastFilterBarState {}

final class ColorIt extends FastFilterBarState {}
