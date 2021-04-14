import 'package:graphql/client.dart';

import '../../data/graphql/fliper_graphql_client.dart';
import '../../data/queries/wealth_summary_queries.dart';
import '../../shared/result.dart';
import '../models/wealth_summary_model.dart';

class WealthSummaryService {
  FliperGraphQLClient client = FliperGraphQLClient();

  Future<Result<WealthSummaryModel>> getWealthSummary() async {
    try {
      final result = await client
          .query(QueryOptions(document: gql(getWealthSummaryQuery)));

      if (result.data == null) {
        return Result.failure("Could not query WealthSummary");
      }

      final map = result.data!["wealthSummary"][0];
      final model = WealthSummaryModel.fromMap(map);

      return Result.success(model);
    } catch (error) {
      return Result.failure(error.toString());
    }
  }
}
