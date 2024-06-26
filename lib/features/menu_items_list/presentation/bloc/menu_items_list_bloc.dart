import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'menu_items_list_event.dart';
part 'menu_items_list_state.dart';

class MenuItemsListBloc extends Bloc<MenuItemsListEvent, MenuItemsListState> {
  MenuItemsListBloc() : super(MenuItemsListInitial()) {
    on<MenuItemsListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
