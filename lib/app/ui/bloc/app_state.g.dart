// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final bool isBoarding;
  @override
  final int currentIndex;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._({required this.isBoarding, required this.currentIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isBoarding, r'AppState', 'isBoarding');
    BuiltValueNullFieldError.checkNotNull(
        currentIndex, r'AppState', 'currentIndex');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        isBoarding == other.isBoarding &&
        currentIndex == other.currentIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isBoarding.hashCode);
    _$hash = $jc(_$hash, currentIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('isBoarding', isBoarding)
          ..add('currentIndex', currentIndex))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  bool? _isBoarding;
  bool? get isBoarding => _$this._isBoarding;
  set isBoarding(bool? isBoarding) => _$this._isBoarding = isBoarding;

  int? _currentIndex;
  int? get currentIndex => _$this._currentIndex;
  set currentIndex(int? currentIndex) => _$this._currentIndex = currentIndex;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isBoarding = $v.isBoarding;
      _currentIndex = $v.currentIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    final _$result = _$v ??
        new _$AppState._(
            isBoarding: BuiltValueNullFieldError.checkNotNull(
                isBoarding, r'AppState', 'isBoarding'),
            currentIndex: BuiltValueNullFieldError.checkNotNull(
                currentIndex, r'AppState', 'currentIndex'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
