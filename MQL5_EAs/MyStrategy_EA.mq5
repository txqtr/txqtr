MQL5_EAs/ followed by the name of your first MQL5 EA file (e.g., MQL5_EAs/MyStrategy_EA.mq5).
input double LotSize = 0.1;  // Lot size per trade
input int StopLossPips = 50;  // Stop-loss in pips
input int TakeProfitPips = 100; // Take-profit in pips

void OnTick()
{
  // Calculate indicators and identify trading signals
  // ...

  // Place orders based on signals
  if (SignalToBuy)
  {
    OrderSend(Symbol(), OP_BUY, LotSize, Ask, 3, StopLossPips * Point, TakeProfitPips * Point, "MyBuyOrder", 0, 0, clrGreen);
  }
  else if (SignalToSell)
  {
    OrderSend(Symbol(), OP_SELL, LotSize, Bid, 3, StopLossPips * Point, TakeProfitPips * Point, "MySellOrder", 0, 0, clrRed);
  }

  // Manage existing orders
  // ...
}
