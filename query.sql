select pp.ranking,cn.countryname,pp.population,cr.currency,pc.phonecode,cg.lat,cg.long from countrycodes as cc
inner join
countrygeo cg on cg.code2=cc.code2
inner join 
countryname cn on cn.code2=cc.code2
inner join 
currencies as cr on cr.code2=cc.code2
inner join 
phonecodes as pc on pc.code2 = cc.code2
inner join 
population as pp on pp.code3 = cc.code3
where 1=1
--cn.countryname='Germany'
--and pp.ranking='96'
order by pp.ranking asc;
