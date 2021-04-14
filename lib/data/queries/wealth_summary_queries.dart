const String getWealthSummaryQuery = r'''
  query GetWealthSummary {
    wealthSummary {
      cdi
      gain
      hasHistory
      id
      profitability
      total
    }
  }
''';
