Declare @merchantid int = 5724;
select DISTINCT ld.*
from MerchantProductsRel mpr 
INNER JOIN ProductsNew p ON p.ProductID = mpr.ProductID
INNER JOIN LocationMerchantProductsRel lmpr ON mpr.MerchantProductID = lmpr.MerchantProductID
INNER JOIN LocationDevice ld ON ld.locationid = lmpr.locationid
INNER JOIN MerchantProductsSalesChannelRel mpscr ON mpscr.MerchantProductID = mpr.MerchantProductID
LEFT JOIN MerchantProductPricing  mpp ON mpr.MerchantProductID = mpp.MerchantProductID
LEFT JOIN categorymerchantproductrel cmpr ON mpr.MerchantProductID = cmpr.MerchantProductID
LEFT JOIN CategoryProductRel cpr ON mpr.ProductID = cpr.ProductID
LEFT JOIN PricingPackages pp on mpp.PricingPackageID = pp.PricingPackageID


where mpr.MerchantID = @MerchantID
	AND mpr.Active = 1 
	 
	AND mpscr.SaleschannelID = 2


--	select * from LocationDeviceType
 