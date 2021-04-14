import 'package:graphql/client.dart';
import 'package:hive/hive.dart';

import '../../env.dart';

class FliperGraphQLClient extends GraphQLClient {
  static final _secret = Env.secret;
  static final _endpoint =
      "https://harura-fliper-test.herokuapp.com/v1/graphql";

  static final FliperGraphQLClient _singleton = FliperGraphQLClient._instance();
  factory FliperGraphQLClient() => _singleton;

  FliperGraphQLClient._({required HttpLink link, required GraphQLCache cache})
      : super(link: link, cache: cache);

  factory FliperGraphQLClient._instance() {
    final link = HttpLink(_endpoint, defaultHeaders: {
      "content-type": "application/json",
      "x-hasura-admin-secret": _secret
    });

    final box = Hive.box("hasura");

    return FliperGraphQLClient._(
      link: link,
      cache: GraphQLCache(store: HiveStore(box)),
    );
  }
}
