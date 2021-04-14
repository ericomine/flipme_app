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

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void loadWealthSummary() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.loadWealthSummary');
    try {
      return super.loadWealthSummary();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
didLoad: ${didLoad},
wealthSummary: ${wealthSummary}
    ''';
  }
}
