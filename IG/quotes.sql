select [Provider] ,[Start] ,[End] ,[Epic]
      ,[Timeframe] as TimeframeInt,
		CASE
			WHEN [Timeframe] = 1 THEN 'Tick'
			WHEN [Timeframe] = 2 THEN 'S1'
			WHEN [Timeframe] = 3 THEN 'M1'
			WHEN [Timeframe] = 4 THEN 'M2'
			WHEN [Timeframe] = 5 THEN 'M3'
			WHEN [Timeframe] = 6 THEN 'M5'
			WHEN [Timeframe] = 7 THEN 'M10'
			WHEN [Timeframe] = 8 THEN 'M15'
			WHEN [Timeframe] = 9 THEN 'M30'
			WHEN [Timeframe] = 10 THEN 'H1'
			WHEN [Timeframe] = 11 THEN 'H2'
			WHEN [Timeframe] = 12 THEN 'H3'
			WHEN [Timeframe] = 13 THEN 'H4'
			WHEN [Timeframe] = 14 THEN 'D1'
			WHEN [Timeframe] = 15 THEN 'W'
			WHEN [Timeframe] = 16 THEN 'H'
			ELSE 'UNK'
		END AS TimeframeStr
      ,[OpenAsk] ,[OpenBid] ,[HighAsk] ,[HighBid] ,[LowAsk] ,[LowBid] ,[CloseAsk] ,[CloseBid] ,[Volume]
  from [MarketInvader].[dbo].[Quotes] q
  where q.Start >= '2025-03-09' and q.Start < '2025-03-10' and q.Timeframe <> 2
  order by q.Start, q.Timeframe