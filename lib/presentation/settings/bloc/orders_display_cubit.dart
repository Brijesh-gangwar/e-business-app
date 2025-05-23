import 'package:e_business/domain/order/usecases/get_orders.dart';
import 'package:e_business/presentation/settings/bloc/orders_display_state.dart';
import 'package:e_business/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersDisplayCubit extends Cubit<OrdersDisplayState> {
  OrdersDisplayCubit() : super(OrdersLoading());

  void displayOrders() async {
    var returnedData = await sl<GetOrdersUseCase>().call();
    returnedData.fold(
      (error){
        emit(LoadOrdersFailure(errorMessage: error));
      }, 
      (orders) {
        emit(OrdersLoaded(orders: orders));
      }
    );
  }
}