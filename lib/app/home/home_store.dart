import 'package:mobx/mobx.dart';

import '../../domain/models/wealth_summary_model.dart';
import '../../domain/services/wealth_summary_service.dart';
import '../../shared/result.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final wealthSummaryService = WealthSummaryService();

  @observable
  bool loading = true;

  @observable
  bool didLoad = false;

  @observable
  String errorMessage = "";

  @observable
  WealthSummaryModel? wealthSummary;

  String get totalWealthString => wealthSummary!.total.toStringAsFixed(2);
  String get profitabilityString =>
      wealthSummary!.profitability.toStringAsFixed(2);
  String get cdiString => wealthSummary!.cdi.toStringAsFixed(2);
  String get gainString => wealthSummary!.gain.toStringAsFixed(2);

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
