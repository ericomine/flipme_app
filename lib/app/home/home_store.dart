import 'package:flipme_app/domain/models/wealth_summary_model.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  bool loading = true;

  @observable
  bool didLoad = false;

  @observable
  WealthSummaryModel? wealthSummary;

  @action
  void loadWealthSummary() {}
}
