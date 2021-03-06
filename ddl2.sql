drop database tick_data;
create database tick_data;
use tick_data;

create table trade_date
(
    date_id    int primary key auto_increment,
    trade_date date
) engine = myisam;

create index ix_trade_date on trade_date (trade_date);


create table ts_code
(
    ts_id   int primary key auto_increment,
    ts_code varchar(16)
) engine = myisam;
create index ix_ts_code on ts_code (ts_code);

create table SZ000001
(
    date_id         int primary key,
    active          bool comment '停复牌标志',
    open            double,
    high            double,
    low             double,
    close           double,
    pre_close       double comment '昨日收盘价',
    adj_factor      double,
    `change`        double comment '涨跌额',
    pct_chg         double comment '涨跌幅（未复权）',
    vol             double comment '成交量（手）',
    amount          double comment '成交额（千手）',
    turnover_rate   double comment '换手率%',
    turnover_rate_f double comment '自由流通股换手率',
    volume_ratio    double comment '量比',
    pe              double comment '市盈率',
    pe_ttm          double comment '市盈率TTM',
    pb              double comment '市净率',
    ps              double comment '市销率',
    ps_ttm          double comment '市销率TTM',
    dv_ratio        double comment '股息率%',
    dv_ttm          double comment '股息率TTM',
    total_share     double comment '总股本（万股）',
    float_share     double comment '流通股本（万股）',
    free_share      double comment '自由流通股本（万股）',
    total_mv        double comment '总市值（万元）',
    circ_mv         double comment '流通市值（万元）',
    buy_sm_vol      int comment '小单买入量（手）',
    buy_sm_amount   double comment '小单买入金额（万元）',
    sell_sm_vol     int,
    sell_sm_amount  double,
    buy_md_vol      int,
    buy_md_amount   double,
    sell_md_vol     int,
    sell_md_amount  double,
    buy_lg_vol      int,
    buy_lg_amount   double,
    sell_lg_vol     int,
    sell_lg_amount  double,
    buy_elg_vol     int,
    buy_elg_amount  double,
    sell_elg_vol    int,
    sell_elg_amount double,
    net_mf_vol      int comment '净流入量（手）',
    net_mf_amount   double comment '净流入额（万元）'
) engine = myisam;
