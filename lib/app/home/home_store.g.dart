// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$loadingAtom = Atom(name: '_HomeStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$didLoadAtom = Atom(name: '_HomeStoreBase.didLoad');

  @override
  bool get didLoad {
    _$didLoadAtom.reportRead();
    return super.didLoad;
  }

  @override
  set didLoad(bool value) {
    _$didLoadAtom.reportWrite(value, super.didLoad, () {
      super.didLoad = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_HomeStoreBase.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$wealthSummaryAtom = Atom(name: '_HomeStoreBase.wealthSummary');

  @override
  WealthSummaryModel? get wealthSummary {
    _$wealthSummaryAtom.reportRead();
    return super.wealthSummary;
  }

  @override
  set wealthSummary(WealthSummaryModel? value) {
    _$wealthSummaryAtom.reportWrite(value, super.wealthSummary, () {
      super.wealthSummary = value;
    });
  }

  final _$loadWealthSummaryAsyncAction =
      AsyncAction('_HomeStoreBase.loadWealthSummary');

  @override
  Future<bool> loadWealthSummary() {
    return _$loadWealthSummaryAsyncAction.run(() => super.loadWealthSummary());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
didLoad: ${didLoad},
errorMessage: ${errorMessage},
wealthSummary: ${wealthSummary}
    ''';
  }
}
