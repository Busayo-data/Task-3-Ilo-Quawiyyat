select * from dbo.commerce
select OrderStatus, referralsource,count(orderid) as totalorders,
cast(sum(totalprice)as decimal(18,2))as totalprice,cast(avg(totalprice)as decimal(18,2)) as avgprice
from dbo.Commerce
group by OrderStatus, ReferralSource
order by orderstatus desc, totalorders desc, totalprice desc