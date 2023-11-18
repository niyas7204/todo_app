import 'package:todo_app/core/enums/enums.dart';

class StateResponse<T> {
  String? errorMessage;
  T? data;
  StateStatus? status;
  StateResponse(this.data, this.errorMessage, this.status);
  StateResponse.loading() : status = StateStatus.loading;
  StateResponse.error(this.errorMessage) : status = StateStatus.error;
  StateResponse.initial() : status = StateStatus.initial;
  StateResponse.success(this.data) : status = StateStatus.success;
}
