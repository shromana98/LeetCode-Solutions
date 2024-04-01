
Select p.product_id, if(sum(units) is not null, round(sum(price*units)/sum(units),2),0) as average_price
from Prices p
left join UnitsSold u on (p.product_id = u.product_id AND u.purchase_date between p.start_date and p.end_date)
group by p.product_id