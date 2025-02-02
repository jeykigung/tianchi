/**ui特征第一类：*/

/*第一小类*/
drop table if exists test.ui_1_1;
create table test.ui_1_1 as 
select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy from
(select user_id,item_id,ui_l1_buy,ui_l2_buy from
(select user_id,item_id,ui_l1_buy from feature.train_ui_l1_buy)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l2_buy from feature.train_ui_l2_buy)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l3_buy from feature.train_ui_l3_buy)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l5_buy from feature.train_ui_l5_buy)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l7_buy from feature.train_ui_l7_buy)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1);

/*第二小类*/
drop table if exists test.ui_1_2;
create table test.ui_1_2 as 
select user_id,item_id,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk from
(select user_id,item_id,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk from
(select user_id,item_id,ui_l1_clk,ui_l2_clk,ui_l3_clk from
(select user_id,item_id,ui_l1_clk,ui_l2_clk from
(select user_id,item_id,ui_l1_clk from feature.train_ui_l1_clk)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l2_clk from feature.train_ui_l2_clk)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l3_clk from feature.train_ui_l3_clk)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l5_clk from feature.train_ui_l5_clk)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l7_clk from feature.train_ui_l7_clk)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1);

/*第三小类*/

drop table if exists test.ui_1_3;
create table test.ui_1_3 as 
select user_id,item_id,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy from
(select user_id,item_id,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy from
(select user_id,item_id,ui_l10_buy,ui_l12_buy,ui_l15_buy from
(select user_id,item_id,ui_l10_buy,ui_l12_buy from
(select user_id,item_id,ui_l10_buy from feature.train_ui_l10_buy)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l12_buy from feature.train_ui_l12_buy)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l15_buy from feature.train_ui_l15_buy)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l20_buy from feature.train_ui_l20_buy)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l28_buy from feature.train_ui_l28_buy)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1);

/*第四小类*/


drop table if exists test.ui_1_4;
create table test.ui_1_4 as 
select user_id,item_id,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk from
(select user_id,item_id,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk from
(select user_id,item_id,ui_l10_clk,ui_l12_clk,ui_l15_clk from
(select user_id,item_id,ui_l10_clk,ui_l12_clk from
(select user_id,item_id,ui_l10_clk from feature.train_ui_l10_clk)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l12_clk from feature.train_ui_l12_clk)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l15_clk from feature.train_ui_l15_clk)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l20_clk from feature.train_ui_l20_clk)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l28_clk from feature.train_ui_l28_clk)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1);

/*第五小类*/

drop table if exists test.ui_1_5;
create table test.ui_1_5 as 
select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy from test.ui_1_1)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy from test.ui_1_3)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1);


/*第六小类*/

drop table if exists test.ui_1_6;
create table test.ui_1_6 as 
select user_id,item_id,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk from
(select user_id,item_id,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk from test.ui_1_2)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk from test.ui_1_4)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1);



/*ui特征第一类*/

drop table if exists test.ui_1;
create table test.ui_1 as 
select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk
 from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy
 from test.ui_1_5)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk
 from test.ui_1_6)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1);



/**ui特征第二类*/


/*第一小类*/

drop table if exists test.ui_2_1;
create table test.ui_2_1 as 
select user_id,item_id,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy from
(select user_id,item_id,ui_d12_buy,ui_week1_buy,ui_week2_buy from
(select user_id,item_id,ui_d12_buy,ui_week1_buy from
(select user_id,item_id,ui_d12_buy from feature.train_ui_d12_buy)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_week1_buy from feature.train_ui_week1_buy)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_week2_buy from feature.train_ui_week2_buy)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_week3_buy from feature.train_ui_week3_buy)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1);


/*第二小类*/

drop table if exists test.ui_2_2;
create table test.ui_2_2 as 
select user_id,item_id,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk from
(select user_id,item_id,ui_d12_clk,ui_week1_clk,ui_week2_clk from
(select user_id,item_id,ui_d12_clk,ui_week1_clk from
(select user_id,item_id,ui_d12_clk from feature.train_ui_d12_clk)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_week1_clk from feature.train_ui_week1_clk)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_week2_clk from feature.train_ui_week2_clk)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_week3_clk from feature.train_ui_week3_clk)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1);



/*ui特征第二类*/

drop table if exists test.ui_2;
create table test.ui_2 as 
select user_id,item_id,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk
 from
(select user_id,item_id,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy
 from test.ui_2_1)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk
 from test.ui_2_2)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1);


/**ui特征第三类*/

drop table if exists test.ui_3;
create table test.ui_3 as 
select user_id,item_id,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy from
(select user_id,item_id,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor from
(select user_id,item_id,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk from
(select user_id,item_id,ui_l_buy_date,ui_fl_buy_distance from
(select user_id,item_id,ui_l_buy_date from feature.train_ui_l_buy_date)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_fl_buy_distance from feature.train_ui_fl_buy_distance)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l_actday_clk from feature.train_ui_l_actday_clk)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l_actday_favor from feature.train_ui_l_actday_favor)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l_actday_buy from feature.train_ui_l_actday_buy)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1);


/**ui特征第四类*/

/*第一小类*/

drop table if exists test.ui_4_1;
create table test.ui_4_1 as 
select user_id,item_id,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act from
(select user_id,item_id,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act from
(select user_id,item_id,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act from
(select user_id,item_id,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy from
(select user_id,item_id,ui_l3_h1_buy,ui_l5_h1_buy from
(select user_id,item_id,ui_l3_h1_buy from feature.train_ui_l3_h1_buy)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l5_h1_buy from feature.train_ui_l5_h1_buy)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l7_h1_buy from feature.train_ui_l7_h1_buy)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l3_h1_act from feature.train_ui_l3_h1_act)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l5_h1_act from feature.train_ui_l5_h1_act)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1))i
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l7_h1_act from feature.train_ui_l7_h1_act)j
on(i.user_id=j.user_id_1 and i.item_id=j.item_id_1);


/*第二小类*/

drop table if exists test.ui_4_2;
create table test.ui_4_2 as 
select user_id,item_id,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart from
(select user_id,item_id,ui_f_buybefore_clk,ui_f_buybefore_favor from
(select user_id,item_id,ui_f_buybefore_clk from feature.train_ui_f_buybefore_clk)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_f_buybefore_favor from feature.train_ui_f_buybefore_favor)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_f_buybefore_cart from feature.train_ui_f_buybefore_cart)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1);


/*ui特征第四类*/


drop table if exists test.ui_4;
create table test.ui_4 as 
select user_id,item_id,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart 
from
(select user_id,item_id,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act
 from test.ui_4_1)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart
 from test.ui_4_2)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1);


/**ui特征第五类*/

/*第一小类*/

drop table if exists test.ui_5_1;
create table test.ui_5_1 as 
select user_id,item_id,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy from
(select user_id,item_id,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy from
(select user_id,item_id,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy from
(select user_id,item_id,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy from
(select user_id,item_id,ui_l7_clk2buy,ui_l14_clk2buy from
(select user_id,item_id,ui_l7_clk2buy from feature.train_ui_l7_clk2buy)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l14_clk2buy from feature.train_ui_l14_clk2buy)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l28_clk2buy from feature.train_ui_l28_clk2buy)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l7_later2buy from feature.train_ui_l7_later2buy)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l14_later2buy from feature.train_ui_l14_later2buy)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1))i
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l28_later2buy from feature.train_ui_l28_later2buy)j
on(i.user_id=j.user_id_1 and i.item_id=j.item_id_1);



/*第二小类*/

drop table if exists test.ui_5_2;
create table test.ui_5_2 as 
select user_id,item_id,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance from
(select user_id,item_id,ui_l_act_distance from feature.train_ui_l_act_distance)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_min_distance,ui_avg_distance,ui_max_distance from feature.train_ui_distance)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1);


/*ui特征第五类*/


drop table if exists test.ui_5;
create table test.ui_5 as 
select user_id,item_id,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance
from
(select user_id,item_id,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy
 from test.ui_5_1)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance
 from test.ui_5_2)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1);





/*ui全部特征（52+2）*/

drop table if exists test.ui;
create table test.ui as 
select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk from test.ui_1)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk from test.ui_2)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy from test.ui_3)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart from test.ui_4)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance from test.ui_5)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1);



drop table if exists result.train_ui;
create table result.train_ui as 
select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk from test.ui_1)a
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk from test.ui_2)b
on(a.user_id=b.user_id_1 and a.item_id=b.item_id_1))c
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy from test.ui_3)d
on(c.user_id=d.user_id_1 and c.item_id=d.item_id_1))e
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart from test.ui_4)f
on(e.user_id=f.user_id_1 and e.item_id=f.item_id_1))g
left outer join
(select user_id as user_id_1,item_id as item_id_1,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance from test.ui_5)h
on(g.user_id=h.user_id_1 and g.item_id=h.item_id_1);




/**user特征第一类*/


/*第一小类*/


drop table if exists test.user_1_1;
create table test.user_1_1 as 
select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk from
(select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk from
(select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk from
(select user_id,user_l1_clk,user_l3_clk,user_l7_clk from
(select user_id,user_l1_clk,user_l3_clk from
(select user_id,user_l1_clk from feature.train_user_l1_clk)a
left outer join
(select user_id as user_id_1,user_l3_clk from feature.train_user_l3_clk)b
on(a.user_id=b.user_id_1))c
left outer join
(select user_id as user_id_1,user_l7_clk from feature.train_user_l7_clk)d
on(c.user_id=d.user_id_1))e
left outer join
(select user_id as user_id_1,user_l10_clk from feature.train_user_l10_clk)f
on(e.user_id=f.user_id_1))g
left outer join
(select user_id as user_id_1,user_l14_clk from feature.train_user_l14_clk)h
on(g.user_id=h.user_id_1))i
left outer join
(select user_id as user_id_1,user_l28_clk from feature.train_user_l28_clk)j
on(i.user_id=j.user_id_1);


/*第二小类*/


drop table if exists test.user_1_2;
create table test.user_1_2 as 
select user_id,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy from
(select user_id,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy from
(select user_id,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy from
(select user_id,user_l1_buy,user_l3_buy,user_l7_buy from
(select user_id,user_l1_buy,user_l3_buy from
(select user_id,user_l1_buy from feature.train_user_l1_buy)a
left outer join
(select user_id as user_id_1,user_l3_buy from feature.train_user_l3_buy)b
on(a.user_id=b.user_id_1))c
left outer join
(select user_id as user_id_1,user_l7_buy from feature.train_user_l7_buy)d
on(c.user_id=d.user_id_1))e
left outer join
(select user_id as user_id_1,user_l10_buy from feature.train_user_l10_buy)f
on(e.user_id=f.user_id_1))g
left outer join
(select user_id as user_id_1,user_l14_buy from feature.train_user_l14_buy)h
on(g.user_id=h.user_id_1))i
left outer join
(select user_id as user_id_1,user_l28_buy from feature.train_user_l28_buy)j
on(i.user_id=j.user_id_1);


/*user特征第一类*/

drop table if exists test.user_1;
create table test.user_1 as 
select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy
 from
(select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk
 from test.user_1_1)a
left outer join
(select user_id as user_id_1,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy
 from test.user_1_2)b
on(a.user_id=b.user_id_1);



/**user特征第二类*/


drop table if exists test.user_2;
create table test.user_2 as 
select user_id,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date from
(select user_id,user_d12_clk,user_d12_buy,user_l_act_date from
(select user_id,user_d12_clk,user_d12_buy from
(select user_id,user_d12_clk from feature.train_user_d12_clk)a
left outer join
(select user_id as user_id_1,user_d12_buy from feature.train_user_d12_buy)b
on(a.user_id=b.user_id_1))c
left outer join
(select user_id as user_id_1,user_l_act_date from feature.train_user_l_act_date)d
on(c.user_id=d.user_id_1))e
left outer join
(select user_id as user_id_1,user_l_buy_date from feature.train_user_l_buy_date)f
on(e.user_id=f.user_id_1);


/**user特征第三类*/

/*第一小类*/

drop table if exists test.user_3_1;
create table test.user_3_1 as 
select user_id,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy from
(select user_id,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy from
(select user_id,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy from
(select user_id,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy from
(select user_id,user_l7_clk2buy,user_l14_clk2buy from
(select user_id,user_l7_clk2buy from feature.train_user_l7_clk2buy)a
left outer join
(select user_id as user_id_1,user_l14_clk2buy from feature.train_user_l14_clk2buy)b
on(a.user_id=b.user_id_1))c
left outer join
(select user_id as user_id_1,user_l28_clk2buy from feature.train_user_l28_clk2buy)d
on(c.user_id=d.user_id_1))e
left outer join
(select user_id as user_id_1,user_l7_later2buy from feature.train_user_l7_later2buy)f
on(e.user_id=f.user_id_1))g
left outer join
(select user_id as user_id_1,user_l14_later2buy from feature.train_user_l14_later2buy)h
on(g.user_id=h.user_id_1))i
left outer join
(select user_id as user_id_1,user_l28_later2buy from feature.train_user_l28_later2buy)j
on(i.user_id=j.user_id_1);


/*第二小类*/

drop table if exists test.user_3_2;
create table test.user_3_2 as 
select user_id,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy from
(select user_id,user_l7_h1_buy,user_l14_h1_buy from
(select user_id,user_l7_h1_buy from feature.train_user_l7_h1_buy)a
left outer join
(select user_id as user_id_1,user_l14_h1_buy from feature.train_user_l14_h1_buy)b
on(a.user_id=b.user_id_1))c
left outer join
(select user_id as user_id_1,user_l28_h1_buy from feature.train_user_l28_h1_buy)d
on(c.user_id=d.user_id_1);

/*user特征第三类*/

drop table if exists test.user_3;
create table test.user_3 as 
select user_id,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy
 from
(select user_id,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy
 from test.user_3_1)a
left outer join
(select user_id as user_id_1,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy
 from test.user_3_2)b
on(a.user_id=b.user_id_1);




/*user全部特征（25+1）*/

drop table if exists test.user;
create table test.user as 
select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy from
(select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date from
(select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy from test.user_1)a
left outer join
(select user_id as user_id_1,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date from test.user_2)b
on(a.user_id=b.user_id_1))c
left outer join
(select user_id as user_id_1,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy from test.user_3)d
on(c.user_id=d.user_id_1);



drop table if exists result.train_user;
create table result.train_user as 
select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy from
(select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date from
(select user_id,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy from test.user_1)a
left outer join
(select user_id as user_id_1,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date from test.user_2)b
on(a.user_id=b.user_id_1))c
left outer join
(select user_id as user_id_1,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy from test.user_3)d
on(c.user_id=d.user_id_1);



/**item特征第一类*/

/*第一小类*/

drop table if exists test.item_1_1;
create table test.item_1_1 as 
select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy from
(select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy from
(select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy from
(select item_id,item_l1_buy,item_l3_buy,item_l7_buy from
(select item_id,item_l1_buy,item_l3_buy from
(select item_id,item_l1_buy from feature.train_item_l1_buy)a
left outer join
(select item_id as item_id_1,item_l3_buy from feature.train_item_l3_buy)b
on(a.item_id=b.item_id_1))c
left outer join
(select item_id as item_id_1,item_l7_buy from feature.train_item_l7_buy)d
on(c.item_id=d.item_id_1))e
left outer join
(select item_id as item_id_1,item_l14_buy from feature.train_item_l14_buy)f
on(e.item_id=f.item_id_1))g
left outer join
(select item_id as item_id_1,item_l28_buy from feature.train_item_l28_buy)h
on(g.item_id=h.item_id_1))i
left outer join
(select item_id as item_id_1,item_d12_buy from feature.item_d12_buy)j
on(i.item_id=j.item_id_1);


/*第二小类*/

drop table if exists test.item_1_2;
create table test.item_1_2 as 
select item_id,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy from
(select item_id,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy from
(select item_id,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy from
(select item_id,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy from
(select item_id,item_l1_ave_buy,item_l3_ave_buy from
(select item_id,item_l1_ave_buy from feature.train_item_l1_ave_buy)a
left outer join
(select item_id as item_id_1,item_l3_ave_buy from feature.train_item_l3_ave_buy)b
on(a.item_id=b.item_id_1))c
left outer join
(select item_id as item_id_1,item_l7_ave_buy from feature.train_item_l7_ave_buy)d
on(c.item_id=d.item_id_1))e
left outer join
(select item_id as item_id_1,item_l14_ave_buy from feature.train_item_l14_ave_buy)f
on(e.item_id=f.item_id_1))g
left outer join
(select item_id as item_id_1,item_l28_ave_buy from feature.train_item_l28_ave_buy)h
on(g.item_id=h.item_id_1))i
left outer join
(select item_id as item_id_1,item_d12_ave_buy from feature.item_d12_ave_buy)j
on(i.item_id=j.item_id_1);



/*第三小类*/

drop table if exists test.item_1_3;
create table test.item_1_3 as 
select item_id,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user from
(select item_id,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user from
(select item_id,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user from
(select item_id,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user from
(select item_id,item_l1_buy_user,item_l3_buy_user from
(select item_id,item_l1_buy_user from feature.train_item_l1_buy_user)a
left outer join
(select item_id as item_id_1,item_l3_buy_user from feature.train_item_l3_buy_user)b
on(a.item_id=b.item_id_1))c
left outer join
(select item_id as item_id_1,item_l7_buy_user from feature.train_item_l7_buy_user)d
on(c.item_id=d.item_id_1))e
left outer join
(select item_id as item_id_1,item_l14_buy_user from feature.train_item_l14_buy_user)f
on(e.item_id=f.item_id_1))g
left outer join
(select item_id as item_id_1,item_l28_buy_user from feature.train_item_l28_buy_user)h
on(g.item_id=h.item_id_1))i
left outer join
(select item_id as item_id_1,item_d12_buy_user from feature.item_d12_buy_user)j
on(i.item_id=j.item_id_1);


/**item特征第一类*/

drop table if exists test.item_1;
create table test.item_1 as 
select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user from
(select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy from
(select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy from test.item_1_1)a
left outer join
(select item_id as item_id_1,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy from test.item_1_2)b
on(a.item_id=b.item_id_1))c
left outer join
(select item_id as item_id_1,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user from test.item_1_3)d
on(c.item_id=d.item_id_1);



/**item特征第二类*/

drop table if exists test.item_2;
create table test.item_2 as 
select item_id,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date from
(select item_id,item_distinct_day_buy,item_rebuy_rate from
(select item_id,item_distinct_day_buy from feature.train_item_l28_distinct_day_buy)a
left outer join
(select item_id as item_id_1,item_rebuy_rate from feature.train_item_l28_rebuyrate)b
on(a.item_id=b.item_id_1))c
left outer join
(select item_id as item_id_1,item_l_buy_date from feature.train_item_l_buy_date)d
on(c.item_id=d.item_id_1);


/*item全部特征（21+1）*/

drop table if exists test.item;
create table test.item as 
select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date from
(select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user from test.item_1)a
left outer join
(select item_id as item_id_1,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date from test.item_2)b
on(a.item_id=b.item_id_1);


drop table if exists result.train_item;
create table result.train_item as 
select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date from
(select item_id,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user from test.item_1)a
left outer join
(select item_id as item_id_1,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date from test.item_2)b
on(a.item_id=b.item_id_1);






/*category全部特征(5+1)*/

drop table if exists test.category;
create table test.category as 
select category_id,category_l7_buy,category_l14_buy,category_l28_buy,category_distinct_day_buy,category_rebuy_rate from
(select category_id,category_l7_buy,category_l14_buy,category_l28_buy,category_distinct_day_buy from
(select category_id,category_l7_buy,category_l14_buy,category_l28_buy from
(select category_id,category_l7_buy,category_l14_buy from
(select category_id,category_l7_buy from feature.train_category_l7_buy)a
left outer join
(select category_id as category_id_1,category_l14_buy from feature.train_category_l14_buy)b
on(a.category_id=b.category_id_1))c
left outer join
(select category_id as category_id_1,category_l28_buy from feature.train_category_l28_buy)d
on(c.category_id=d.category_id_1))e
left outer join
(select category_id as category_id_1,category_distinct_day_buy from feature.train_category_l28_distinct_day_buy)f
on(e.category_id=f.category_id_1))g
left outer join
(select category_id as category_id_1,category_rebuy_rate from feature.train_category_l28_rebuyrate)h
on(g.category_id=h.category_id_1);


drop table if exists result.train_category;
create table result.train_category as 
select category_id,category_l7_buy,category_l14_buy,category_l28_buy,category_distinct_day_buy,category_rebuy_rate from
(select category_id,category_l7_buy,category_l14_buy,category_l28_buy,category_distinct_day_buy from
(select category_id,category_l7_buy,category_l14_buy,category_l28_buy from
(select category_id,category_l7_buy,category_l14_buy from
(select category_id,category_l7_buy from feature.train_category_l7_buy)a
left outer join
(select category_id as category_id_1,category_l14_buy from feature.train_category_l14_buy)b
on(a.category_id=b.category_id_1))c
left outer join
(select category_id as category_id_1,category_l28_buy from feature.train_category_l28_buy)d
on(c.category_id=d.category_id_1))e
left outer join
(select category_id as category_id_1,category_distinct_day_buy from feature.train_category_l28_distinct_day_buy)f
on(e.category_id=f.category_id_1))g
left outer join
(select category_id as category_id_1,category_rebuy_rate from feature.train_category_l28_rebuyrate)h
on(g.category_id=h.category_id_1);



/*ui+user特征（77+2）*/

drop table if exists result.train_ui_user;
create table result.train_ui_user as 
select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy
 from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance
 from result.train_ui)a
left outer join
(select user_id as user_id_1,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy
 from result.train_user)b
on(a.user_id=b.user_id_1);



/*ui+user+item特征（98+2）*/

drop table if exists result.train_ui_user_item;
create table result.train_ui_user_item as 
select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date
 from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy
 from result.train_ui_user)a
left outer join
(select item_id as item_id_1,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date
 from result.train_item)b
on(a.item_id=b.item_id_1);


/*ui+user+item+category特征（103+2）*/

drop table if exists result.train_ui_user_item_category;
create table result.train_ui_user_item_category as 
select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date,category_l7_buy,category_l14_buy,category_l28_buy,category_distinct_day_buy,category_rebuy_rate
from
(select user_id,item_id,category_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date
 from
(select user_id,item_id,ui_l1_buy,ui_l2_buy,ui_l3_buy,ui_l5_buy,ui_l7_buy,ui_l10_buy,ui_l12_buy,ui_l15_buy,ui_l20_buy,ui_l28_buy,ui_l1_clk,ui_l2_clk,ui_l3_clk,ui_l5_clk,ui_l7_clk,ui_l10_clk,ui_l12_clk,ui_l15_clk,ui_l20_clk,ui_l28_clk,ui_d12_buy,ui_week1_buy,ui_week2_buy,ui_week3_buy,ui_d12_clk,ui_week1_clk,ui_week2_clk,ui_week3_clk,ui_l_buy_date,ui_fl_buy_distance,ui_l_actday_clk,ui_l_actday_favor,ui_l_actday_buy,ui_l3_h1_buy,ui_l5_h1_buy,ui_l7_h1_buy,ui_l3_h1_act,ui_l5_h1_act,ui_l7_h1_act,ui_f_buybefore_clk,ui_f_buybefore_favor,ui_f_buybefore_cart,ui_l7_clk2buy,ui_l14_clk2buy,ui_l28_clk2buy,ui_l7_later2buy,ui_l14_later2buy,ui_l28_later2buy,ui_l_act_distance,ui_min_distance,ui_avg_distance,ui_max_distance,user_l1_clk,user_l3_clk,user_l7_clk,user_l10_clk,user_l14_clk,user_l28_clk,user_l1_buy,user_l3_buy,user_l7_buy,user_l10_buy,user_l14_buy,user_l28_buy,ifnull(user_d12_clk,0) as user_d12_clk,ifnull(user_d12_buy,0) as user_d12_buy,user_l_act_date,user_l_buy_date,user_l7_clk2buy,user_l14_clk2buy,user_l28_clk2buy,user_l7_later2buy,user_l14_later2buy,user_l28_later2buy,user_l7_h1_buy,user_l14_h1_buy,user_l28_h1_buy,item_l1_buy,item_l3_buy,item_l7_buy,item_l14_buy,item_l28_buy,item_d12_buy,item_l1_ave_buy,item_l3_ave_buy,item_l7_ave_buy,item_l14_ave_buy,item_l28_ave_buy,item_d12_ave_buy,item_l1_buy_user,item_l3_buy_user,item_l7_buy_user,item_l14_buy_user,item_l28_buy_user,item_d12_buy_user,item_distinct_day_buy,item_rebuy_rate,item_l_buy_date
 from result.train_ui_user_item)a
left outer join
(select item_id as item_id_1,category_id
 from tianchi.item_category)b
on(a.item_id=b.item_id_1))c
left outer join
(select category_id as category_id_1,category_l7_buy,category_l14_buy,category_l28_buy,category_distinct_day_buy,category_rebuy_rate
 from result.train_category)d
on(c.category_id=d.category_id_1);
