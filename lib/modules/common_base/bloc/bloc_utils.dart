import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/modules/common_base/bloc/base_bloc.dart';
import 'package:it_navigator/modules/common_base/utils/equatable_array.dart';

/// Добавление эвентов на View через Mixin [AddEvent]
/// Данный миксин позволяет сократить запись добавления эвентов, так как включает в себя поиск нужного блока в контексте. В случае со `Stateful widget`-ами миксин применяется в стейту.

mixin AddEvent<BlocT extends Bloc<EventT, Object>, EventT> on StatelessWidget {
  void add(BuildContext context, EventT event) =>
      context.read<BlocT>().add(event);
}

mixin AddEventStateful<
    WidgetT extends StatefulWidget,
    BlocT extends Bloc<EventT, Object>,
    EventT extends Equatable> on State<WidgetT> {
  void add(EventT event) => context.read<BlocT>().add(event);
}

/// Функции, которые упрощают сравнивать параметры state в вызовах "buildWhen" и "listenWhen"
/// Параметры должны быть сравниваемыми(equatable)

/// Сравнивает несколько параметров между двумя state
WhenChangedCompanion<T> whenParamsChanged<T>(WhenParamsWrapper<T> wrapper) {
  return (T previous, T current) =>
      EquatableArray(wrapper(previous)) != EquatableArray(wrapper(current));
}

/// Сравнивает один параметр между двумя state
WhenChangedCompanion<T> whenParamChanged<T>(WhenParamWrapper<T> wrapper) {
  return (T previous, T current) => wrapper(previous) != wrapper(current);
}

typedef WhenChangedCompanion<T> = bool Function(T previous, T current);
typedef WhenParamsWrapper<T> = List<Object?> Function(T state);
typedef WhenParamWrapper<T> = Object? Function(T state);
