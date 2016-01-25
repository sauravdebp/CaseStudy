using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SecMaster_DAL.DataModel
{
    public class CorporateBond : Security
    {
        public int SecurityId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string AssetType { get; set; }
        public string InvestmentType { get; set; }
        public float TradingFactor { get; set; }
        public float PricingFactor { get; set; }
        public string ISIN { get; set; }
        public string BBG_Ticker { get; set; }
        public string BBG_UniqueID { get; set; }
        public string CUSIP { get; set; }
        public string SEDOL { get; set; }
        public DateTime FirstCouponDate { get; set; }
        public string Cap { get; set; }
        public string BondFloor { get; set; }
        public float CouponFrequency { get; set; }
        public float Coupon { get; set; }
        public string CouponType { get; set; }
        public string Spread { get; set; }
        public bool CallableFlag { get; set; }
        public bool FixToFloatFlag { get; set; }
        public bool PutableFlag { get; set; }
        public DateTime IssueDate { get; set; }
        public DateTime LastResetDate { get; set; }
        public DateTime Maturity { get; set; }
        public int CallNotificationMaxDays { get; set; }
        public int PutNotificationMaxDays { get; set; }
        public DateTime PenultimateCouponDate { get; set; }
        public string ResetFrequency { get; set; }
        public bool HasPosition { get; set; }
        public float MacaulayDuration { get; set; }
        public float Volatility_30D { get; set; }
        public float Volatility_90D { get; set; }
        public float Convexity { get; set; }
        public float AverageVolume_30D { get; set; }
        public string Pf_AssetClass { get; set; }
        public string Pf_Country { get; set; }
        public string Pf_CreditRating { get; set; }
        public string Pf_Currency { get; set; }
        public string Pf_Instrument { get; set; }
        public string Pf_LiquidityProfile { get; set; }
        public string Pf_Maturity { get; set; }
        public string Pf_NAICS_Code { get; set; }
        public string Pf_Region { get; set; }
        public string Pf_Sector { get; set; }
        public string Pf_SubAssetClass { get; set; }
        public string BBG_IndustryGroup { get; set; }
        public string BBG_IndustrySubGroup { get; set; }
        public string BBG_IndustrySector { get; set; }
        public string CountryOfIssuance { get; set; }
        public string IssueCurrency { get; set; }
        public string Issuer { get; set; }
        public string RiskCurrency { get; set; }
        public DateTime PutDate { get; set; }
        public float PutPrice { get; set; }
        public float AskPrice { get; set; }
        public float HighPrice { get; set; }
        public float LowPrice { get; set; }
        public float OpenPrice { get; set; }
        public float Volume { get; set; }
        public float BidPrice { get; set; }
        public float LastPrice { get; set; }
        public DateTime CallDate { get; set; }
        public float CallPrice { get; set; }
    }
}
