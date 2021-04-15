import 'package:mobx/mobx.dart';

import '../../domain/models/wealth_summary_model.dart';
import '../../domain/services/wealth_summary_service.dart';
import '../../shared/result.dart';
import '../shared/formatters/currency_format.dart';
import '../shared/formatters/rate_format.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final wealthSummaryService = WealthSummaryService();

  @observable
  String locale = "";

  @observable
  bool loading = true;

  @observable
  bool didLoad = false;

  @observable
  String errorMessage = "";

  @observable
  WealthSummaryModel? wealthSummary;

  @observable
  double cardHeight = 0.0;

  String get totalWealthString =>
      CurrencyFormat(locale, true).format(wealthSummary!.total);
  String get profitabilityString =>
      RateFormat(locale, "#.000").format(wealthSummary!.profitability);
  String get cdiString => RateFormat(locale).format(wealthSummary!.cdi);
  String get gainString => CurrencyFormat(locale).format(wealthSummary!.gain);

  @action
  void setLocale(String value) => locale = value;

  @action
  void setCardHeight(double value) => cardHeight = value;

  @action
  Future<bool> loadWealthSummary() async {
    final result = await wealthSummaryService.getWealthSummary();

    if (result is Failure) {
      loading = false;
      didLoad = false;
      errorMessage = result.message;
      return false;
    }

    loading = false;
    didLoad = true;
    wealthSummary = result.value;
    return true;
  }
}
