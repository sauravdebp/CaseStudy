using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SecMaster_DAL.DataModel
{
    public class Equity
    {
        public int SecurityId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public bool HasPosition { get; set; }
        public bool IsActiveSecurity { get; set; }
        public float LotSize { get; set; }
        public string BBG_UniqueName { get; set; }
        public string CUSIP { get; set; }
        public string ISIN { get; set; }
        public string SEDOL { get; set; }
        public string BBG_Ticker { get; set; }
        public string BBG_UniqueID { get; set; }
        public string BBG_GlobalID { get; set; }
        public string TickerAndExchange { get; set; }
        public bool IsAdrFlag { get; set; }
        public string AdrUnderlyingTicker { get; set; }
        public string AdrUnderlyingCurrency { get; set; }
        public float SharesPerADR { get; set; }
        public DateTime IPODate { get; set; }
        public string PricingCurrency { get; set; }
        public float SettleDays { get; set; }
        public float TotalSharesOutstanding { get; set; }
        public float VotingRightsPerShare { get; set; }
        public float AverageVolume_20D { get; set; }
        public float Beta { get; set; }
        public float ShortInterest { get; set; }
        public float Return_YTD { get; set; }
        public float Volatility_90D { get; set; }
        public string PF_AssetClass { get; set; }
        public string PF_Country { get; set; }
        public string PF_CreditRating { get; set; }
        public string PF_Currency { get; set; }
        public string PF_Instrument { get; set; }
        public string PF_LiquidityProfile { get; set; }
        public string PF_Maturity { get; set; }
        public string PF_NAICS_Code { get; set; }
        public string PF_Region { get; set; }
        public string PF_Sector { get; set; }
        public string PF_SubAssetClass { get; set; }
        public string CountryOfIssuance { get; set; }
        public string Exchange { get; set; }
        public string Issuer { get; set; }
        public string IssueCurrency { get; set; }
        public string TradingCurrency { get; set; }
        public string BBG_IndustrySubGroup { get; set; }
        public string BBG_IndustryGroup { get; set; }
        public string BBG_Sector { get; set; }
        public string CountryOfIncorporation { get; set; }
        public string RiskCurrency { get; set; }
        public float OpenPrice { get; set; }
        public float ClosePrice { get; set; }
        public float Volume { get; set; }
        public float LastPrice { get; set; }
        public float AskPrice { get; set; }
        public float BidPrice { get; set; }
        public float PE_Ratio { get; set; }
        public DateTime DividendDeclaredDate { get; set; }
        public DateTime DividendExDate { get; set; }
        public DateTime DividendRecordDate { get; set; }
        public DateTime DividendPayDate { get; set; }
        public float DividendAmount { get; set; }
        public string Frequency { get; set; }
        public string DividendType { get; set; }
    }
}
