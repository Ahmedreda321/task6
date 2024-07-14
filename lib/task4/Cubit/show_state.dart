part of 'show_cubit.dart';

@immutable
sealed class ShowState {}

final class ShowInitial extends ShowState {}
final class Bloc extends ShowState {}
final class Circle extends ShowState {}
final class ttext extends ShowState {}
final class reset extends ShowState {}
