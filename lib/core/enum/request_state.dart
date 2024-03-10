enum RequestState {
  loading,
  success,
  error;

  bool get isError => this == RequestState.error;

  bool get isLoading => this == RequestState.loading;

  bool get isSuccess => this == RequestState.success;
}

enum RequestStateInitial {
  initial,
  loading,
  success,
  error;

  // empty,
  bool get isInitial => this == RequestStateInitial.initial;

  bool get isLoading => this == RequestStateInitial.loading;

  bool get isSuccess => this == RequestStateInitial.success;

  bool get isError => this == RequestStateInitial.error;
}
