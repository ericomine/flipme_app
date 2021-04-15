// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$localeAtom = Atom(name: '_HomeStoreBase.locale');

  @override
  String get locale {
    _$localeAtom.reportRead();
    return super.locale;
  }

  @override
  set locale(String value) {
    _$localeAtom.reportWrite(value, super.locale, () {
      super.locale = value;
    });
  }

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

  final _$cardHeightAtom = Atom(name: '_HomeStoreBase.cardHeight');

  @override
  double get cardHeight {
    _$cardHeightAtom.reportRead();
    return super.cardHeight;
  }

  @override
  set cardHeight(double value) {
    _$cardHeightAtom.reportWrite(value, super.cardHeight, () {
      super.cardHeight = value;
    });
  }

  final _$loadWealthSummaryAsyncAction =
      AsyncAction('_HomeStoreBase.loadWealthSummary');

  @override
  Future<bool> loadWealthSummary() {
    return _$loadWealthSummaryAsyncAction.run(() => super.loadWealthSummary());
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void setLocale(String value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setLocale');
    try {
      return super.setLocale(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCardHeight(double value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setCardHeight');
    try {
      return super.setCardHeight(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locale: ${locale},
loading: ${loading},
didLoad: ${didLoad},
errorMessage: ${errorMessage},
wealthSummary: ${wealthSummary},
cardHeight: ${cardHeight}
    ''';
  }
}
