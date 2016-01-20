using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SecurityMaster
{
    class CorporateBond
    {
        int securityId;
        public int SecurityId
        {
            get { return securityId; }
            set { securityId = value; }
        }

        string name;
        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        string bondDescription;
        public string BondDescription
        {
            get { return bondDescription; }
            set { bondDescription = value; }
        }

        string assetType;
        public string AssetType
        {
            get { return assetType; }
            set { assetType = value; }
        }

        string investmentType;
        public string InvestmentType
        {
            get { return investmentType; }
            set { investmentType = value; }
        }

        string tradingFactor;
        public string TradingFactor
        {
            get { return tradingFactor; }
            set { tradingFactor = value; }
        }

        string pricingFactor;
        public string PricingFactor
        {
            get { return pricingFactor; }
            set { pricingFactor = value; }
        }

        string isin;
        public string Isin
        {
            get { return isin; }
            set { isin = value; }
        }

        string bbg_Ticker;
        public string Bbg_Ticker
        {
            get { return bbg_Ticker; }
            set { bbg_Ticker = value; }
        }

        string bbg_UniqueID;
        public string Bbg_UniqueID
        {
            get { return bbg_UniqueID; }
            set { bbg_UniqueID = value; }
        }

        string cusip;
        public string Cusip
        {
            get { return cusip; }
            set { cusip = value; }
        }

        string sedol;
        public string Sedol
        {
            get { return sedol; }
            set { sedol = value; }
        }

        string firstCouponDate;
        public string FirstCouponDate
        {
            get { return firstCouponDate; }
            set { firstCouponDate = value; }
        }

        string cap;
        public string Cap
        {
            get { return cap; }
            set { cap = value; }
        }

        string bondFloor;
        public string BondFloor
        {
            get { return bondFloor; }
            set { bondFloor = value; }
        }

        string couponFrequency;
        public string CouponFrequency
        {
            get { return couponFrequency; }
            set { couponFrequency = value; }
        }

        string coupon;

        public string Coupon
        {
            get { return coupon; }
            set { coupon = value; }
        }

        string couponType;

        public string CouponType
        {
            get { return couponType; }
            set { couponType = value; }
        }

        string spread;

        public string Spread
        {
            get { return spread; }
            set { spread = value; }
        }

        bool callableFlag;

        public bool CallableFlag
        {
            get { return callableFlag; }
            set { callableFlag = value; }
        }

        bool fixToFloatFlag;

        public bool FixToFloatFlag
        {
            get { return fixToFloatFlag; }
            set { fixToFloatFlag = value; }
        }

        bool putableFlag;

        public bool PutableFlag
        {
            get { return putableFlag; }
            set { putableFlag = value; }
        }

        DateTime issueDate;

        public DateTime IssueDate
        {
            get { return issueDate; }
            set { issueDate = value; }
        }

        DateTime lastResetDate;

        public DateTime LastResetDate
        {
            get { return lastResetDate; }
            set { lastResetDate = value; }
        }

        DateTime maturity;

        public DateTime Maturity
        {
            get { return maturity; }
            set { maturity = value; }
        }

        int callNotificationMaxDays;

        public int CallNotificationMaxDays
        {
            get { return callNotificationMaxDays; }
            set { callNotificationMaxDays = value; }
        }

        int putNotificationMaxDays;

        public int PutNotificationMaxDays
        {
            get { return putNotificationMaxDays; }
            set { putNotificationMaxDays = value; }
        }

        DateTime penultimateCouponDate;

        public DateTime PenultimateCouponDate
        {
            get { return penultimateCouponDate; }
            set { penultimateCouponDate = value; }
        }

        string resetFrequency;

        public string ResetFrequency
        {
            get { return resetFrequency; }
            set { resetFrequency = value; }
        }

        bool hasPosition;

        public bool HasPosition
        {
            get { return hasPosition; }
            set { hasPosition = value; }
        }

        float macaulayDuration;

        public float MacaulayDuration
        {
            get { return macaulayDuration; }
            set { macaulayDuration = value; }
        }

        float volatility_30D;

        public float Volatility_30D
        {
            get { return volatility_30D; }
            set { volatility_30D = value; }
        }

        float volatility_90D;

        public float Volatility_90D
        {
            get { return volatility_90D; }
            set { volatility_90D = value; }
        }

        float convexity;

        public float Convexity
        {
            get { return convexity; }
            set { convexity = value; }
        }

        float averageVolume_30D;

        public float AverageVolume_30D
        {
            get { return averageVolume_30D; }
            set { averageVolume_30D = value; }
        }

        string pf_AssetClass;

        public string Pf_AssetClass
        {
            get { return pf_AssetClass; }
            set { pf_AssetClass = value; }
        }

        string pf_Country;

        public string Pf_Country
        {
            get { return pf_Country; }
            set { pf_Country = value; }
        }

        string pf_CreditRating;

        public string Pf_CreditRating
        {
            get { return pf_CreditRating; }
            set { pf_CreditRating = value; }
        }

        string pf_Currency;

        public string Pf_Currency
        {
            get { return pf_Currency; }
            set { pf_Currency = value; }
        }

        string pf_Instrument;

        public string Pf_Instrument
        {
            get { return pf_Instrument; }
            set { pf_Instrument = value; }
        }

        string pf_LiquidityProfile;

        public string Pf_LiquidityProfile
        {
            get { return pf_LiquidityProfile; }
            set { pf_LiquidityProfile = value; }
        }

        string pf_Maturity;

        public string Pf_Maturity
        {
            get { return pf_Maturity; }
            set { pf_Maturity = value; }
        }

        string pf_NAICS_Code;

        public string Pf_NAICS_Code
        {
            get { return pf_NAICS_Code; }
            set { pf_NAICS_Code = value; }
        }

        string pf_Region;

        public string Pf_Region
        {
            get { return pf_Region; }
            set { pf_Region = value; }
        }

        string pf_Sector;

        public string Pf_Sector
        {
            get { return pf_Sector; }
            set { pf_Sector = value; }
        }

        string pf_SubAssetClass;

        public string Pf_SubAssetClass
        {
            get { return pf_SubAssetClass; }
            set { pf_SubAssetClass = value; }
        }

        string bbg_IndustryGroup;

        public string Bbg_IndustryGroup
        {
            get { return bbg_IndustryGroup; }
            set { bbg_IndustryGroup = value; }
        }

        string bbg_IndustrySubGroup;

        public string Bbg_IndustrySubGroup
        {
            get { return bbg_IndustrySubGroup; }
            set { bbg_IndustrySubGroup = value; }
        }

        string bbg_IndustrySector;

        public string Bbg_IndustrySector
        {
            get { return bbg_IndustrySector; }
            set { bbg_IndustrySector = value; }
        }

        string countryOfIssuance;

        public string CountryOfIssuance
        {
            get { return countryOfIssuance; }
            set { countryOfIssuance = value; }
        }

        string issueCurrency;

        public string IssueCurrency
        {
            get { return issueCurrency; }
            set { issueCurrency = value; }
        }

        string issuer;

        public string Issuer
        {
            get { return issuer; }
            set { issuer = value; }
        }

        string riskCurrency;

        public string RiskCurrency
        {
            get { return riskCurrency; }
            set { riskCurrency = value; }
        }

        DateTime putDate;

        public DateTime PutDate
        {
            get { return putDate; }
            set { putDate = value; }
        }

        DateTime putPrice;

        public DateTime PutPrice
        {
            get { return putPrice; }
            set { putPrice = value; }
        }

        float askPrice;

        public float AskPrice
        {
            get { return askPrice; }
            set { askPrice = value; }
        }

        float highPrice;

        public float HighPrice
        {
            get { return highPrice; }
            set { highPrice = value; }
        }

        float lowPrice;

        public float LowPrice
        {
            get { return lowPrice; }
            set { lowPrice = value; }
        }

        float openPrice;

        public float OpenPrice
        {
            get { return openPrice; }
            set { openPrice = value; }
        }

        float volume;

        public float Volume
        {
            get { return volume; }
            set { volume = value; }
        }

        float bidPrice;

        public float BidPrice
        {
            get { return bidPrice; }
            set { bidPrice = value; }
        }

        float lastPrice;

        public float LastPrice
        {
            get { return lastPrice; }
            set { lastPrice = value; }
        }

        DateTime callDate;

        public DateTime CallDate
        {
            get { return callDate; }
            set { callDate = value; }
        }

        float callPrice;

        public float CallPrice
        {
            get { return callPrice; }
            set { callPrice = value; }
        }
    }
}
