
  IF OBJECT_ID('CallCredit.BSB_OVERALL', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_OVERALL];
  go
  CREATE TABLE [CallCredit].[BSB_OVERALL](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  --MAIN
  [B] [int], --ST_defaults ST_bit
  --CUGMEMB
  [K] [varchar](10), --Default string 
  [L] [int], --ST_defaults ST_bit
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [int] NOT NULL,
  --APPLSUMMARY
  --MAIN
  [W] [varchar](10), --Default string 
  [X] [int],--base=xs:int, --ST_defaults
  --COUNTS
  [Z] [int],--base=xs:int, --ST_defaults
  [AB] [int],--base=xs:int, --ST_defaults
  [BB] [int],--base=xs:int, --ST_defaults
  [CB] [int],--base=xs:int, --ST_defaults
  [DB] [int],--base=xs:int, --ST_defaults
  [EB] [int],--base=xs:int, --ST_defaults
  [FB] [int],--base=xs:int, --ST_defaults
  [GB] [int], --ST_defaults ST_bit
  --SCOTDEBT
  [OQB] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [HB] [int],--base=xs:int, --ST_defaults
  [IB] [int],--base=xs:int, --ST_defaults
  --SUB_BLOCKS
  [C] [varchar](10), --Default string 
  [D] [varchar](10), --Default string 
  [E] [varchar](10), --Default string 
  [F] [int], --ST_defaults ST_bit
  --ALIAS_NO
  [UPB] [int],--base=xs:int, --ST_defaults
  [VPB] [int],--base=xs:int, --ST_defaults
  [WPB] [int],--base=xs:int, --ST_defaults
  --ASSOC_NO
  [DD] [int],--base=xs:int, --ST_defaults
  [ED] [int],--base=xs:int, --ST_defaults
  [AC] [int],--base=xs:int, --ST_defaults
  --ALERTSUMM
  [PB] [int],--base=xs:int, --ST_defaults
  [QB] [int],--base=xs:int, --ST_defaults
  [RB] [int],--base=xs:int, --ST_defaults
  [SB] [int],--base=xs:int, --ST_defaults
  [TB] [int],--base=xs:int, --ST_defaults
  [UB] [int],--base=xs:int, --ST_defaults
  --HHOSUMM
  [BC] [int],--base=xs:int, --ST_defaults
  [RGB] [int],--base=xs:int, --ST_defaults
  --TPD
  [INB] [int],--base=xs:int, --ST_defaults
  [JNB] [int],--base=xs:int, --ST_defaults
  [KNB] [int],--base=xs:int, --ST_defaults
  [LNB] [int],--base=xs:int, --ST_defaults
  --OCCUPANCY
  [AD] [int], --ST_defaults ST_bit
  --DECEASED
  [LQB] [int], --ST_defaults ST_bit
  [FCC] [int], --ST_defaults ST_bit
  [GCC] [int], --ST_defaults ST_bit
  [HCC] [int], --ST_defaults ST_bit
  [ICC] [date],
  [ICC_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  --IMPAIRED
  [MQB] [int], --ST_defaults ST_bit
  [LJC] [int], --ST_defaults ST_bit
  --ACTIVITY
  [JCC] [int],--base=xs:int, --ST_defaults
  [KCC] [int],--base=xs:int, --ST_defaults
  [LCC] [int],--base=xs:int, --ST_defaults
  --ADVERSE
  [MCC] [int], --ST_defaults ST_bit
  [HHC] [int], --ST_defaults ST_bit
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --OTHER
  [NE] [int],--base=xs:int, --ST_defaults
  [OE] [varchar](10), --Default string 
  [PE] [int],--base=xs:int, --ST_defaults
  [QE] [int],--base=xs:int, --ST_defaults
  [RE] [int],--base=xs:int, --ST_defaults
  --ER
  --ADDRESS
  [WE] [varchar](10), --Default string 
  [XE] [int],--base=xs:int, --ST_defaults
  [YE] [int],--base=xs:int, --ST_defaults
  [ZE] [int],--base=xs:int, --ST_defaults
  [AF] [int],--base=xs:int, --ST_defaults
  [BF] [varchar](10), --Default string 
  [CF] [varchar](10), --Default string 
  [DF] [int], --ST_defaults ST_bit
  [KQB] [int], --ST_defaults ST_bit
  [WQB] [int], --ST_defaults ST_bit
  --OCCUPANCY
  [EF] [int],--base=xs:int, --ST_defaults
  [GF] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [HF] [int],--base=xs:int, --ST_defaults
  [IF] [int],--base=xs:int, --ST_defaults
  --TURNOVER
  [NCC] [int],--base=xs:int, --ST_defaults
  --SCORE
  --MAIN
  [JF] [int],--base=xs:int, --ST_defaults
  [KF] [varchar](16),--base=xs:string, --ST_defaults
  [MF] [int],--base=xs:int, --ST_defaults
  [NF] [int],--base=xs:int, --ST_defaults
  [OF] [int],--base=xs:int, --ST_defaults
  [PF] [int],--base=xs:int, --ST_defaults
  [QF] [int],--base=xs:int, --ST_defaults
  [SF] [int],--base=xs:int, --ST_defaults
  [TF] [int],--base=xs:int, --ST_defaults
  [UF] [int],--base=xs:int, --ST_defaults
  [VF] [int],--base=xs:int, --ST_defaults
  [WF] [int],--base=xs:int, --ST_defaults
  [YF] [int],--base=xs:int, --ST_defaults
  [ZF] [int],--base=xs:int, --ST_defaults
  [AG] [int],--base=xs:int, --ST_defaults
  [CG] [int],--base=xs:int, --ST_defaults
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --ALERT
  [PG] [int],--base=xs:int, --ST_defaults
  --EVENT
  [RG] [int], --ST_defaults ST_bit
  [TG] [int],--base=xs:int, --ST_defaults
  [OGC] [int],--base=xs:int, --ST_defaults
  [PGC] [int],--base=xs:int, --ST_defaults
  [QGC] [int],--base=xs:int, --ST_defaults
  --TIME
  [UG] [int],--base=xs:int, --ST_defaults
  [VG] [int],--base=xs:int, --ST_defaults
  [WG] [int],--base=xs:int, --ST_defaults
  [XG] [int],--base=xs:int, --ST_defaults
  [ZG] [int],--base=xs:int, --ST_defaults
  [AH] [int],--base=xs:int, --ST_defaults
  [BH] [int],--base=xs:int, --ST_defaults
  [CH] [int],--base=xs:int, --ST_defaults
  [JDC] [int],--base=xs:int, --ST_defaults
  [KDC] [int],--base=xs:int, --ST_defaults
  [GH] [int],--base=xs:int, --ST_defaults
  [HH] [int],--base=xs:int, --ST_defaults
  [IH] [int],--base=xs:int, --ST_defaults
  [JH] [varchar](10), --Default string 
  [SDB] [varchar](10), --Default string 
  --OPENVAL
  [KH] [int],--base=xs:int, --ST_defaults
  [LH] [int],--base=xs:int, --ST_defaults
  [MH] [int],--base=xs:int, --ST_defaults
  [NH] [int],--base=xs:int, --ST_defaults
  [OH] [int],--base=xs:int, --ST_defaults
  [NDC] [int],--base=xs:int, --ST_defaults
  [ARB] [int],--base=xs:int, --ST_defaults
  [CRB] [int],--base=xs:int, --ST_defaults
  [DRB] [int],--base=xs:int, --ST_defaults
  [TDB] [int],--base=xs:int, --ST_defaults
  [RRB] [int],--base=xs:int, --ST_defaults
  --WORSTLESS2
  [PH] [int],--base=xs:int, --ST_defaults
  [QH] [int],--base=xs:int, --ST_defaults
  [RH] [int],--base=xs:int, --ST_defaults
  [SH] [int],--base=xs:int, --ST_defaults
  --WORSTLESS1
  [UH] [int],--base=xs:int, --ST_defaults
  [VH] [int],--base=xs:int, --ST_defaults
  [WH] [int],--base=xs:int, --ST_defaults
  [XH] [int],--base=xs:int, --ST_defaults
  --WORSTUNCLASS
  [ZH] [int],--base=xs:int, --ST_defaults
  [AI] [int],--base=xs:int, --ST_defaults
  [BI] [int],--base=xs:int, --ST_defaults
  [CI] [int],--base=xs:int, --ST_defaults
  --WORST0
  [EI] [int],--base=xs:int, --ST_defaults
  [FI] [int],--base=xs:int, --ST_defaults
  [GI] [int],--base=xs:int, --ST_defaults
  [HI] [int],--base=xs:int, --ST_defaults
  --WORST3PLUS
  [EJ] [int],--base=xs:int, --ST_defaults
  [FJ] [int],--base=xs:int, --ST_defaults
  --CODE1
  [HJ] [int],--base=xs:int, --ST_defaults
  [TJ] [int],--base=xs:int, --ST_defaults
  --CODE2
  [ZJ] [int],--base=xs:int, --ST_defaults
  [FK] [int],--base=xs:int, --ST_defaults
  [RGC] [int],--base=xs:int, --ST_defaults
  --CODEDM
  [LJ] [int],--base=xs:int, --ST_defaults
  [MJ] [int],--base=xs:int, --ST_defaults
  [NJ] [int],--base=xs:int, --ST_defaults
  [OJ] [int],--base=xs:int, --ST_defaults
  --TOTAL1
  [LK] [int],--base=xs:int, --ST_defaults
  [WK] [int],--base=xs:int, --ST_defaults
  --TOTAL2
  [CL] [int],--base=xs:int, --ST_defaults
  [IL] [int],--base=xs:int, --ST_defaults
  [SGC] [int],--base=xs:int, --ST_defaults
  --TOTALDM
  [PK] [int],--base=xs:int, --ST_defaults
  [JCH] [int],--base=xs:int, --ST_defaults
  [QK] [int],--base=xs:int, --ST_defaults
  [RK] [int],--base=xs:int, --ST_defaults
  --ACCOUNT
  [OL] [int],--base=xs:int, --ST_defaults
  [PL] [int],--base=xs:int, --ST_defaults
  [QL] [int],--base=xs:int, --ST_defaults
  [RL] [int],--base=xs:int, --ST_defaults
  [SL] [int],--base=xs:int, --ST_defaults
  [TL] [int],--base=xs:int, --ST_defaults
  [UL] [int],--base=xs:int, --ST_defaults
  [VL] [int],--base=xs:int, --ST_defaults
  [WL] [int],--base=xs:int, --ST_defaults
  [XL] [int],--base=xs:int, --ST_defaults
  --VALUE
  [DM] [int],--base=xs:int, --ST_defaults
  [EM] [int],--base=xs:int, --ST_defaults
  [FM] [int],--base=xs:int, --ST_defaults
  [GM] [int],--base=xs:int, --ST_defaults
  [HM] [int],--base=xs:int, --ST_defaults
  [IM] [int],--base=xs:int, --ST_defaults
  [JM] [int],--base=xs:int, --ST_defaults
  [KM] [int],--base=xs:int, --ST_defaults
  [LM] [int],--base=xs:int, --ST_defaults
  [MM] [int],--base=xs:int, --ST_defaults
  --ACCOUNTACT
  [KHC] [int],--base=xs:int, --ST_defaults
  [LHC] [int],--base=xs:int, --ST_defaults
  [MHC] [int],--base=xs:int, --ST_defaults
  [NHC] [int],--base=xs:int, --ST_defaults
  [OHC] [int],--base=xs:int, --ST_defaults
  --PERCUNSEC
  [WZB] [int],--base=xs:int, --ST_defaults
  [XZB] [int],--base=xs:int, --ST_defaults
  [YZB] [int],--base=xs:int, --ST_defaults
  [ZZB] [int],--base=xs:int, --ST_defaults
  [MBC] [int],--base=xs:int, --ST_defaults
  --DEBT
  [SM] [int],--base=xs:int, --ST_defaults
  [TM] [int],--base=xs:int, --ST_defaults
  [UM] [int],--base=xs:int, --ST_defaults
  [VM] [int],--base=xs:int, --ST_defaults
  [WM] [int],--base=xs:int, --ST_defaults
  [XM] [int],--base=xs:int, --ST_defaults
  [MRB] [int],--base=xs:int, --ST_defaults
  [POB] [int],--base=xs:int, --ST_defaults
  --DEBTLIMIT
  [ZM] [int],--base=xs:int, --ST_defaults
  [AN] [int],--base=xs:int, --ST_defaults
  [BN] [int],--base=xs:int, --ST_defaults
  [ODC] [int],--base=xs:int, --ST_defaults
  [PDC] [int],--base=xs:int, --ST_defaults
  [QDC] [int],--base=xs:int, --ST_defaults
  --DEBTXMTGREPAY
  [HN] [int],--base=xs:int, --ST_defaults
  [IN] [int],--base=xs:int, --ST_defaults
  [JN] [int],--base=xs:int, --ST_defaults
  [KN] [int],--base=xs:int, --ST_defaults
  [LN] [int],--base=xs:int, --ST_defaults
  [SDC] [int],--base=xs:int, --ST_defaults
  [TDC] [int],--base=xs:int, --ST_defaults
  --DEBTMISC
  [MN] [int],--base=xs:int, --ST_defaults
  [NN] [int],--base=xs:int, --ST_defaults
  [ON] [int],--base=xs:int, --ST_defaults
  [PN] [int],--base=xs:int, --ST_defaults
  [QN] [int],--base=xs:int, --ST_defaults
  [SJC] [int],--base=xs:int, --ST_defaults
  --PAYMENTS
  [RN] [int],--base=xs:int, --ST_defaults
  [SN] [int],--base=xs:int, --ST_defaults
  [TN] [int],--base=xs:int, --ST_defaults
  [UN] [int],--base=xs:int, --ST_defaults
  --DUE
  [WN] [int],--base=xs:int, --ST_defaults
  [XN] [int],--base=xs:int, --ST_defaults
  [YN] [int],--base=xs:int, --ST_defaults
  --PAYSTAT3PLUS
  [PO] [int],--base=xs:int, --ST_defaults
  [QO] [int],--base=xs:int, --ST_defaults
  [RO] [int],--base=xs:int, --ST_defaults
  [SO] [int],--base=xs:int, --ST_defaults
  --WORSTPAY
  [FRB] [varchar](10), --Default string 
  [BQ] [varchar](10), --Default string 
  [CQ] [varchar](10), --Default string 
  [DQ] [varchar](10), --Default string 
  [EQ] [varchar](10), --Default string 
  [FQ] [varchar](10), --Default string 
  --WORSTXHOME
  [GRB] [varchar](10), --Default string 
  [IRB] [varchar](10), --Default string 
  --WORSTXUTIL
  [NJC] [varchar](10), --Default string 
  [OJC] [varchar](10), --Default string 
  --COMPANIES
  [HQ] [int],--base=xs:int, --ST_defaults
  [IQ] [int],--base=xs:int, --ST_defaults
  --OPENED412MNTH
  [BRB] [varchar](10), --Default string 
  --OPENED12MNTH
  [JQ] [varchar](10), --Default string 
  [KQ] [varchar](10), --Default string 
  [LQ] [varchar](10), --Default string 
  [MQ] [varchar](10), --Default string 
  --OPENED12PLUSMNTH
  [ERB] [varchar](10), --Default string 
  --OPENED24MNTH
  [NQ] [varchar](10), --Default string 
  [OQ] [varchar](10), --Default string 
  [PQ] [varchar](10), --Default string 
  [QQ] [varchar](10), --Default string 
  [RQ] [varchar](10), --Default string 
  --OPENEDSETTLD
  [ZQ] [varchar](10), --Default string 
  [AR] [varchar](10), --Default string 
  [BR] [varchar](10), --Default string 
  --INDEBT
  [NMB] [int], --ST_defaults ST_bit
  [OMB] [int], --ST_defaults ST_bit
  [RMB] [int], --ST_defaults ST_bit
  [SMB] [int], --ST_defaults ST_bit
  [TMB] [int],--base=xs:int, --ST_defaults
  [WMB] [int],--base=xs:int, --ST_defaults
  [RUB] [int],--base=xs:int, --ST_defaults
  [XMB] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [DG] [int],--base=xs:int, --ST_defaults
  [EG] [int],--base=xs:int, --ST_defaults
  --CURRENT
  [JRB] [int],--base=xs:int, --ST_defaults
  [KRB] [int],--base=xs:int, --ST_defaults
  [HRB] [varchar](10), --Default string 
  --SETTLED0
  [LRB] [int],--base=xs:int, --ST_defaults
  [YQB] [int],--base=xs:int, --ST_defaults
  [ZQB] [int],--base=xs:int, --ST_defaults
  --RUNAWAYS
  [FYB] [int],--base=xs:int, --ST_defaults
  [GYB] [int],--base=xs:int, --ST_defaults
  --ALLHCSTATUS
  [HYB] [varchar](10), --Default string 
  [MYB] [varchar](10), --Default string 
  [NYB] [varchar](10), --Default string 
  [OYB] [varchar](10), --Default string 
  --ACTHCSTATUS
  [RYB] [varchar](10), --Default string 
  --XHOMECREDIT
  [SYB] [varchar](10), --Default string 
  --HCBALANCES
  [TYB] [int],--base=xs:int, --ST_defaults
  [WYB] [int],--base=xs:int, --ST_defaults
  [XYB] [int],--base=xs:int, --ST_defaults
  [YYB] [int],--base=xs:int, --ST_defaults
  --LNOPENED
  [UDC] [int],--base=xs:int, --ST_defaults
  [VDC] [int],--base=xs:int, --ST_defaults
  [WDC] [int],--base=xs:int, --ST_defaults
  [XDC] [int],--base=xs:int, --ST_defaults
  --MTGOPENED
  [YDC] [int],--base=xs:int, --ST_defaults
  [ZDC] [int],--base=xs:int, --ST_defaults
  [AEC] [int],--base=xs:int, --ST_defaults
  [BEC] [int],--base=xs:int, --ST_defaults
  --CCOPENED
  [CEC] [int],--base=xs:int, --ST_defaults
  [DEC] [int],--base=xs:int, --ST_defaults
  [EEC] [int],--base=xs:int, --ST_defaults
  [FEC] [int],--base=xs:int, --ST_defaults
  --TELCOOPENED
  [GEC] [int],--base=xs:int, --ST_defaults
  [HEC] [int],--base=xs:int, --ST_defaults
  [IEC] [int],--base=xs:int, --ST_defaults
  [JEC] [int],--base=xs:int, --ST_defaults
  --UTILOPENED
  [KEC] [int],--base=xs:int, --ST_defaults
  [LEC] [int],--base=xs:int, --ST_defaults
  [MEC] [int],--base=xs:int, --ST_defaults
  [NEC] [int],--base=xs:int, --ST_defaults
  --HOMESHOPOPENED
  [OEC] [int],--base=xs:int, --ST_defaults
  [PEC] [int],--base=xs:int, --ST_defaults
  [QEC] [int],--base=xs:int, --ST_defaults
  [REC] [int],--base=xs:int, --ST_defaults
  --BKOPENED
  [SEC] [int],--base=xs:int, --ST_defaults
  [TEC] [int],--base=xs:int, --ST_defaults
  [UEC] [int],--base=xs:int, --ST_defaults
  [VEC] [int],--base=xs:int, --ST_defaults
  --MISCOPENED
  [WEC] [int],--base=xs:int, --ST_defaults
  [XEC] [int],--base=xs:int, --ST_defaults
  [YEC] [int],--base=xs:int, --ST_defaults
  [ZEC] [int],--base=xs:int, --ST_defaults
  --INSOPENED
  [AFC] [int],--base=xs:int, --ST_defaults
  [BFC] [int],--base=xs:int, --ST_defaults
  [CFC] [int],--base=xs:int, --ST_defaults
  [DFC] [int],--base=xs:int, --ST_defaults
  --HCNEWACCS
  [WWB] [int],--base=xs:int, --ST_defaults
  [XWB] [int],--base=xs:int, --ST_defaults
  [YWB] [int],--base=xs:int, --ST_defaults
  [ZWB] [int],--base=xs:int, --ST_defaults
  --LNSETTLED
  [EFC] [int],--base=xs:int, --ST_defaults
  [FFC] [int],--base=xs:int, --ST_defaults
  [GFC] [int],--base=xs:int, --ST_defaults
  [HFC] [int],--base=xs:int, --ST_defaults
  --MTGSETTLED
  [IFC] [int],--base=xs:int, --ST_defaults
  [JFC] [int],--base=xs:int, --ST_defaults
  [KFC] [int],--base=xs:int, --ST_defaults
  [LFC] [int],--base=xs:int, --ST_defaults
  --CCSETTLED
  [MFC] [int],--base=xs:int, --ST_defaults
  [NFC] [int],--base=xs:int, --ST_defaults
  [OFC] [int],--base=xs:int, --ST_defaults
  [PFC] [int],--base=xs:int, --ST_defaults
  --TELCOSETTLED
  [QFC] [int],--base=xs:int, --ST_defaults
  [RFC] [int],--base=xs:int, --ST_defaults
  [SFC] [int],--base=xs:int, --ST_defaults
  [TFC] [int],--base=xs:int, --ST_defaults
  --UTILSETTLED
  [UFC] [int],--base=xs:int, --ST_defaults
  [VFC] [int],--base=xs:int, --ST_defaults
  [WFC] [int],--base=xs:int, --ST_defaults
  [XFC] [int],--base=xs:int, --ST_defaults
  --HOMESHOPSETTLED
  [YFC] [int],--base=xs:int, --ST_defaults
  [ZFC] [int],--base=xs:int, --ST_defaults
  [AGC] [int],--base=xs:int, --ST_defaults
  [BGC] [int],--base=xs:int, --ST_defaults
  --BKSETTLED
  [CGC] [int],--base=xs:int, --ST_defaults
  [DGC] [int],--base=xs:int, --ST_defaults
  [EGC] [int],--base=xs:int, --ST_defaults
  [FGC] [int],--base=xs:int, --ST_defaults
  --MISCSETTLED
  [GGC] [int],--base=xs:int, --ST_defaults
  [HGC] [int],--base=xs:int, --ST_defaults
  [IGC] [int],--base=xs:int, --ST_defaults
  [JGC] [int],--base=xs:int, --ST_defaults
  --INSSETTLED
  [KGC] [int],--base=xs:int, --ST_defaults
  [LGC] [int],--base=xs:int, --ST_defaults
  [MGC] [int],--base=xs:int, --ST_defaults
  [NGC] [int],--base=xs:int, --ST_defaults
  --HCSETTLED
  [BZB] [int],--base=xs:int, --ST_defaults
  [CZB] [int],--base=xs:int, --ST_defaults
  [DZB] [int],--base=xs:int, --ST_defaults
  [FZB] [int],--base=xs:int, --ST_defaults
  [NAC] [int],--base=xs:int, --ST_defaults
  [OAC] [int],--base=xs:int, --ST_defaults
  --REVOLVECRED
  [MZB] [int],--base=xs:int, --ST_defaults
  [RIC] [int],--base=xs:int, --ST_defaults
  [SIC] [int],--base=xs:int, --ST_defaults
  [TIC] [int],--base=xs:int, --ST_defaults
  --HCWRSTSETT
  [PAC] [varchar](10), --Default string 
  [QAC] [varchar](10), --Default string 
  --HCWRSTACT
  [WAC] [varchar](10), --Default string 
  --HCPAY
  [RAC] [int],--base=xs:int, --ST_defaults
  --HCAGE
  [SAC] [int],--base=xs:int, --ST_defaults
  [TAC] [int],--base=xs:int, --ST_defaults
  --HCBALCHG
  [UAC] [int],--base=xs:int, --ST_defaults
  [VAC] [int],--base=xs:int, --ST_defaults
  [XAC] [int],--base=xs:int, --ST_defaults
  [YAC] [int],--base=xs:int, --ST_defaults
  --WORSTPAYLOAN
  [ABC] [varchar](10), --Default string 
  [BBC] [varchar](10), --Default string 
  [CBC] [varchar](10), --Default string 
  --WORSTPAYCC
  [DBC] [varchar](10), --Default string 
  [EBC] [varchar](10), --Default string 
  [FBC] [varchar](10), --Default string 
  --WORSTPAYMTG
  [GBC] [varchar](10), --Default string 
  [HBC] [varchar](10), --Default string 
  [IBC] [varchar](10), --Default string 
  --WORSTPAYTELECO
  [PCC] [varchar](10), --Default string 
  [QCC] [varchar](10), --Default string 
  [RCC] [varchar](10), --Default string 
  --WORSTPAYUTIL
  [SCC] [varchar](10), --Default string 
  [TCC] [varchar](10), --Default string 
  [UCC] [varchar](10), --Default string 
  --WORSTPAYHOMESHOP
  [VCC] [varchar](10), --Default string 
  [WCC] [varchar](10), --Default string 
  [XCC] [varchar](10), --Default string 
  --WORSTPAYBNK
  [JBC] [varchar](10), --Default string 
  [KBC] [varchar](10), --Default string 
  [LBC] [varchar](10), --Default string 
  --WORSTPAYMISC
  [YCC] [varchar](10), --Default string 
  [ZCC] [varchar](10), --Default string 
  [ADC] [varchar](10), --Default string 
  --WORSTPAYINS
  [BDC] [varchar](10), --Default string 
  [CDC] [varchar](10), --Default string 
  [DDC] [varchar](10), --Default string 
  --WORSTPAYHOMECR
  [EDC] [varchar](10), --Default string 
  [FDC] [varchar](10), --Default string 
  [GDC] [varchar](10), --Default string 
  --OPENED12MTHXHISTORIC
  [ZBC] [varchar](10), --Default string 
  --OPENED24MTHXHISTORIC
  [ACC] [varchar](10), --Default string 
  --DUEXHISTORIC
  [BCC] [int],--base=xs:int, --ST_defaults
  [CCC] [int],--base=xs:int, --ST_defaults
  [DCC] [int],--base=xs:int, --ST_defaults
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --WORSTPAYXHISTORIC
  [WBC] [varchar](10), --Default string 
  [XBC] [varchar](10), --Default string 
  [YBC] [varchar](10), --Default string 
  --UTILISATION
  [OCC] [int],--base=xs:int, --ST_defaults
  [PHC] [int],--base=xs:int, --ST_defaults
  [QHC] [int],--base=xs:int, --ST_defaults
  [RHC] [int],--base=xs:int, --ST_defaults
  [SHC] [int],--base=xs:int, --ST_defaults
  [THC] [int],--base=xs:int, --ST_defaults
  --HIGHEST
  [UHC] [int],--base=xs:int, --ST_defaults
  [VHC] [int],--base=xs:int, --ST_defaults
  --PAYDAY
  [XHC] [int],--base=xs:int, --ST_defaults
  [ZHC] [int],--base=xs:int, --ST_defaults
  [LIC] [int],--base=xs:int, --ST_defaults
  --PAYDAYOPENED
  [BIC] [int],--base=xs:int, --ST_defaults
  [CIC] [int],--base=xs:int, --ST_defaults
  [DIC] [int],--base=xs:int, --ST_defaults
  [MIC] [int],--base=xs:int, --ST_defaults
  [EJC] [int],--base=xs:int, --ST_defaults
  --PAYDAYWORST
  [IIC] [varchar](10), --Default string 
  [JIC] [varchar](10), --Default string 
  [KIC] [varchar](10), --Default string 
  --PAYDAYVALUE
  [YHC] [int],--base=xs:int, --ST_defaults
  [AIC] [int],--base=xs:int, --ST_defaults
  [EIC] [int],--base=xs:int, --ST_defaults
  [FIC] [int],--base=xs:int, --ST_defaults
  [GIC] [int],--base=xs:int, --ST_defaults
  [FJC] [int],--base=xs:int, --ST_defaults
  [GJC] [int],--base=xs:int, --ST_defaults
  [HJC] [int],--base=xs:int, --ST_defaults
  [PJC] [int],--base=xs:int, --ST_defaults
  --PAYDAYSETTLED
  [HIC] [int],--base=xs:int, --ST_defaults
  [JJC] [int],--base=xs:int, --ST_defaults
  [KJC] [int],--base=xs:int, --ST_defaults
  [IJC] [int],--base=xs:int, --ST_defaults
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --ALERT
  [WR] [int],--base=xs:int, --ST_defaults
  --ALL
  [XR] [varchar](10), --Default string 
  [YR] [int],--base=xs:int, --ST_defaults
  [ZR] [int],--base=xs:int, --ST_defaults
  [ZS] [int],--base=xs:int, --ST_defaults
  [AT] [int],--base=xs:int, --ST_defaults
  [BT] [int],--base=xs:int, --ST_defaults
  [CT] [int],--base=xs:int, --ST_defaults
  [DT] [int],--base=xs:int, --ST_defaults
  [ET] [int],--base=xs:int, --ST_defaults
  [FT] [int],--base=xs:int, --ST_defaults
  [GT] [int],--base=xs:int, --ST_defaults
  [IT] [int],--base=xs:int, --ST_defaults
  --VALDEFAULT
  [AS] [int],--base=xs:int, --ST_defaults
  [BS] [int],--base=xs:int, --ST_defaults
  [CS] [int],--base=xs:int, --ST_defaults
  [DS] [int],--base=xs:int, --ST_defaults
  [ES] [int],--base=xs:int, --ST_defaults
  [FS] [int],--base=xs:int, --ST_defaults
  [GS] [int],--base=xs:int, --ST_defaults
  [HS] [int],--base=xs:int, --ST_defaults
  [JS] [int],--base=xs:int, --ST_defaults
  --DOB
  [PS] [date],
  [PS_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  --NOTICES
  [WS] [int],--base=xs:int, --ST_defaults
  --MISC
  [XS] [int],--base=xs:int, --ST_defaults
  [HZB] [int],--base=xs:int, --ST_defaults
  [MJC] [int],--base=xs:int, --ST_defaults
  --NUMDEFBAL
  [PT] [int],--base=xs:int, --ST_defaults
  [QT] [int],--base=xs:int, --ST_defaults
  [RT] [int],--base=xs:int, --ST_defaults
  [ST] [int],--base=xs:int, --ST_defaults
  [TT] [int],--base=xs:int, --ST_defaults
  --ENTERDEF
  [PP] [int],--base=xs:int, --ST_defaults
  [QP] [int],--base=xs:int, --ST_defaults
  [RP] [int],--base=xs:int, --ST_defaults
  [SP] [int],--base=xs:int, --ST_defaults
  [TP] [int],--base=xs:int, --ST_defaults
  --SETTLED
  [UP] [int],--base=xs:int, --ST_defaults
  [GAC] [int],--base=xs:int, --ST_defaults
  [HAC] [int],--base=xs:int, --ST_defaults
  [IAC] [int],--base=xs:int, --ST_defaults
  [JAC] [int],--base=xs:int, --ST_defaults
  [VP] [int],--base=xs:int, --ST_defaults
  --RECOVERED
  [GZB] [int],--base=xs:int, --ST_defaults
  [NZB] [int],--base=xs:int, --ST_defaults
  [ZP] [int],--base=xs:int, --ST_defaults
  [UZB] [int],--base=xs:int, --ST_defaults
  [VZB] [int],--base=xs:int, --ST_defaults
  [AQ] [int],--base=xs:int, --ST_defaults
  --HCDELQ
  [AAC] [int],--base=xs:int, --ST_defaults
  [BAC] [int],--base=xs:int, --ST_defaults
  [CAC] [int],--base=xs:int, --ST_defaults
  --HCVALDEF
  [KAC] [int],--base=xs:int, --ST_defaults
  [LAC] [int],--base=xs:int, --ST_defaults
  [MAC] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  --TIME
  [MU] [int],--base=xs:int, --ST_defaults
  [NU] [int],--base=xs:int, --ST_defaults
  [PU] [int],--base=xs:int, --ST_defaults
  [QU] [int],--base=xs:int, --ST_defaults
  [QZB] [int],--base=xs:int, --ST_defaults
  --OPENED
  [WW] [int],--base=xs:int, --ST_defaults
  [XW] [int],--base=xs:int, --ST_defaults
  [YW] [int],--base=xs:int, --ST_defaults
  [ZW] [int],--base=xs:int, --ST_defaults
  [AX] [int],--base=xs:int, --ST_defaults
  [WGC] [int],--base=xs:int, --ST_defaults
  --TOTDF
  [MX] [int],--base=xs:int, --ST_defaults
  --NUMDF
  [BY] [int],--base=xs:int, --ST_defaults
  --TOTNONDF
  [QY] [int],--base=xs:int, --ST_defaults
  --NUMNONDF
  [FZ] [int],--base=xs:int, --ST_defaults
  --VALSECTOR
  [LZ] [int],--base=xs:int, --ST_defaults
  [MZ] [int],--base=xs:int, --ST_defaults
  [NZ] [int],--base=xs:int, --ST_defaults
  --DEBT
  [UZ] [int],--base=xs:int, --ST_defaults
  [VZ] [int],--base=xs:int, --ST_defaults
  --INDEBT
  [YMB] [int], --ST_defaults ST_bit
  [ZMB] [int], --ST_defaults ST_bit
  [CNB] [int], --ST_defaults ST_bit
  [DNB] [int], --ST_defaults ST_bit
  [ENB] [int],--base=xs:int, --ST_defaults
  [FNB] [int],--base=xs:int, --ST_defaults
  [GNB] [int],--base=xs:int, --ST_defaults
  [EQB] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [TGB] [int],--base=xs:int, --ST_defaults
  [UGB] [int],--base=xs:int, --ST_defaults
  --WORST
  [JQB] [varchar](10), --Default string 
  [TZB] [varchar](10), --Default string 
  --HCDELQ
  [DAC] [int],--base=xs:int, --ST_defaults
  [EAC] [int],--base=xs:int, --ST_defaults
  [FAC] [int],--base=xs:int, --ST_defaults
  --CIFAS
  --MAIN
  [CAB] [int], --ST_defaults ST_bit
  [DAB] [int],--base=xs:int, --ST_defaults
  [EAB] [int],--base=xs:int, --ST_defaults
  [FAB] [int],--base=xs:int, --ST_defaults
  [GAB] [int],--base=xs:int, --ST_defaults
  [HAB] [int],--base=xs:int, --ST_defaults
  [IAB] [int],--base=xs:int, --ST_defaults
  [JAB] [int],--base=xs:int, --ST_defaults
  [KAB] [int],--base=xs:int, --ST_defaults
  [LAB] [int],--base=xs:int, --ST_defaults
  [MAB] [int],--base=xs:int, --ST_defaults
  [NAB] [int],--base=xs:int, --ST_defaults
  [OAB] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [KBB] [int],--base=xs:int, --ST_defaults
  --SEARCH
  --MAIN
  [UDB] [int], --ST_defaults ST_bit
  --DEBTCOLL
  [KEB] [int],--base=xs:int, --ST_defaults
  [LEB] [int],--base=xs:int, --ST_defaults
  [MEB] [int],--base=xs:int, --ST_defaults
  [NEB] [int],--base=xs:int, --ST_defaults
  --ALLCA
  [YGC] [int],--base=xs:int, --ST_defaults
  [QEB] [int],--base=xs:int, --ST_defaults
  [REB] [int],--base=xs:int, --ST_defaults
  [SEB] [int],--base=xs:int, --ST_defaults
  [TEB] [int],--base=xs:int, --ST_defaults
  [UEB] [int],--base=xs:int, --ST_defaults
  --OWNCA
  [VEB] [int],--base=xs:int, --ST_defaults
  [WEB] [int],--base=xs:int, --ST_defaults
  [XEB] [int],--base=xs:int, --ST_defaults
  [YEB] [int],--base=xs:int, --ST_defaults
  [ZEB] [int],--base=xs:int, --ST_defaults
  --HOMECREDIT
  [MFB] [int],--base=xs:int, --ST_defaults
  [NFB] [int],--base=xs:int, --ST_defaults
  [OFB] [int],--base=xs:int, --ST_defaults
  [PFB] [int],--base=xs:int, --ST_defaults
  [QFB] [int],--base=xs:int, --ST_defaults
  [RFB] [int],--base=xs:int, --ST_defaults
  --TELECOM
  [XGC] [int],--base=xs:int, --ST_defaults
  --PAYDAY
  [DJC] [int],--base=xs:int, --ST_defaults
  [NIC] [int],--base=xs:int, --ST_defaults
  [OIC] [int],--base=xs:int, --ST_defaults
  [PIC] [int],--base=xs:int, --ST_defaults
  [QIC] [int],--base=xs:int, --ST_defaults
  --ADDRLINK
  --ADDMAIN
  [VGB] [int], --ST_defaults ST_bit
  [WGB] [int],--base=xs:int, --ST_defaults
  [ZAC] [int], --ST_defaults ST_bit
  [NBC] [int],--base=xs:int, --ST_defaults
  --ADDRAW
  [XGB] [varchar](440),--base=xs:string, --ST_defaults
  [YGB] [varchar](4),--base=xs:string, --ST_defaults
  [QOB] [varchar](38),--base=xs:string, --ST_defaults
  [ZGB] [varchar](440),--base=xs:string, --ST_defaults
  [AHB] [varchar](4),--base=xs:string, --ST_defaults
  [ROB] [varchar](38),--base=xs:string, --ST_defaults
  [BHB] [varchar](440),--base=xs:string, --ST_defaults
  [CHB] [varchar](4),--base=xs:string, --ST_defaults
  [SOB] [varchar](38),--base=xs:string, --ST_defaults
  [DHB] [varchar](440),--base=xs:string, --ST_defaults
  [EHB] [varchar](4),--base=xs:string, --ST_defaults
  [TOB] [varchar](38),--base=xs:string, --ST_defaults
  [FHB] [varchar](440),--base=xs:string, --ST_defaults
  [GHB] [varchar](4),--base=xs:string, --ST_defaults
  [JBB] [varchar](38),--base=xs:string, --ST_defaults
  --ADDTIME
  [HHB] [date],
  [HHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [IHB] [date],
  [IHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [JHB] [date],
  [JHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [KHB] [date],
  [KHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [LHB] [date],
  [LHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  --NOTICES
  [XPB] [int],--base=xs:int, --ST_defaults
  [YPB] [int],--base=xs:int, --ST_defaults
  --ACD
  --BALANCE
  [AYB] [int],--base=xs:int, --ST_defaults
  --PAYMENTS
  [BYB] [int],--base=xs:int, --ST_defaults
  [CYB] [int],--base=xs:int, --ST_defaults
  [DYB] [int],--base=xs:int, --ST_defaults
  [EYB] [int],--base=xs:int, --ST_defaults
  [FHC] [int],--base=xs:int, --ST_defaults
  [GHC] [int],--base=xs:int, --ST_defaults
  [IYB] [int],--base=xs:int, --ST_defaults
  [JYB] [int],--base=xs:int, --ST_defaults
  [KYB] [int],--base=xs:int, --ST_defaults
  [LYB] [int],--base=xs:int, --ST_defaults
  [WHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_NUM
  [PYB] [int],--base=xs:int, --ST_defaults
  [QYB] [int],--base=xs:int, --ST_defaults
  [ZGC] [int],--base=xs:int, --ST_defaults
  [AHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_VAL
  [UYB] [int],--base=xs:int, --ST_defaults
  [VYB] [int],--base=xs:int, --ST_defaults
  [BHC] [int],--base=xs:int, --ST_defaults
  [CHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_BAL
  [ZYB] [int],--base=xs:int, --ST_defaults
  [AZB] [int],--base=xs:int, --ST_defaults
  [DHC] [int],--base=xs:int, --ST_defaults
  [EHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_BALTIME
  [EZB] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_PAY
  [IZB] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_ID', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_ID];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_ID](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --APPL
  [DC] [int],--base=xs:int, --ST_defaults
  [EC] [int],--base=xs:int, --ST_defaults
  [FC] [int],--base=xs:int, --ST_defaults
  [GC] [varchar](4),--base=xs:string, --ST_defaults
  [HC] [varchar](10), --Default string 
  [IC] [varchar](10), --Default string 
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_CAMEO2006', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_CAMEO2006];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_CAMEO2006](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --MAIN
  [GCB] [varchar](4),--base=xs:string, --ST_defaults
  [HCB] [varchar](4),--base=xs:string, --ST_defaults
  [TRB] [varchar](4),--base=xs:string, --ST_defaults
  [ICB] [varchar](4),--base=xs:string, --ST_defaults
  [FWB] [varchar](4),--base=xs:string, --ST_defaults
  [KCB] [varchar](4),--base=xs:string, --ST_defaults
  [URB] [varchar](4),--base=xs:string, --ST_defaults
  [MOB] [varchar](4),--base=xs:string, --ST_defaults
  [VRB] [varchar](4),--base=xs:string, --ST_defaults
  [NOB] [varchar](4),--base=xs:string, --ST_defaults
  [OOB] [varchar](4),--base=xs:string, --ST_defaults
  [WRB] [varchar](4),--base=xs:string, --ST_defaults
  [CSB] [varchar](4),--base=xs:string, --ST_defaults
  --AGE
  [DSB] [float], --ST_defaults xs:double
  [ESB] [int],--base=xs:int, --ST_defaults
  --TENURE
  [FSB] [float], --ST_defaults xs:double
  [GSB] [int],--base=xs:int, --ST_defaults
  --HHCOMP
  [HSB] [float], --ST_defaults xs:double
  [LCB] [int],--base=xs:int, --ST_defaults
  --ECONOMIC
  [MCB] [float], --ST_defaults xs:double
  [NCB] [int],--base=xs:int, --ST_defaults
  --LIFESTAGE
  [OCB] [float], --ST_defaults xs:double
  [PCB] [int],--base=xs:int, --ST_defaults
  --SOCIAL
  [DDB] [float], --ST_defaults xs:double
  [EDB] [float], --ST_defaults xs:double
  [FDB] [float], --ST_defaults xs:double
  [GDB] [int],--base=xs:int, --ST_defaults
  --OCCUPATION
  [QCB] [float], --ST_defaults xs:double
  [RCB] [int],--base=xs:int, --ST_defaults
  --MORTGAGE
  [XCB] [float], --ST_defaults xs:double
  [YCB] [int],--base=xs:int, --ST_defaults
  --SHAREHLD
  [SCB] [float], --ST_defaults xs:double
  [TCB] [float], --ST_defaults xs:double
  [UCB] [float], --ST_defaults xs:double
  [VCB] [float], --ST_defaults xs:double
  [WCB] [float], --ST_defaults xs:double
  --UNEMPLOY
  [ZCB] [float], --ST_defaults xs:double
  [ADB] [float], --ST_defaults xs:double
  [BDB] [float], --ST_defaults xs:double
  [CDB] [float], --ST_defaults xs:double
  [HDB] [float], --ST_defaults xs:double
  [IDB] [int],--base=xs:int, --ST_defaults
  --UNEMPRATE
  [HWB] [float], --ST_defaults xs:double
  [IWB] [float], --ST_defaults xs:double
  [JWB] [int],--base=xs:int, --ST_defaults
  [KWB] [float], --ST_defaults xs:double
  [LWB] [int],--base=xs:int, --ST_defaults
  --PROPERTY
  [JDB] [varchar](5),--base=xs:string, --ST_defaults
  [KDB] [float], --ST_defaults xs:double
  [LDB] [varchar](4),--base=xs:string, --ST_defaults
  [MDB] [int],--base=xs:int, --ST_defaults
  [NDB] [float], --ST_defaults xs:double
  [ODB] [int],--base=xs:int, --ST_defaults
  [ISB] [int],--base=xs:int, --ST_defaults
  [GWB] [int],--base=xs:int, --ST_defaults
  [JSB] [int],--base=xs:int, --ST_defaults
  [KSB] [int],--base=xs:int, --ST_defaults
  [LSB] [int],--base=xs:int, --ST_defaults
  [MSB] [int],--base=xs:int, --ST_defaults
  [NSB] [int],--base=xs:int, --ST_defaults
  [OSB] [int],--base=xs:int, --ST_defaults
  [PSB] [int],--base=xs:int, --ST_defaults
  [QSB] [int],--base=xs:int, --ST_defaults
  [RSB] [int],--base=xs:int, --ST_defaults
  [SSB] [int],--base=xs:int, --ST_defaults
  [TSB] [int],--base=xs:int, --ST_defaults
  [USB] [int],--base=xs:int, --ST_defaults
  --INTERNATIONAL
  [PDB] [varchar](4),--base=xs:string, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_ASSLINK', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_ASSLINK];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_ASSLINK](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --MAIN
  [VOB] [int], --ST_defaults ST_bit
  [WOB] [int],--base=xs:int, --ST_defaults
  [XOB] [int],--base=xs:int, --ST_defaults
  --DECASSRAW
  [YOB] [varchar](150),--base=xs:string, --ST_defaults
  [ZOB] [varchar](38),--base=xs:string, --ST_defaults
  [APB] [varchar](150),--base=xs:string, --ST_defaults
  [BPB] [varchar](38),--base=xs:string, --ST_defaults
  [CPB] [varchar](150),--base=xs:string, --ST_defaults
  [DPB] [varchar](38),--base=xs:string, --ST_defaults
  [EPB] [varchar](150),--base=xs:string, --ST_defaults
  [FPB] [varchar](38),--base=xs:string, --ST_defaults
  [GPB] [varchar](150),--base=xs:string, --ST_defaults
  [HPB] [varchar](38),--base=xs:string, --ST_defaults
  --UNDECASSRAW
  [IPB] [varchar](150),--base=xs:string, --ST_defaults
  [JPB] [varchar](38),--base=xs:string, --ST_defaults
  [KPB] [varchar](150),--base=xs:string, --ST_defaults
  [LPB] [varchar](38),--base=xs:string, --ST_defaults
  [MPB] [varchar](150),--base=xs:string, --ST_defaults
  [NPB] [varchar](38),--base=xs:string, --ST_defaults
  [OPB] [varchar](150),--base=xs:string, --ST_defaults
  [PPB] [varchar](38),--base=xs:string, --ST_defaults
  [QPB] [varchar](150),--base=xs:string, --ST_defaults
  [RPB] [varchar](38),--base=xs:string, --ST_defaults
  --NOTICES
  [ZPB] [int],--base=xs:int, --ST_defaults
  [AQB] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_GEORISK2006', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_GEORISK2006];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_GEORISK2006](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --MAIN
  [VSB] [int], --ST_defaults ST_bit
  [WSB] [varchar](10), --Default string 
  [XSB] [varchar](100), --ST_defaults xs:token
  [YSB] [varchar](100), --ST_defaults xs:token
  [ZSB] [varchar](100), --ST_defaults xs:token
  [ATB] [varchar](100), --ST_defaults xs:token
  [BTB] [varchar](100), --ST_defaults xs:token
  [CTB] [int], --ST_defaults ST_bit
  --CCJ
  [DTB] [float], --ST_defaults xs:double
  [ETB] [int],--base=xs:int, --ST_defaults
  [FTB] [float], --ST_defaults xs:double
  [NWB] [float], --ST_defaults xs:double
  [GTB] [int],--base=xs:int, --ST_defaults
  [OWB] [float], --ST_defaults xs:double
  [HTB] [int],--base=xs:int, --ST_defaults
  [PWB] [float], --ST_defaults xs:double
  [ITB] [int],--base=xs:int, --ST_defaults
  [MWB] [int],--base=xs:int, --ST_defaults
  [JTB] [int],--base=xs:int, --ST_defaults
  [KTB] [int],--base=xs:int, --ST_defaults
  [LTB] [int],--base=xs:int, --ST_defaults
  [MTB] [int],--base=xs:int, --ST_defaults
  [NTB] [int],--base=xs:int, --ST_defaults
  [OTB] [int],--base=xs:int, --ST_defaults
  [PTB] [int],--base=xs:int, --ST_defaults
  [QTB] [int],--base=xs:int, --ST_defaults
  --INSOLVENCY
  [RTB] [int],--base=xs:int, --ST_defaults
  [STB] [float], --ST_defaults xs:double
  [TTB] [int],--base=xs:int, --ST_defaults
  --FAMILY
  [UTB] [int],--base=xs:int, --ST_defaults
  [VTB] [int],--base=xs:int, --ST_defaults
  [WTB] [int],--base=xs:int, --ST_defaults
  [XTB] [int],--base=xs:int, --ST_defaults
  [YTB] [int],--base=xs:int, --ST_defaults
  [ZTB] [int],--base=xs:int, --ST_defaults
  [AUB] [int],--base=xs:int, --ST_defaults
  [BUB] [int],--base=xs:int, --ST_defaults
  --HH
  [DUB] [int],--base=xs:int, --ST_defaults
  [EUB] [int],--base=xs:int, --ST_defaults
  [FUB] [int],--base=xs:int, --ST_defaults
  [GUB] [int],--base=xs:int, --ST_defaults
  [HUB] [int],--base=xs:int, --ST_defaults
  [IUB] [int],--base=xs:int, --ST_defaults
  [JUB] [int],--base=xs:int, --ST_defaults
  [KUB] [int],--base=xs:int, --ST_defaults
  --HIST
  [LUB] [int],--base=xs:int, --ST_defaults
  [MUB] [int],--base=xs:int, --ST_defaults
  [NUB] [int],--base=xs:int, --ST_defaults
  [OUB] [int],--base=xs:int, --ST_defaults
  [PUB] [int],--base=xs:int, --ST_defaults
  [QUB] [int],--base=xs:int, --ST_defaults
  --GD1
  [SUB] [varchar](4),--base=xs:string, --ST_defaults
  --PARTSHARE
  [TUB] [int],--base=xs:int, --ST_defaults
  [UUB] [int],--base=xs:int, --ST_defaults
  [VUB] [int],--base=xs:int, --ST_defaults
  [WUB] [int],--base=xs:int, --ST_defaults
  [XUB] [int],--base=xs:int, --ST_defaults
  [YUB] [int],--base=xs:int, --ST_defaults
  [ZUB] [int],--base=xs:int, --ST_defaults
  [AVB] [int],--base=xs:int, --ST_defaults
  --FULLSHARE
  [CVB] [int],--base=xs:int, --ST_defaults
  [DVB] [int],--base=xs:int, --ST_defaults
  [EVB] [int],--base=xs:int, --ST_defaults
  [FVB] [int],--base=xs:int, --ST_defaults
  [GVB] [int],--base=xs:int, --ST_defaults
  [HVB] [int],--base=xs:int, --ST_defaults
  [IVB] [int],--base=xs:int, --ST_defaults
  [JVB] [int],--base=xs:int, --ST_defaults
  [KVB] [int],--base=xs:int, --ST_defaults
  [LVB] [int],--base=xs:int, --ST_defaults
  [MVB] [int],--base=xs:int, --ST_defaults
  [NVB] [int],--base=xs:int, --ST_defaults
  [OVB] [int],--base=xs:int, --ST_defaults
  [PVB] [int],--base=xs:int, --ST_defaults
  [QVB] [int],--base=xs:int, --ST_defaults
  [RVB] [int],--base=xs:int, --ST_defaults
  [SVB] [int],--base=xs:int, --ST_defaults
  [TVB] [int],--base=xs:int, --ST_defaults
  [UVB] [int],--base=xs:int, --ST_defaults
  [VVB] [int],--base=xs:int, --ST_defaults
  [WVB] [int],--base=xs:int, --ST_defaults
  [XVB] [int],--base=xs:int, --ST_defaults
  [YVB] [int],--base=xs:int, --ST_defaults
  [ZVB] [int],--base=xs:int, --ST_defaults
  [AWB] [int],--base=xs:int, --ST_defaults
  [BWB] [int],--base=xs:int, --ST_defaults
  [CWB] [int],--base=xs:int, --ST_defaults
  [DWB] [int],--base=xs:int, --ST_defaults
  --SEARCH
  [EWB] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_ICH', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_ICH];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_ICH](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --PUBLIC
  [FQB] [int], --ST_defaults ST_bit
  [GQB] [int], --ST_defaults ST_bit
  [NQB] [int], --ST_defaults ST_bit
  --SHARE
  [HQB] [int], --ST_defaults ST_bit
  [IQB] [int], --ST_defaults ST_bit
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_SPA', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_SPA];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_SPA](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --APPLSUMMARY
  --COUNTS
  [Z] [int],--base=xs:int, --ST_defaults
  [AB] [int],--base=xs:int, --ST_defaults
  [BB] [int],--base=xs:int, --ST_defaults
  [CB] [int],--base=xs:int, --ST_defaults
  [DB] [int],--base=xs:int, --ST_defaults
  [EB] [int],--base=xs:int, --ST_defaults
  [FB] [int],--base=xs:int, --ST_defaults
  [GB] [int], --ST_defaults ST_bit
  --NOTICES
  [HB] [int],--base=xs:int, --ST_defaults
  [IB] [int],--base=xs:int, --ST_defaults
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --WORSTPAY
  [FRB] [varchar](10), --Default string 
  [BQ] [varchar](10), --Default string 
  [CQ] [varchar](10), --Default string 
  [DQ] [varchar](10), --Default string 
  [EQ] [varchar](10), --Default string 
  [FQ] [varchar](10), --Default string 
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --WORSTPAYXHISTORIC
  [WBC] [varchar](10), --Default string 
  [XBC] [varchar](10), --Default string 
  [YBC] [varchar](10), --Default string 
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --ALERT
  [WR] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_USF', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_USF];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_USF](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --APPLSUMMARY
  --COUNTS
  [Z] [int],--base=xs:int, --ST_defaults
  [AB] [int],--base=xs:int, --ST_defaults
  [BB] [int],--base=xs:int, --ST_defaults
  [CB] [int],--base=xs:int, --ST_defaults
  [DB] [int],--base=xs:int, --ST_defaults
  [EB] [int],--base=xs:int, --ST_defaults
  [FB] [int],--base=xs:int, --ST_defaults
  [GB] [int], --ST_defaults ST_bit
  --NOTICES
  [HB] [int],--base=xs:int, --ST_defaults
  [IB] [int],--base=xs:int, --ST_defaults
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --WORSTPAY
  [FRB] [varchar](10), --Default string 
  [BQ] [varchar](10), --Default string 
  [CQ] [varchar](10), --Default string 
  [DQ] [varchar](10), --Default string 
  [EQ] [varchar](10), --Default string 
  [FQ] [varchar](10), --Default string 
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --WORSTPAYXHISTORIC
  [WBC] [varchar](10), --Default string 
  [XBC] [varchar](10), --Default string 
  [YBC] [varchar](10), --Default string 
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --ALERT
  [WR] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_HHO', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_HHO];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_HHO](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_ID', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_ID];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_ID](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --APPL
  [DC] [int],--base=xs:int, --ST_defaults
  [EC] [int],--base=xs:int, --ST_defaults
  [FC] [int],--base=xs:int, --ST_defaults
  [GC] [varchar](4),--base=xs:string, --ST_defaults
  [HC] [varchar](10), --Default string 
  [IC] [varchar](10), --Default string 
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_CAMEO2006', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_CAMEO2006];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_CAMEO2006](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --MAIN
  [GCB] [varchar](4),--base=xs:string, --ST_defaults
  [HCB] [varchar](4),--base=xs:string, --ST_defaults
  [TRB] [varchar](4),--base=xs:string, --ST_defaults
  [ICB] [varchar](4),--base=xs:string, --ST_defaults
  [FWB] [varchar](4),--base=xs:string, --ST_defaults
  [KCB] [varchar](4),--base=xs:string, --ST_defaults
  [URB] [varchar](4),--base=xs:string, --ST_defaults
  [MOB] [varchar](4),--base=xs:string, --ST_defaults
  [VRB] [varchar](4),--base=xs:string, --ST_defaults
  [NOB] [varchar](4),--base=xs:string, --ST_defaults
  [OOB] [varchar](4),--base=xs:string, --ST_defaults
  [WRB] [varchar](4),--base=xs:string, --ST_defaults
  [CSB] [varchar](4),--base=xs:string, --ST_defaults
  --AGE
  [DSB] [float], --ST_defaults xs:double
  [ESB] [int],--base=xs:int, --ST_defaults
  --TENURE
  [FSB] [float], --ST_defaults xs:double
  [GSB] [int],--base=xs:int, --ST_defaults
  --HHCOMP
  [HSB] [float], --ST_defaults xs:double
  [LCB] [int],--base=xs:int, --ST_defaults
  --ECONOMIC
  [MCB] [float], --ST_defaults xs:double
  [NCB] [int],--base=xs:int, --ST_defaults
  --LIFESTAGE
  [OCB] [float], --ST_defaults xs:double
  [PCB] [int],--base=xs:int, --ST_defaults
  --SOCIAL
  [DDB] [float], --ST_defaults xs:double
  [EDB] [float], --ST_defaults xs:double
  [FDB] [float], --ST_defaults xs:double
  [GDB] [int],--base=xs:int, --ST_defaults
  --OCCUPATION
  [QCB] [float], --ST_defaults xs:double
  [RCB] [int],--base=xs:int, --ST_defaults
  --MORTGAGE
  [XCB] [float], --ST_defaults xs:double
  [YCB] [int],--base=xs:int, --ST_defaults
  --SHAREHLD
  [SCB] [float], --ST_defaults xs:double
  [TCB] [float], --ST_defaults xs:double
  [UCB] [float], --ST_defaults xs:double
  [VCB] [float], --ST_defaults xs:double
  [WCB] [float], --ST_defaults xs:double
  --UNEMPLOY
  [ZCB] [float], --ST_defaults xs:double
  [ADB] [float], --ST_defaults xs:double
  [BDB] [float], --ST_defaults xs:double
  [CDB] [float], --ST_defaults xs:double
  [HDB] [float], --ST_defaults xs:double
  [IDB] [int],--base=xs:int, --ST_defaults
  --UNEMPRATE
  [HWB] [float], --ST_defaults xs:double
  [IWB] [float], --ST_defaults xs:double
  [JWB] [int],--base=xs:int, --ST_defaults
  [KWB] [float], --ST_defaults xs:double
  [LWB] [int],--base=xs:int, --ST_defaults
  --PROPERTY
  [JDB] [varchar](5),--base=xs:string, --ST_defaults
  [KDB] [float], --ST_defaults xs:double
  [LDB] [varchar](4),--base=xs:string, --ST_defaults
  [MDB] [int],--base=xs:int, --ST_defaults
  [NDB] [float], --ST_defaults xs:double
  [ODB] [int],--base=xs:int, --ST_defaults
  [ISB] [int],--base=xs:int, --ST_defaults
  [GWB] [int],--base=xs:int, --ST_defaults
  [JSB] [int],--base=xs:int, --ST_defaults
  [KSB] [int],--base=xs:int, --ST_defaults
  [LSB] [int],--base=xs:int, --ST_defaults
  [MSB] [int],--base=xs:int, --ST_defaults
  [NSB] [int],--base=xs:int, --ST_defaults
  [OSB] [int],--base=xs:int, --ST_defaults
  [PSB] [int],--base=xs:int, --ST_defaults
  [QSB] [int],--base=xs:int, --ST_defaults
  [RSB] [int],--base=xs:int, --ST_defaults
  [SSB] [int],--base=xs:int, --ST_defaults
  [TSB] [int],--base=xs:int, --ST_defaults
  [USB] [int],--base=xs:int, --ST_defaults
  --INTERNATIONAL
  [PDB] [varchar](4),--base=xs:string, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_ASSLINK', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_ASSLINK];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_ASSLINK](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --MAIN
  [VOB] [int], --ST_defaults ST_bit
  [WOB] [int],--base=xs:int, --ST_defaults
  [XOB] [int],--base=xs:int, --ST_defaults
  --DECASSRAW
  [YOB] [varchar](150),--base=xs:string, --ST_defaults
  [ZOB] [varchar](38),--base=xs:string, --ST_defaults
  [APB] [varchar](150),--base=xs:string, --ST_defaults
  [BPB] [varchar](38),--base=xs:string, --ST_defaults
  [CPB] [varchar](150),--base=xs:string, --ST_defaults
  [DPB] [varchar](38),--base=xs:string, --ST_defaults
  [EPB] [varchar](150),--base=xs:string, --ST_defaults
  [FPB] [varchar](38),--base=xs:string, --ST_defaults
  [GPB] [varchar](150),--base=xs:string, --ST_defaults
  [HPB] [varchar](38),--base=xs:string, --ST_defaults
  --UNDECASSRAW
  [IPB] [varchar](150),--base=xs:string, --ST_defaults
  [JPB] [varchar](38),--base=xs:string, --ST_defaults
  [KPB] [varchar](150),--base=xs:string, --ST_defaults
  [LPB] [varchar](38),--base=xs:string, --ST_defaults
  [MPB] [varchar](150),--base=xs:string, --ST_defaults
  [NPB] [varchar](38),--base=xs:string, --ST_defaults
  [OPB] [varchar](150),--base=xs:string, --ST_defaults
  [PPB] [varchar](38),--base=xs:string, --ST_defaults
  [QPB] [varchar](150),--base=xs:string, --ST_defaults
  [RPB] [varchar](38),--base=xs:string, --ST_defaults
  --NOTICES
  [ZPB] [int],--base=xs:int, --ST_defaults
  [AQB] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_GEORISK2006', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_GEORISK2006];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_GEORISK2006](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --MAIN
  [VSB] [int], --ST_defaults ST_bit
  [WSB] [varchar](10), --Default string 
  [XSB] [varchar](100), --ST_defaults xs:token
  [YSB] [varchar](100), --ST_defaults xs:token
  [ZSB] [varchar](100), --ST_defaults xs:token
  [ATB] [varchar](100), --ST_defaults xs:token
  [BTB] [varchar](100), --ST_defaults xs:token
  [CTB] [int], --ST_defaults ST_bit
  --CCJ
  [DTB] [float], --ST_defaults xs:double
  [ETB] [int],--base=xs:int, --ST_defaults
  [FTB] [float], --ST_defaults xs:double
  [NWB] [float], --ST_defaults xs:double
  [GTB] [int],--base=xs:int, --ST_defaults
  [OWB] [float], --ST_defaults xs:double
  [HTB] [int],--base=xs:int, --ST_defaults
  [PWB] [float], --ST_defaults xs:double
  [ITB] [int],--base=xs:int, --ST_defaults
  [MWB] [int],--base=xs:int, --ST_defaults
  [JTB] [int],--base=xs:int, --ST_defaults
  [KTB] [int],--base=xs:int, --ST_defaults
  [LTB] [int],--base=xs:int, --ST_defaults
  [MTB] [int],--base=xs:int, --ST_defaults
  [NTB] [int],--base=xs:int, --ST_defaults
  [OTB] [int],--base=xs:int, --ST_defaults
  [PTB] [int],--base=xs:int, --ST_defaults
  [QTB] [int],--base=xs:int, --ST_defaults
  --INSOLVENCY
  [RTB] [int],--base=xs:int, --ST_defaults
  [STB] [float], --ST_defaults xs:double
  [TTB] [int],--base=xs:int, --ST_defaults
  --FAMILY
  [UTB] [int],--base=xs:int, --ST_defaults
  [VTB] [int],--base=xs:int, --ST_defaults
  [WTB] [int],--base=xs:int, --ST_defaults
  [XTB] [int],--base=xs:int, --ST_defaults
  [YTB] [int],--base=xs:int, --ST_defaults
  [ZTB] [int],--base=xs:int, --ST_defaults
  [AUB] [int],--base=xs:int, --ST_defaults
  [BUB] [int],--base=xs:int, --ST_defaults
  --HH
  [DUB] [int],--base=xs:int, --ST_defaults
  [EUB] [int],--base=xs:int, --ST_defaults
  [FUB] [int],--base=xs:int, --ST_defaults
  [GUB] [int],--base=xs:int, --ST_defaults
  [HUB] [int],--base=xs:int, --ST_defaults
  [IUB] [int],--base=xs:int, --ST_defaults
  [JUB] [int],--base=xs:int, --ST_defaults
  [KUB] [int],--base=xs:int, --ST_defaults
  --HIST
  [LUB] [int],--base=xs:int, --ST_defaults
  [MUB] [int],--base=xs:int, --ST_defaults
  [NUB] [int],--base=xs:int, --ST_defaults
  [OUB] [int],--base=xs:int, --ST_defaults
  [PUB] [int],--base=xs:int, --ST_defaults
  [QUB] [int],--base=xs:int, --ST_defaults
  --GD1
  [SUB] [varchar](4),--base=xs:string, --ST_defaults
  --PARTSHARE
  [TUB] [int],--base=xs:int, --ST_defaults
  [UUB] [int],--base=xs:int, --ST_defaults
  [VUB] [int],--base=xs:int, --ST_defaults
  [WUB] [int],--base=xs:int, --ST_defaults
  [XUB] [int],--base=xs:int, --ST_defaults
  [YUB] [int],--base=xs:int, --ST_defaults
  [ZUB] [int],--base=xs:int, --ST_defaults
  [AVB] [int],--base=xs:int, --ST_defaults
  --FULLSHARE
  [CVB] [int],--base=xs:int, --ST_defaults
  [DVB] [int],--base=xs:int, --ST_defaults
  [EVB] [int],--base=xs:int, --ST_defaults
  [FVB] [int],--base=xs:int, --ST_defaults
  [GVB] [int],--base=xs:int, --ST_defaults
  [HVB] [int],--base=xs:int, --ST_defaults
  [IVB] [int],--base=xs:int, --ST_defaults
  [JVB] [int],--base=xs:int, --ST_defaults
  [KVB] [int],--base=xs:int, --ST_defaults
  [LVB] [int],--base=xs:int, --ST_defaults
  [MVB] [int],--base=xs:int, --ST_defaults
  [NVB] [int],--base=xs:int, --ST_defaults
  [OVB] [int],--base=xs:int, --ST_defaults
  [PVB] [int],--base=xs:int, --ST_defaults
  [QVB] [int],--base=xs:int, --ST_defaults
  [RVB] [int],--base=xs:int, --ST_defaults
  [SVB] [int],--base=xs:int, --ST_defaults
  [TVB] [int],--base=xs:int, --ST_defaults
  [UVB] [int],--base=xs:int, --ST_defaults
  [VVB] [int],--base=xs:int, --ST_defaults
  [WVB] [int],--base=xs:int, --ST_defaults
  [XVB] [int],--base=xs:int, --ST_defaults
  [YVB] [int],--base=xs:int, --ST_defaults
  [ZVB] [int],--base=xs:int, --ST_defaults
  [AWB] [int],--base=xs:int, --ST_defaults
  [BWB] [int],--base=xs:int, --ST_defaults
  [CWB] [int],--base=xs:int, --ST_defaults
  [DWB] [int],--base=xs:int, --ST_defaults
  --SEARCH
  [EWB] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_ICH', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_ICH];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_ICH](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --PUBLIC
  [FQB] [int], --ST_defaults ST_bit
  [GQB] [int], --ST_defaults ST_bit
  [NQB] [int], --ST_defaults ST_bit
  --SHARE
  [HQB] [int], --ST_defaults ST_bit
  [IQB] [int], --ST_defaults ST_bit
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_SPA', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_SPA];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_SPA](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --APPLSUMMARY
  --COUNTS
  [Z] [int],--base=xs:int, --ST_defaults
  [AB] [int],--base=xs:int, --ST_defaults
  [BB] [int],--base=xs:int, --ST_defaults
  [CB] [int],--base=xs:int, --ST_defaults
  [DB] [int],--base=xs:int, --ST_defaults
  [EB] [int],--base=xs:int, --ST_defaults
  [FB] [int],--base=xs:int, --ST_defaults
  [GB] [int], --ST_defaults ST_bit
  --NOTICES
  [HB] [int],--base=xs:int, --ST_defaults
  [IB] [int],--base=xs:int, --ST_defaults
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --WORSTPAY
  [FRB] [varchar](10), --Default string 
  [BQ] [varchar](10), --Default string 
  [CQ] [varchar](10), --Default string 
  [DQ] [varchar](10), --Default string 
  [EQ] [varchar](10), --Default string 
  [FQ] [varchar](10), --Default string 
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --WORSTPAYXHISTORIC
  [WBC] [varchar](10), --Default string 
  [XBC] [varchar](10), --Default string 
  [YBC] [varchar](10), --Default string 
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --ALERT
  [WR] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_USF', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_USF];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_USF](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --APPLSUMMARY
  --COUNTS
  [Z] [int],--base=xs:int, --ST_defaults
  [AB] [int],--base=xs:int, --ST_defaults
  [BB] [int],--base=xs:int, --ST_defaults
  [CB] [int],--base=xs:int, --ST_defaults
  [DB] [int],--base=xs:int, --ST_defaults
  [EB] [int],--base=xs:int, --ST_defaults
  [FB] [int],--base=xs:int, --ST_defaults
  [GB] [int], --ST_defaults ST_bit
  --NOTICES
  [HB] [int],--base=xs:int, --ST_defaults
  [IB] [int],--base=xs:int, --ST_defaults
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --WORSTPAY
  [FRB] [varchar](10), --Default string 
  [BQ] [varchar](10), --Default string 
  [CQ] [varchar](10), --Default string 
  [DQ] [varchar](10), --Default string 
  [EQ] [varchar](10), --Default string 
  [FQ] [varchar](10), --Default string 
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --WORSTPAYXHISTORIC
  [WBC] [varchar](10), --Default string 
  [XBC] [varchar](10), --Default string 
  [YBC] [varchar](10), --Default string 
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --ALERT
  [WR] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_HHO', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_HHO];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_HHO](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_OIADEC', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_OIADEC];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_OIADEC](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [int] NOT NULL,
  --APPLSUMMARY
  --COUNTS
  [Z] [int],--base=xs:int, --ST_defaults
  [AB] [int],--base=xs:int, --ST_defaults
  [BB] [int],--base=xs:int, --ST_defaults
  [CB] [int],--base=xs:int, --ST_defaults
  [DB] [int],--base=xs:int, --ST_defaults
  [EB] [int],--base=xs:int, --ST_defaults
  [FB] [int],--base=xs:int, --ST_defaults
  [GB] [int], --ST_defaults ST_bit
  --SCOTDEBT
  [OQB] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [HB] [int],--base=xs:int, --ST_defaults
  [IB] [int],--base=xs:int, --ST_defaults
  --ALIAS_NO
  [UPB] [int],--base=xs:int, --ST_defaults
  [VPB] [int],--base=xs:int, --ST_defaults
  [WPB] [int],--base=xs:int, --ST_defaults
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --OTHER
  [NE] [int],--base=xs:int, --ST_defaults
  [OE] [varchar](10), --Default string 
  [PE] [int],--base=xs:int, --ST_defaults
  [QE] [int],--base=xs:int, --ST_defaults
  [RE] [int],--base=xs:int, --ST_defaults
  --ER
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --ALERT
  [PG] [int],--base=xs:int, --ST_defaults
  --EVENT
  [RG] [int], --ST_defaults ST_bit
  [TG] [int],--base=xs:int, --ST_defaults
  [OGC] [int],--base=xs:int, --ST_defaults
  [PGC] [int],--base=xs:int, --ST_defaults
  [QGC] [int],--base=xs:int, --ST_defaults
  --TIME
  [UG] [int],--base=xs:int, --ST_defaults
  [VG] [int],--base=xs:int, --ST_defaults
  [WG] [int],--base=xs:int, --ST_defaults
  [XG] [int],--base=xs:int, --ST_defaults
  [ZG] [int],--base=xs:int, --ST_defaults
  [AH] [int],--base=xs:int, --ST_defaults
  [BH] [int],--base=xs:int, --ST_defaults
  [CH] [int],--base=xs:int, --ST_defaults
  [JDC] [int],--base=xs:int, --ST_defaults
  [KDC] [int],--base=xs:int, --ST_defaults
  [GH] [int],--base=xs:int, --ST_defaults
  [HH] [int],--base=xs:int, --ST_defaults
  [IH] [int],--base=xs:int, --ST_defaults
  [JH] [varchar](10), --Default string 
  [SDB] [varchar](10), --Default string 
  --OPENVAL
  [KH] [int],--base=xs:int, --ST_defaults
  [LH] [int],--base=xs:int, --ST_defaults
  [MH] [int],--base=xs:int, --ST_defaults
  [NH] [int],--base=xs:int, --ST_defaults
  [OH] [int],--base=xs:int, --ST_defaults
  [NDC] [int],--base=xs:int, --ST_defaults
  [ARB] [int],--base=xs:int, --ST_defaults
  [CRB] [int],--base=xs:int, --ST_defaults
  [DRB] [int],--base=xs:int, --ST_defaults
  [TDB] [int],--base=xs:int, --ST_defaults
  [RRB] [int],--base=xs:int, --ST_defaults
  --WORSTLESS2
  [PH] [int],--base=xs:int, --ST_defaults
  [QH] [int],--base=xs:int, --ST_defaults
  [RH] [int],--base=xs:int, --ST_defaults
  [SH] [int],--base=xs:int, --ST_defaults
  --WORSTLESS1
  [UH] [int],--base=xs:int, --ST_defaults
  [VH] [int],--base=xs:int, --ST_defaults
  [WH] [int],--base=xs:int, --ST_defaults
  [XH] [int],--base=xs:int, --ST_defaults
  --WORSTUNCLASS
  [ZH] [int],--base=xs:int, --ST_defaults
  [AI] [int],--base=xs:int, --ST_defaults
  [BI] [int],--base=xs:int, --ST_defaults
  [CI] [int],--base=xs:int, --ST_defaults
  --WORST0
  [EI] [int],--base=xs:int, --ST_defaults
  [FI] [int],--base=xs:int, --ST_defaults
  [GI] [int],--base=xs:int, --ST_defaults
  [HI] [int],--base=xs:int, --ST_defaults
  --WORST3PLUS
  [EJ] [int],--base=xs:int, --ST_defaults
  [FJ] [int],--base=xs:int, --ST_defaults
  --CODE1
  [HJ] [int],--base=xs:int, --ST_defaults
  [TJ] [int],--base=xs:int, --ST_defaults
  --CODE2
  [ZJ] [int],--base=xs:int, --ST_defaults
  [FK] [int],--base=xs:int, --ST_defaults
  [RGC] [int],--base=xs:int, --ST_defaults
  --CODEDM
  [LJ] [int],--base=xs:int, --ST_defaults
  [MJ] [int],--base=xs:int, --ST_defaults
  [NJ] [int],--base=xs:int, --ST_defaults
  [OJ] [int],--base=xs:int, --ST_defaults
  --TOTAL1
  [LK] [int],--base=xs:int, --ST_defaults
  [WK] [int],--base=xs:int, --ST_defaults
  --TOTAL2
  [CL] [int],--base=xs:int, --ST_defaults
  [IL] [int],--base=xs:int, --ST_defaults
  [SGC] [int],--base=xs:int, --ST_defaults
  --TOTALDM
  [PK] [int],--base=xs:int, --ST_defaults
  [JCH] [int],--base=xs:int, --ST_defaults
  [QK] [int],--base=xs:int, --ST_defaults
  [RK] [int],--base=xs:int, --ST_defaults
  --ACCOUNT
  [OL] [int],--base=xs:int, --ST_defaults
  [PL] [int],--base=xs:int, --ST_defaults
  [QL] [int],--base=xs:int, --ST_defaults
  [RL] [int],--base=xs:int, --ST_defaults
  [SL] [int],--base=xs:int, --ST_defaults
  [TL] [int],--base=xs:int, --ST_defaults
  [UL] [int],--base=xs:int, --ST_defaults
  [VL] [int],--base=xs:int, --ST_defaults
  [WL] [int],--base=xs:int, --ST_defaults
  [XL] [int],--base=xs:int, --ST_defaults
  --VALUE
  [DM] [int],--base=xs:int, --ST_defaults
  [EM] [int],--base=xs:int, --ST_defaults
  [FM] [int],--base=xs:int, --ST_defaults
  [GM] [int],--base=xs:int, --ST_defaults
  [HM] [int],--base=xs:int, --ST_defaults
  [IM] [int],--base=xs:int, --ST_defaults
  [JM] [int],--base=xs:int, --ST_defaults
  [KM] [int],--base=xs:int, --ST_defaults
  [LM] [int],--base=xs:int, --ST_defaults
  [MM] [int],--base=xs:int, --ST_defaults
  --ACCOUNTACT
  [KHC] [int],--base=xs:int, --ST_defaults
  [LHC] [int],--base=xs:int, --ST_defaults
  [MHC] [int],--base=xs:int, --ST_defaults
  [NHC] [int],--base=xs:int, --ST_defaults
  [OHC] [int],--base=xs:int, --ST_defaults
  --PERCUNSEC
  [WZB] [int],--base=xs:int, --ST_defaults
  [XZB] [int],--base=xs:int, --ST_defaults
  [YZB] [int],--base=xs:int, --ST_defaults
  [ZZB] [int],--base=xs:int, --ST_defaults
  [MBC] [int],--base=xs:int, --ST_defaults
  --DEBT
  [SM] [int],--base=xs:int, --ST_defaults
  [TM] [int],--base=xs:int, --ST_defaults
  [UM] [int],--base=xs:int, --ST_defaults
  [VM] [int],--base=xs:int, --ST_defaults
  [WM] [int],--base=xs:int, --ST_defaults
  [XM] [int],--base=xs:int, --ST_defaults
  [MRB] [int],--base=xs:int, --ST_defaults
  [POB] [int],--base=xs:int, --ST_defaults
  --DEBTLIMIT
  [ZM] [int],--base=xs:int, --ST_defaults
  [AN] [int],--base=xs:int, --ST_defaults
  [BN] [int],--base=xs:int, --ST_defaults
  [ODC] [int],--base=xs:int, --ST_defaults
  [PDC] [int],--base=xs:int, --ST_defaults
  [QDC] [int],--base=xs:int, --ST_defaults
  --DEBTXMTGREPAY
  [HN] [int],--base=xs:int, --ST_defaults
  [IN] [int],--base=xs:int, --ST_defaults
  [JN] [int],--base=xs:int, --ST_defaults
  [KN] [int],--base=xs:int, --ST_defaults
  [LN] [int],--base=xs:int, --ST_defaults
  [SDC] [int],--base=xs:int, --ST_defaults
  [TDC] [int],--base=xs:int, --ST_defaults
  --DEBTMISC
  [MN] [int],--base=xs:int, --ST_defaults
  [NN] [int],--base=xs:int, --ST_defaults
  [ON] [int],--base=xs:int, --ST_defaults
  [PN] [int],--base=xs:int, --ST_defaults
  [QN] [int],--base=xs:int, --ST_defaults
  [SJC] [int],--base=xs:int, --ST_defaults
  --PAYMENTS
  [RN] [int],--base=xs:int, --ST_defaults
  [SN] [int],--base=xs:int, --ST_defaults
  [TN] [int],--base=xs:int, --ST_defaults
  [UN] [int],--base=xs:int, --ST_defaults
  --DUE
  [WN] [int],--base=xs:int, --ST_defaults
  [XN] [int],--base=xs:int, --ST_defaults
  [YN] [int],--base=xs:int, --ST_defaults
  --PAYSTAT3PLUS
  [PO] [int],--base=xs:int, --ST_defaults
  [QO] [int],--base=xs:int, --ST_defaults
  [RO] [int],--base=xs:int, --ST_defaults
  [SO] [int],--base=xs:int, --ST_defaults
  --WORSTPAY
  [FRB] [varchar](10), --Default string 
  [BQ] [varchar](10), --Default string 
  [CQ] [varchar](10), --Default string 
  [DQ] [varchar](10), --Default string 
  [EQ] [varchar](10), --Default string 
  [FQ] [varchar](10), --Default string 
  --WORSTXHOME
  [GRB] [varchar](10), --Default string 
  [IRB] [varchar](10), --Default string 
  --WORSTXUTIL
  [NJC] [varchar](10), --Default string 
  [OJC] [varchar](10), --Default string 
  --COMPANIES
  [HQ] [int],--base=xs:int, --ST_defaults
  [IQ] [int],--base=xs:int, --ST_defaults
  --OPENED412MNTH
  [BRB] [varchar](10), --Default string 
  --OPENED12MNTH
  [JQ] [varchar](10), --Default string 
  [KQ] [varchar](10), --Default string 
  [LQ] [varchar](10), --Default string 
  [MQ] [varchar](10), --Default string 
  --OPENED12PLUSMNTH
  [ERB] [varchar](10), --Default string 
  --OPENED24MNTH
  [NQ] [varchar](10), --Default string 
  [OQ] [varchar](10), --Default string 
  [PQ] [varchar](10), --Default string 
  [QQ] [varchar](10), --Default string 
  [RQ] [varchar](10), --Default string 
  --OPENEDSETTLD
  [ZQ] [varchar](10), --Default string 
  [AR] [varchar](10), --Default string 
  [BR] [varchar](10), --Default string 
  --NOTICES
  [DG] [int],--base=xs:int, --ST_defaults
  [EG] [int],--base=xs:int, --ST_defaults
  --CURRENT
  [JRB] [int],--base=xs:int, --ST_defaults
  [KRB] [int],--base=xs:int, --ST_defaults
  [HRB] [varchar](10), --Default string 
  --SETTLED0
  [LRB] [int],--base=xs:int, --ST_defaults
  [YQB] [int],--base=xs:int, --ST_defaults
  [ZQB] [int],--base=xs:int, --ST_defaults
  --RUNAWAYS
  [FYB] [int],--base=xs:int, --ST_defaults
  [GYB] [int],--base=xs:int, --ST_defaults
  --ALLHCSTATUS
  [HYB] [varchar](10), --Default string 
  [MYB] [varchar](10), --Default string 
  [NYB] [varchar](10), --Default string 
  [OYB] [varchar](10), --Default string 
  --ACTHCSTATUS
  [RYB] [varchar](10), --Default string 
  --XHOMECREDIT
  [SYB] [varchar](10), --Default string 
  --HCBALANCES
  [TYB] [int],--base=xs:int, --ST_defaults
  [WYB] [int],--base=xs:int, --ST_defaults
  [XYB] [int],--base=xs:int, --ST_defaults
  [YYB] [int],--base=xs:int, --ST_defaults
  --LNOPENED
  [UDC] [int],--base=xs:int, --ST_defaults
  [VDC] [int],--base=xs:int, --ST_defaults
  [WDC] [int],--base=xs:int, --ST_defaults
  [XDC] [int],--base=xs:int, --ST_defaults
  --MTGOPENED
  [YDC] [int],--base=xs:int, --ST_defaults
  [ZDC] [int],--base=xs:int, --ST_defaults
  [AEC] [int],--base=xs:int, --ST_defaults
  [BEC] [int],--base=xs:int, --ST_defaults
  --CCOPENED
  [CEC] [int],--base=xs:int, --ST_defaults
  [DEC] [int],--base=xs:int, --ST_defaults
  [EEC] [int],--base=xs:int, --ST_defaults
  [FEC] [int],--base=xs:int, --ST_defaults
  --TELCOOPENED
  [GEC] [int],--base=xs:int, --ST_defaults
  [HEC] [int],--base=xs:int, --ST_defaults
  [IEC] [int],--base=xs:int, --ST_defaults
  [JEC] [int],--base=xs:int, --ST_defaults
  --UTILOPENED
  [KEC] [int],--base=xs:int, --ST_defaults
  [LEC] [int],--base=xs:int, --ST_defaults
  [MEC] [int],--base=xs:int, --ST_defaults
  [NEC] [int],--base=xs:int, --ST_defaults
  --HOMESHOPOPENED
  [OEC] [int],--base=xs:int, --ST_defaults
  [PEC] [int],--base=xs:int, --ST_defaults
  [QEC] [int],--base=xs:int, --ST_defaults
  [REC] [int],--base=xs:int, --ST_defaults
  --BKOPENED
  [SEC] [int],--base=xs:int, --ST_defaults
  [TEC] [int],--base=xs:int, --ST_defaults
  [UEC] [int],--base=xs:int, --ST_defaults
  [VEC] [int],--base=xs:int, --ST_defaults
  --MISCOPENED
  [WEC] [int],--base=xs:int, --ST_defaults
  [XEC] [int],--base=xs:int, --ST_defaults
  [YEC] [int],--base=xs:int, --ST_defaults
  [ZEC] [int],--base=xs:int, --ST_defaults
  --INSOPENED
  [AFC] [int],--base=xs:int, --ST_defaults
  [BFC] [int],--base=xs:int, --ST_defaults
  [CFC] [int],--base=xs:int, --ST_defaults
  [DFC] [int],--base=xs:int, --ST_defaults
  --HCNEWACCS
  [WWB] [int],--base=xs:int, --ST_defaults
  [XWB] [int],--base=xs:int, --ST_defaults
  [YWB] [int],--base=xs:int, --ST_defaults
  [ZWB] [int],--base=xs:int, --ST_defaults
  --LNSETTLED
  [EFC] [int],--base=xs:int, --ST_defaults
  [FFC] [int],--base=xs:int, --ST_defaults
  [GFC] [int],--base=xs:int, --ST_defaults
  [HFC] [int],--base=xs:int, --ST_defaults
  --MTGSETTLED
  [IFC] [int],--base=xs:int, --ST_defaults
  [JFC] [int],--base=xs:int, --ST_defaults
  [KFC] [int],--base=xs:int, --ST_defaults
  [LFC] [int],--base=xs:int, --ST_defaults
  --CCSETTLED
  [MFC] [int],--base=xs:int, --ST_defaults
  [NFC] [int],--base=xs:int, --ST_defaults
  [OFC] [int],--base=xs:int, --ST_defaults
  [PFC] [int],--base=xs:int, --ST_defaults
  --TELCOSETTLED
  [QFC] [int],--base=xs:int, --ST_defaults
  [RFC] [int],--base=xs:int, --ST_defaults
  [SFC] [int],--base=xs:int, --ST_defaults
  [TFC] [int],--base=xs:int, --ST_defaults
  --UTILSETTLED
  [UFC] [int],--base=xs:int, --ST_defaults
  [VFC] [int],--base=xs:int, --ST_defaults
  [WFC] [int],--base=xs:int, --ST_defaults
  [XFC] [int],--base=xs:int, --ST_defaults
  --HOMESHOPSETTLED
  [YFC] [int],--base=xs:int, --ST_defaults
  [ZFC] [int],--base=xs:int, --ST_defaults
  [AGC] [int],--base=xs:int, --ST_defaults
  [BGC] [int],--base=xs:int, --ST_defaults
  --BKSETTLED
  [CGC] [int],--base=xs:int, --ST_defaults
  [DGC] [int],--base=xs:int, --ST_defaults
  [EGC] [int],--base=xs:int, --ST_defaults
  [FGC] [int],--base=xs:int, --ST_defaults
  --MISCSETTLED
  [GGC] [int],--base=xs:int, --ST_defaults
  [HGC] [int],--base=xs:int, --ST_defaults
  [IGC] [int],--base=xs:int, --ST_defaults
  [JGC] [int],--base=xs:int, --ST_defaults
  --INSSETTLED
  [KGC] [int],--base=xs:int, --ST_defaults
  [LGC] [int],--base=xs:int, --ST_defaults
  [MGC] [int],--base=xs:int, --ST_defaults
  [NGC] [int],--base=xs:int, --ST_defaults
  --HCSETTLED
  [BZB] [int],--base=xs:int, --ST_defaults
  [CZB] [int],--base=xs:int, --ST_defaults
  [DZB] [int],--base=xs:int, --ST_defaults
  [FZB] [int],--base=xs:int, --ST_defaults
  [NAC] [int],--base=xs:int, --ST_defaults
  [OAC] [int],--base=xs:int, --ST_defaults
  --REVOLVECRED
  [MZB] [int],--base=xs:int, --ST_defaults
  [RIC] [int],--base=xs:int, --ST_defaults
  [SIC] [int],--base=xs:int, --ST_defaults
  [TIC] [int],--base=xs:int, --ST_defaults
  --HCWRSTSETT
  [PAC] [varchar](10), --Default string 
  [QAC] [varchar](10), --Default string 
  --HCWRSTACT
  [WAC] [varchar](10), --Default string 
  --HCPAY
  [RAC] [int],--base=xs:int, --ST_defaults
  --HCAGE
  [SAC] [int],--base=xs:int, --ST_defaults
  [TAC] [int],--base=xs:int, --ST_defaults
  --HCBALCHG
  [UAC] [int],--base=xs:int, --ST_defaults
  [VAC] [int],--base=xs:int, --ST_defaults
  [XAC] [int],--base=xs:int, --ST_defaults
  [YAC] [int],--base=xs:int, --ST_defaults
  --WORSTPAYLOAN
  [ABC] [varchar](10), --Default string 
  [BBC] [varchar](10), --Default string 
  [CBC] [varchar](10), --Default string 
  --WORSTPAYCC
  [DBC] [varchar](10), --Default string 
  [EBC] [varchar](10), --Default string 
  [FBC] [varchar](10), --Default string 
  --WORSTPAYMTG
  [GBC] [varchar](10), --Default string 
  [HBC] [varchar](10), --Default string 
  [IBC] [varchar](10), --Default string 
  --WORSTPAYTELECO
  [PCC] [varchar](10), --Default string 
  [QCC] [varchar](10), --Default string 
  [RCC] [varchar](10), --Default string 
  --WORSTPAYUTIL
  [SCC] [varchar](10), --Default string 
  [TCC] [varchar](10), --Default string 
  [UCC] [varchar](10), --Default string 
  --WORSTPAYHOMESHOP
  [VCC] [varchar](10), --Default string 
  [WCC] [varchar](10), --Default string 
  [XCC] [varchar](10), --Default string 
  --WORSTPAYBNK
  [JBC] [varchar](10), --Default string 
  [KBC] [varchar](10), --Default string 
  [LBC] [varchar](10), --Default string 
  --WORSTPAYMISC
  [YCC] [varchar](10), --Default string 
  [ZCC] [varchar](10), --Default string 
  [ADC] [varchar](10), --Default string 
  --WORSTPAYINS
  [BDC] [varchar](10), --Default string 
  [CDC] [varchar](10), --Default string 
  [DDC] [varchar](10), --Default string 
  --WORSTPAYHOMECR
  [EDC] [varchar](10), --Default string 
  [FDC] [varchar](10), --Default string 
  [GDC] [varchar](10), --Default string 
  --OPENED12MTHXHISTORIC
  [ZBC] [varchar](10), --Default string 
  --OPENED24MTHXHISTORIC
  [ACC] [varchar](10), --Default string 
  --DUEXHISTORIC
  [BCC] [int],--base=xs:int, --ST_defaults
  [CCC] [int],--base=xs:int, --ST_defaults
  [DCC] [int],--base=xs:int, --ST_defaults
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --WORSTPAYXHISTORIC
  [WBC] [varchar](10), --Default string 
  [XBC] [varchar](10), --Default string 
  [YBC] [varchar](10), --Default string 
  --UTILISATION
  [OCC] [int],--base=xs:int, --ST_defaults
  [PHC] [int],--base=xs:int, --ST_defaults
  [QHC] [int],--base=xs:int, --ST_defaults
  [RHC] [int],--base=xs:int, --ST_defaults
  [SHC] [int],--base=xs:int, --ST_defaults
  [THC] [int],--base=xs:int, --ST_defaults
  --HIGHEST
  [UHC] [int],--base=xs:int, --ST_defaults
  [VHC] [int],--base=xs:int, --ST_defaults
  --PAYDAY
  [XHC] [int],--base=xs:int, --ST_defaults
  [ZHC] [int],--base=xs:int, --ST_defaults
  [LIC] [int],--base=xs:int, --ST_defaults
  --PAYDAYOPENED
  [BIC] [int],--base=xs:int, --ST_defaults
  [CIC] [int],--base=xs:int, --ST_defaults
  [DIC] [int],--base=xs:int, --ST_defaults
  [MIC] [int],--base=xs:int, --ST_defaults
  [EJC] [int],--base=xs:int, --ST_defaults
  --PAYDAYWORST
  [IIC] [varchar](10), --Default string 
  [JIC] [varchar](10), --Default string 
  [KIC] [varchar](10), --Default string 
  --PAYDAYVALUE
  [YHC] [int],--base=xs:int, --ST_defaults
  [AIC] [int],--base=xs:int, --ST_defaults
  [EIC] [int],--base=xs:int, --ST_defaults
  [FIC] [int],--base=xs:int, --ST_defaults
  [GIC] [int],--base=xs:int, --ST_defaults
  [FJC] [int],--base=xs:int, --ST_defaults
  [GJC] [int],--base=xs:int, --ST_defaults
  [HJC] [int],--base=xs:int, --ST_defaults
  [PJC] [int],--base=xs:int, --ST_defaults
  --PAYDAYSETTLED
  [HIC] [int],--base=xs:int, --ST_defaults
  [JJC] [int],--base=xs:int, --ST_defaults
  [KJC] [int],--base=xs:int, --ST_defaults
  [IJC] [int],--base=xs:int, --ST_defaults
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --ALERT
  [WR] [int],--base=xs:int, --ST_defaults
  --ALL
  [XR] [varchar](10), --Default string 
  [YR] [int],--base=xs:int, --ST_defaults
  [ZR] [int],--base=xs:int, --ST_defaults
  [ZS] [int],--base=xs:int, --ST_defaults
  [AT] [int],--base=xs:int, --ST_defaults
  [BT] [int],--base=xs:int, --ST_defaults
  [CT] [int],--base=xs:int, --ST_defaults
  [DT] [int],--base=xs:int, --ST_defaults
  [ET] [int],--base=xs:int, --ST_defaults
  [FT] [int],--base=xs:int, --ST_defaults
  [GT] [int],--base=xs:int, --ST_defaults
  [IT] [int],--base=xs:int, --ST_defaults
  --VALDEFAULT
  [AS] [int],--base=xs:int, --ST_defaults
  [BS] [int],--base=xs:int, --ST_defaults
  [CS] [int],--base=xs:int, --ST_defaults
  [DS] [int],--base=xs:int, --ST_defaults
  [ES] [int],--base=xs:int, --ST_defaults
  [FS] [int],--base=xs:int, --ST_defaults
  [GS] [int],--base=xs:int, --ST_defaults
  [HS] [int],--base=xs:int, --ST_defaults
  [JS] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [WS] [int],--base=xs:int, --ST_defaults
  --MISC
  [XS] [int],--base=xs:int, --ST_defaults
  [HZB] [int],--base=xs:int, --ST_defaults
  [MJC] [int],--base=xs:int, --ST_defaults
  --NUMDEFBAL
  [PT] [int],--base=xs:int, --ST_defaults
  [QT] [int],--base=xs:int, --ST_defaults
  [RT] [int],--base=xs:int, --ST_defaults
  [ST] [int],--base=xs:int, --ST_defaults
  [TT] [int],--base=xs:int, --ST_defaults
  --ENTERDEF
  [PP] [int],--base=xs:int, --ST_defaults
  [QP] [int],--base=xs:int, --ST_defaults
  [RP] [int],--base=xs:int, --ST_defaults
  [SP] [int],--base=xs:int, --ST_defaults
  [TP] [int],--base=xs:int, --ST_defaults
  --SETTLED
  [UP] [int],--base=xs:int, --ST_defaults
  [GAC] [int],--base=xs:int, --ST_defaults
  [HAC] [int],--base=xs:int, --ST_defaults
  [IAC] [int],--base=xs:int, --ST_defaults
  [JAC] [int],--base=xs:int, --ST_defaults
  [VP] [int],--base=xs:int, --ST_defaults
  --RECOVERED
  [GZB] [int],--base=xs:int, --ST_defaults
  [NZB] [int],--base=xs:int, --ST_defaults
  [ZP] [int],--base=xs:int, --ST_defaults
  [UZB] [int],--base=xs:int, --ST_defaults
  [VZB] [int],--base=xs:int, --ST_defaults
  [AQ] [int],--base=xs:int, --ST_defaults
  --HCDELQ
  [AAC] [int],--base=xs:int, --ST_defaults
  [BAC] [int],--base=xs:int, --ST_defaults
  [CAC] [int],--base=xs:int, --ST_defaults
  --HCVALDEF
  [KAC] [int],--base=xs:int, --ST_defaults
  [LAC] [int],--base=xs:int, --ST_defaults
  [MAC] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  --TIME
  [MU] [int],--base=xs:int, --ST_defaults
  [NU] [int],--base=xs:int, --ST_defaults
  [PU] [int],--base=xs:int, --ST_defaults
  [QU] [int],--base=xs:int, --ST_defaults
  [QZB] [int],--base=xs:int, --ST_defaults
  --OPENED
  [WW] [int],--base=xs:int, --ST_defaults
  [XW] [int],--base=xs:int, --ST_defaults
  [YW] [int],--base=xs:int, --ST_defaults
  [ZW] [int],--base=xs:int, --ST_defaults
  [AX] [int],--base=xs:int, --ST_defaults
  [WGC] [int],--base=xs:int, --ST_defaults
  --TOTDF
  [MX] [int],--base=xs:int, --ST_defaults
  --NUMDF
  [BY] [int],--base=xs:int, --ST_defaults
  --TOTNONDF
  [QY] [int],--base=xs:int, --ST_defaults
  --NUMNONDF
  [FZ] [int],--base=xs:int, --ST_defaults
  --VALSECTOR
  [LZ] [int],--base=xs:int, --ST_defaults
  [MZ] [int],--base=xs:int, --ST_defaults
  [NZ] [int],--base=xs:int, --ST_defaults
  --DEBT
  [UZ] [int],--base=xs:int, --ST_defaults
  [VZ] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [TGB] [int],--base=xs:int, --ST_defaults
  [UGB] [int],--base=xs:int, --ST_defaults
  --WORST
  [JQB] [varchar](10), --Default string 
  [TZB] [varchar](10), --Default string 
  --HCDELQ
  [DAC] [int],--base=xs:int, --ST_defaults
  [EAC] [int],--base=xs:int, --ST_defaults
  [FAC] [int],--base=xs:int, --ST_defaults
  --CIFAS
  --MAIN
  [CAB] [int], --ST_defaults ST_bit
  [DAB] [int],--base=xs:int, --ST_defaults
  [EAB] [int],--base=xs:int, --ST_defaults
  [FAB] [int],--base=xs:int, --ST_defaults
  [GAB] [int],--base=xs:int, --ST_defaults
  [HAB] [int],--base=xs:int, --ST_defaults
  [IAB] [int],--base=xs:int, --ST_defaults
  [JAB] [int],--base=xs:int, --ST_defaults
  [KAB] [int],--base=xs:int, --ST_defaults
  [LAB] [int],--base=xs:int, --ST_defaults
  [MAB] [int],--base=xs:int, --ST_defaults
  [NAB] [int],--base=xs:int, --ST_defaults
  [OAB] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [KBB] [int],--base=xs:int, --ST_defaults
  --SEARCH
  --MAIN
  [UDB] [int], --ST_defaults ST_bit
  --DEBTCOLL
  [KEB] [int],--base=xs:int, --ST_defaults
  [LEB] [int],--base=xs:int, --ST_defaults
  [MEB] [int],--base=xs:int, --ST_defaults
  [NEB] [int],--base=xs:int, --ST_defaults
  --ALLCA
  [YGC] [int],--base=xs:int, --ST_defaults
  [QEB] [int],--base=xs:int, --ST_defaults
  [REB] [int],--base=xs:int, --ST_defaults
  [SEB] [int],--base=xs:int, --ST_defaults
  [TEB] [int],--base=xs:int, --ST_defaults
  [UEB] [int],--base=xs:int, --ST_defaults
  --OWNCA
  [VEB] [int],--base=xs:int, --ST_defaults
  [WEB] [int],--base=xs:int, --ST_defaults
  [XEB] [int],--base=xs:int, --ST_defaults
  [YEB] [int],--base=xs:int, --ST_defaults
  [ZEB] [int],--base=xs:int, --ST_defaults
  --HOMECREDIT
  [MFB] [int],--base=xs:int, --ST_defaults
  [NFB] [int],--base=xs:int, --ST_defaults
  [OFB] [int],--base=xs:int, --ST_defaults
  [PFB] [int],--base=xs:int, --ST_defaults
  [QFB] [int],--base=xs:int, --ST_defaults
  [RFB] [int],--base=xs:int, --ST_defaults
  --TELECOM
  [XGC] [int],--base=xs:int, --ST_defaults
  --PAYDAY
  [DJC] [int],--base=xs:int, --ST_defaults
  [NIC] [int],--base=xs:int, --ST_defaults
  [OIC] [int],--base=xs:int, --ST_defaults
  [PIC] [int],--base=xs:int, --ST_defaults
  [QIC] [int],--base=xs:int, --ST_defaults
  --ADDRLINK
  --ADDMAIN
  [VGB] [int], --ST_defaults ST_bit
  [WGB] [int],--base=xs:int, --ST_defaults
  [ZAC] [int], --ST_defaults ST_bit
  [NBC] [int],--base=xs:int, --ST_defaults
  --ADDRAW
  [XGB] [varchar](440),--base=xs:string, --ST_defaults
  [YGB] [varchar](4),--base=xs:string, --ST_defaults
  [QOB] [varchar](38),--base=xs:string, --ST_defaults
  [ZGB] [varchar](440),--base=xs:string, --ST_defaults
  [AHB] [varchar](4),--base=xs:string, --ST_defaults
  [ROB] [varchar](38),--base=xs:string, --ST_defaults
  [BHB] [varchar](440),--base=xs:string, --ST_defaults
  [CHB] [varchar](4),--base=xs:string, --ST_defaults
  [SOB] [varchar](38),--base=xs:string, --ST_defaults
  [DHB] [varchar](440),--base=xs:string, --ST_defaults
  [EHB] [varchar](4),--base=xs:string, --ST_defaults
  [TOB] [varchar](38),--base=xs:string, --ST_defaults
  [FHB] [varchar](440),--base=xs:string, --ST_defaults
  [GHB] [varchar](4),--base=xs:string, --ST_defaults
  [JBB] [varchar](38),--base=xs:string, --ST_defaults
  --ADDTIME
  [HHB] [date],
  [HHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [IHB] [date],
  [IHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [JHB] [date],
  [JHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [KHB] [date],
  [KHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [LHB] [date],
  [LHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  --NOTICES
  [XPB] [int],--base=xs:int, --ST_defaults
  [YPB] [int],--base=xs:int, --ST_defaults
  --ACD
  --BALANCE
  [AYB] [int],--base=xs:int, --ST_defaults
  --PAYMENTS
  [BYB] [int],--base=xs:int, --ST_defaults
  [CYB] [int],--base=xs:int, --ST_defaults
  [DYB] [int],--base=xs:int, --ST_defaults
  [EYB] [int],--base=xs:int, --ST_defaults
  [FHC] [int],--base=xs:int, --ST_defaults
  [GHC] [int],--base=xs:int, --ST_defaults
  [IYB] [int],--base=xs:int, --ST_defaults
  [JYB] [int],--base=xs:int, --ST_defaults
  [KYB] [int],--base=xs:int, --ST_defaults
  [LYB] [int],--base=xs:int, --ST_defaults
  [WHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_NUM
  [PYB] [int],--base=xs:int, --ST_defaults
  [QYB] [int],--base=xs:int, --ST_defaults
  [ZGC] [int],--base=xs:int, --ST_defaults
  [AHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_VAL
  [UYB] [int],--base=xs:int, --ST_defaults
  [VYB] [int],--base=xs:int, --ST_defaults
  [BHC] [int],--base=xs:int, --ST_defaults
  [CHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_BAL
  [ZYB] [int],--base=xs:int, --ST_defaults
  [AZB] [int],--base=xs:int, --ST_defaults
  [DHC] [int],--base=xs:int, --ST_defaults
  [EHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_BALTIME
  [EZB] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_PAY
  [IZB] [int],--base=xs:int, --ST_defaults
  );
  go

  IF OBJECT_ID('CallCredit.BSB_APPLICANT_OIAUNDEC', 'U') IS NOT NULL
    DROP TABLE [CallCredit].[BSB_APPLICANT_OIAUNDEC];
  go
  CREATE TABLE [CallCredit].[BSB_APPLICANT_OIAUNDEC](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [int] NOT NULL,
  --APPLSUMMARY
  --COUNTS
  [Z] [int],--base=xs:int, --ST_defaults
  [AB] [int],--base=xs:int, --ST_defaults
  [BB] [int],--base=xs:int, --ST_defaults
  [CB] [int],--base=xs:int, --ST_defaults
  [DB] [int],--base=xs:int, --ST_defaults
  [EB] [int],--base=xs:int, --ST_defaults
  [FB] [int],--base=xs:int, --ST_defaults
  [GB] [int], --ST_defaults ST_bit
  --SCOTDEBT
  [OQB] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [HB] [int],--base=xs:int, --ST_defaults
  [IB] [int],--base=xs:int, --ST_defaults
  --ALIAS_NO
  [UPB] [int],--base=xs:int, --ST_defaults
  [VPB] [int],--base=xs:int, --ST_defaults
  [WPB] [int],--base=xs:int, --ST_defaults
  --PUBLIC
  --BOTH
  [FD] [int], --ST_defaults ST_bit
  [GD] [int],--base=xs:int, --ST_defaults
  [HD] [int],--base=xs:int, --ST_defaults
  [ID] [int],--base=xs:int, --ST_defaults
  [JD] [int],--base=xs:int, --ST_defaults
  [QDB] [int],--base=xs:int, --ST_defaults
  [TQB] [int],--base=xs:int, --ST_defaults
  [KD] [int],--base=xs:int, --ST_defaults
  [CQB] [int],--base=xs:int, --ST_defaults
  [LD] [int],--base=xs:int, --ST_defaults
  [DQB] [int],--base=xs:int, --ST_defaults
  [MD] [int],--base=xs:int, --ST_defaults
  [ND] [int],--base=xs:int, --ST_defaults
  [OD] [date],
  [OD_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [PD] [int], --ST_defaults ST_bit
  [QD] [int],--base=xs:int, --ST_defaults
  [RD] [int],--base=xs:int, --ST_defaults
  [SD] [int], --ST_defaults ST_bit
  --AMOUNT
  [TD] [int],--base=xs:int, --ST_defaults
  [VD] [int],--base=xs:int, --ST_defaults
  --TIME
  [WD] [int],--base=xs:int, --ST_defaults
  [XD] [int],--base=xs:int, --ST_defaults
  [YD] [int],--base=xs:int, --ST_defaults
  [ZD] [int],--base=xs:int, --ST_defaults
  [AE] [int],--base=xs:int, --ST_defaults
  [BE] [int],--base=xs:int, --ST_defaults
  [CE] [int],--base=xs:int, --ST_defaults
  --NUMRECENCY
  [IE] [int],--base=xs:int, --ST_defaults
  [JE] [int],--base=xs:int, --ST_defaults
  [KE] [int],--base=xs:int, --ST_defaults
  [LE] [int],--base=xs:int, --ST_defaults
  [ME] [int],--base=xs:int, --ST_defaults
  --OTHER
  [NE] [int],--base=xs:int, --ST_defaults
  [OE] [varchar](10), --Default string 
  [PE] [int],--base=xs:int, --ST_defaults
  [QE] [int],--base=xs:int, --ST_defaults
  [RE] [int],--base=xs:int, --ST_defaults
  --ER
  --FULL
  --BOTH
  [LG] [varchar](10), --Default string 
  [MG] [varchar](10), --Default string 
  [NG] [varchar](10), --Default string 
  [OG] [varchar](10), --Default string 
  [SPB] [varchar](10), --Default string 
  [RDB] [varchar](10), --Default string 
  [HDC] [varchar](10), --Default string 
  [IDC] [varchar](10), --Default string 
  --ALERT
  [PG] [int],--base=xs:int, --ST_defaults
  --EVENT
  [RG] [int], --ST_defaults ST_bit
  [TG] [int],--base=xs:int, --ST_defaults
  [OGC] [int],--base=xs:int, --ST_defaults
  [PGC] [int],--base=xs:int, --ST_defaults
  [QGC] [int],--base=xs:int, --ST_defaults
  --TIME
  [UG] [int],--base=xs:int, --ST_defaults
  [VG] [int],--base=xs:int, --ST_defaults
  [WG] [int],--base=xs:int, --ST_defaults
  [XG] [int],--base=xs:int, --ST_defaults
  [ZG] [int],--base=xs:int, --ST_defaults
  [AH] [int],--base=xs:int, --ST_defaults
  [BH] [int],--base=xs:int, --ST_defaults
  [CH] [int],--base=xs:int, --ST_defaults
  [JDC] [int],--base=xs:int, --ST_defaults
  [KDC] [int],--base=xs:int, --ST_defaults
  [GH] [int],--base=xs:int, --ST_defaults
  [HH] [int],--base=xs:int, --ST_defaults
  [IH] [int],--base=xs:int, --ST_defaults
  [JH] [varchar](10), --Default string 
  [SDB] [varchar](10), --Default string 
  --OPENVAL
  [KH] [int],--base=xs:int, --ST_defaults
  [LH] [int],--base=xs:int, --ST_defaults
  [MH] [int],--base=xs:int, --ST_defaults
  [NH] [int],--base=xs:int, --ST_defaults
  [OH] [int],--base=xs:int, --ST_defaults
  [NDC] [int],--base=xs:int, --ST_defaults
  [ARB] [int],--base=xs:int, --ST_defaults
  [CRB] [int],--base=xs:int, --ST_defaults
  [DRB] [int],--base=xs:int, --ST_defaults
  [TDB] [int],--base=xs:int, --ST_defaults
  [RRB] [int],--base=xs:int, --ST_defaults
  --WORSTLESS2
  [PH] [int],--base=xs:int, --ST_defaults
  [QH] [int],--base=xs:int, --ST_defaults
  [RH] [int],--base=xs:int, --ST_defaults
  [SH] [int],--base=xs:int, --ST_defaults
  --WORSTLESS1
  [UH] [int],--base=xs:int, --ST_defaults
  [VH] [int],--base=xs:int, --ST_defaults
  [WH] [int],--base=xs:int, --ST_defaults
  [XH] [int],--base=xs:int, --ST_defaults
  --WORSTUNCLASS
  [ZH] [int],--base=xs:int, --ST_defaults
  [AI] [int],--base=xs:int, --ST_defaults
  [BI] [int],--base=xs:int, --ST_defaults
  [CI] [int],--base=xs:int, --ST_defaults
  --WORST0
  [EI] [int],--base=xs:int, --ST_defaults
  [FI] [int],--base=xs:int, --ST_defaults
  [GI] [int],--base=xs:int, --ST_defaults
  [HI] [int],--base=xs:int, --ST_defaults
  --WORST3PLUS
  [EJ] [int],--base=xs:int, --ST_defaults
  [FJ] [int],--base=xs:int, --ST_defaults
  --CODE1
  [HJ] [int],--base=xs:int, --ST_defaults
  [TJ] [int],--base=xs:int, --ST_defaults
  --CODE2
  [ZJ] [int],--base=xs:int, --ST_defaults
  [FK] [int],--base=xs:int, --ST_defaults
  [RGC] [int],--base=xs:int, --ST_defaults
  --CODEDM
  [LJ] [int],--base=xs:int, --ST_defaults
  [MJ] [int],--base=xs:int, --ST_defaults
  [NJ] [int],--base=xs:int, --ST_defaults
  [OJ] [int],--base=xs:int, --ST_defaults
  --TOTAL1
  [LK] [int],--base=xs:int, --ST_defaults
  [WK] [int],--base=xs:int, --ST_defaults
  --TOTAL2
  [CL] [int],--base=xs:int, --ST_defaults
  [IL] [int],--base=xs:int, --ST_defaults
  [SGC] [int],--base=xs:int, --ST_defaults
  --TOTALDM
  [PK] [int],--base=xs:int, --ST_defaults
  [JCH] [int],--base=xs:int, --ST_defaults
  [QK] [int],--base=xs:int, --ST_defaults
  [RK] [int],--base=xs:int, --ST_defaults
  --ACCOUNT
  [OL] [int],--base=xs:int, --ST_defaults
  [PL] [int],--base=xs:int, --ST_defaults
  [QL] [int],--base=xs:int, --ST_defaults
  [RL] [int],--base=xs:int, --ST_defaults
  [SL] [int],--base=xs:int, --ST_defaults
  [TL] [int],--base=xs:int, --ST_defaults
  [UL] [int],--base=xs:int, --ST_defaults
  [VL] [int],--base=xs:int, --ST_defaults
  [WL] [int],--base=xs:int, --ST_defaults
  [XL] [int],--base=xs:int, --ST_defaults
  --VALUE
  [DM] [int],--base=xs:int, --ST_defaults
  [EM] [int],--base=xs:int, --ST_defaults
  [FM] [int],--base=xs:int, --ST_defaults
  [GM] [int],--base=xs:int, --ST_defaults
  [HM] [int],--base=xs:int, --ST_defaults
  [IM] [int],--base=xs:int, --ST_defaults
  [JM] [int],--base=xs:int, --ST_defaults
  [KM] [int],--base=xs:int, --ST_defaults
  [LM] [int],--base=xs:int, --ST_defaults
  [MM] [int],--base=xs:int, --ST_defaults
  --ACCOUNTACT
  [KHC] [int],--base=xs:int, --ST_defaults
  [LHC] [int],--base=xs:int, --ST_defaults
  [MHC] [int],--base=xs:int, --ST_defaults
  [NHC] [int],--base=xs:int, --ST_defaults
  [OHC] [int],--base=xs:int, --ST_defaults
  --PERCUNSEC
  [WZB] [int],--base=xs:int, --ST_defaults
  [XZB] [int],--base=xs:int, --ST_defaults
  [YZB] [int],--base=xs:int, --ST_defaults
  [ZZB] [int],--base=xs:int, --ST_defaults
  [MBC] [int],--base=xs:int, --ST_defaults
  --DEBT
  [SM] [int],--base=xs:int, --ST_defaults
  [TM] [int],--base=xs:int, --ST_defaults
  [UM] [int],--base=xs:int, --ST_defaults
  [VM] [int],--base=xs:int, --ST_defaults
  [WM] [int],--base=xs:int, --ST_defaults
  [XM] [int],--base=xs:int, --ST_defaults
  [MRB] [int],--base=xs:int, --ST_defaults
  [POB] [int],--base=xs:int, --ST_defaults
  --DEBTLIMIT
  [ZM] [int],--base=xs:int, --ST_defaults
  [AN] [int],--base=xs:int, --ST_defaults
  [BN] [int],--base=xs:int, --ST_defaults
  [ODC] [int],--base=xs:int, --ST_defaults
  [PDC] [int],--base=xs:int, --ST_defaults
  [QDC] [int],--base=xs:int, --ST_defaults
  --DEBTXMTGREPAY
  [HN] [int],--base=xs:int, --ST_defaults
  [IN] [int],--base=xs:int, --ST_defaults
  [JN] [int],--base=xs:int, --ST_defaults
  [KN] [int],--base=xs:int, --ST_defaults
  [LN] [int],--base=xs:int, --ST_defaults
  [SDC] [int],--base=xs:int, --ST_defaults
  [TDC] [int],--base=xs:int, --ST_defaults
  --DEBTMISC
  [MN] [int],--base=xs:int, --ST_defaults
  [NN] [int],--base=xs:int, --ST_defaults
  [ON] [int],--base=xs:int, --ST_defaults
  [PN] [int],--base=xs:int, --ST_defaults
  [QN] [int],--base=xs:int, --ST_defaults
  [SJC] [int],--base=xs:int, --ST_defaults
  --PAYMENTS
  [RN] [int],--base=xs:int, --ST_defaults
  [SN] [int],--base=xs:int, --ST_defaults
  [TN] [int],--base=xs:int, --ST_defaults
  [UN] [int],--base=xs:int, --ST_defaults
  --DUE
  [WN] [int],--base=xs:int, --ST_defaults
  [XN] [int],--base=xs:int, --ST_defaults
  [YN] [int],--base=xs:int, --ST_defaults
  --PAYSTAT3PLUS
  [PO] [int],--base=xs:int, --ST_defaults
  [QO] [int],--base=xs:int, --ST_defaults
  [RO] [int],--base=xs:int, --ST_defaults
  [SO] [int],--base=xs:int, --ST_defaults
  --WORSTPAY
  [FRB] [varchar](10), --Default string 
  [BQ] [varchar](10), --Default string 
  [CQ] [varchar](10), --Default string 
  [DQ] [varchar](10), --Default string 
  [EQ] [varchar](10), --Default string 
  [FQ] [varchar](10), --Default string 
  --WORSTXHOME
  [GRB] [varchar](10), --Default string 
  [IRB] [varchar](10), --Default string 
  --WORSTXUTIL
  [NJC] [varchar](10), --Default string 
  [OJC] [varchar](10), --Default string 
  --COMPANIES
  [HQ] [int],--base=xs:int, --ST_defaults
  [IQ] [int],--base=xs:int, --ST_defaults
  --OPENED412MNTH
  [BRB] [varchar](10), --Default string 
  --OPENED12MNTH
  [JQ] [varchar](10), --Default string 
  [KQ] [varchar](10), --Default string 
  [LQ] [varchar](10), --Default string 
  [MQ] [varchar](10), --Default string 
  --OPENED12PLUSMNTH
  [ERB] [varchar](10), --Default string 
  --OPENED24MNTH
  [NQ] [varchar](10), --Default string 
  [OQ] [varchar](10), --Default string 
  [PQ] [varchar](10), --Default string 
  [QQ] [varchar](10), --Default string 
  [RQ] [varchar](10), --Default string 
  --OPENEDSETTLD
  [ZQ] [varchar](10), --Default string 
  [AR] [varchar](10), --Default string 
  [BR] [varchar](10), --Default string 
  --NOTICES
  [DG] [int],--base=xs:int, --ST_defaults
  [EG] [int],--base=xs:int, --ST_defaults
  --CURRENT
  [JRB] [int],--base=xs:int, --ST_defaults
  [KRB] [int],--base=xs:int, --ST_defaults
  [HRB] [varchar](10), --Default string 
  --SETTLED0
  [LRB] [int],--base=xs:int, --ST_defaults
  [YQB] [int],--base=xs:int, --ST_defaults
  [ZQB] [int],--base=xs:int, --ST_defaults
  --RUNAWAYS
  [FYB] [int],--base=xs:int, --ST_defaults
  [GYB] [int],--base=xs:int, --ST_defaults
  --ALLHCSTATUS
  [HYB] [varchar](10), --Default string 
  [MYB] [varchar](10), --Default string 
  [NYB] [varchar](10), --Default string 
  [OYB] [varchar](10), --Default string 
  --ACTHCSTATUS
  [RYB] [varchar](10), --Default string 
  --XHOMECREDIT
  [SYB] [varchar](10), --Default string 
  --HCBALANCES
  [TYB] [int],--base=xs:int, --ST_defaults
  [WYB] [int],--base=xs:int, --ST_defaults
  [XYB] [int],--base=xs:int, --ST_defaults
  [YYB] [int],--base=xs:int, --ST_defaults
  --LNOPENED
  [UDC] [int],--base=xs:int, --ST_defaults
  [VDC] [int],--base=xs:int, --ST_defaults
  [WDC] [int],--base=xs:int, --ST_defaults
  [XDC] [int],--base=xs:int, --ST_defaults
  --MTGOPENED
  [YDC] [int],--base=xs:int, --ST_defaults
  [ZDC] [int],--base=xs:int, --ST_defaults
  [AEC] [int],--base=xs:int, --ST_defaults
  [BEC] [int],--base=xs:int, --ST_defaults
  --CCOPENED
  [CEC] [int],--base=xs:int, --ST_defaults
  [DEC] [int],--base=xs:int, --ST_defaults
  [EEC] [int],--base=xs:int, --ST_defaults
  [FEC] [int],--base=xs:int, --ST_defaults
  --TELCOOPENED
  [GEC] [int],--base=xs:int, --ST_defaults
  [HEC] [int],--base=xs:int, --ST_defaults
  [IEC] [int],--base=xs:int, --ST_defaults
  [JEC] [int],--base=xs:int, --ST_defaults
  --UTILOPENED
  [KEC] [int],--base=xs:int, --ST_defaults
  [LEC] [int],--base=xs:int, --ST_defaults
  [MEC] [int],--base=xs:int, --ST_defaults
  [NEC] [int],--base=xs:int, --ST_defaults
  --HOMESHOPOPENED
  [OEC] [int],--base=xs:int, --ST_defaults
  [PEC] [int],--base=xs:int, --ST_defaults
  [QEC] [int],--base=xs:int, --ST_defaults
  [REC] [int],--base=xs:int, --ST_defaults
  --BKOPENED
  [SEC] [int],--base=xs:int, --ST_defaults
  [TEC] [int],--base=xs:int, --ST_defaults
  [UEC] [int],--base=xs:int, --ST_defaults
  [VEC] [int],--base=xs:int, --ST_defaults
  --MISCOPENED
  [WEC] [int],--base=xs:int, --ST_defaults
  [XEC] [int],--base=xs:int, --ST_defaults
  [YEC] [int],--base=xs:int, --ST_defaults
  [ZEC] [int],--base=xs:int, --ST_defaults
  --INSOPENED
  [AFC] [int],--base=xs:int, --ST_defaults
  [BFC] [int],--base=xs:int, --ST_defaults
  [CFC] [int],--base=xs:int, --ST_defaults
  [DFC] [int],--base=xs:int, --ST_defaults
  --HCNEWACCS
  [WWB] [int],--base=xs:int, --ST_defaults
  [XWB] [int],--base=xs:int, --ST_defaults
  [YWB] [int],--base=xs:int, --ST_defaults
  [ZWB] [int],--base=xs:int, --ST_defaults
  --LNSETTLED
  [EFC] [int],--base=xs:int, --ST_defaults
  [FFC] [int],--base=xs:int, --ST_defaults
  [GFC] [int],--base=xs:int, --ST_defaults
  [HFC] [int],--base=xs:int, --ST_defaults
  --MTGSETTLED
  [IFC] [int],--base=xs:int, --ST_defaults
  [JFC] [int],--base=xs:int, --ST_defaults
  [KFC] [int],--base=xs:int, --ST_defaults
  [LFC] [int],--base=xs:int, --ST_defaults
  --CCSETTLED
  [MFC] [int],--base=xs:int, --ST_defaults
  [NFC] [int],--base=xs:int, --ST_defaults
  [OFC] [int],--base=xs:int, --ST_defaults
  [PFC] [int],--base=xs:int, --ST_defaults
  --TELCOSETTLED
  [QFC] [int],--base=xs:int, --ST_defaults
  [RFC] [int],--base=xs:int, --ST_defaults
  [SFC] [int],--base=xs:int, --ST_defaults
  [TFC] [int],--base=xs:int, --ST_defaults
  --UTILSETTLED
  [UFC] [int],--base=xs:int, --ST_defaults
  [VFC] [int],--base=xs:int, --ST_defaults
  [WFC] [int],--base=xs:int, --ST_defaults
  [XFC] [int],--base=xs:int, --ST_defaults
  --HOMESHOPSETTLED
  [YFC] [int],--base=xs:int, --ST_defaults
  [ZFC] [int],--base=xs:int, --ST_defaults
  [AGC] [int],--base=xs:int, --ST_defaults
  [BGC] [int],--base=xs:int, --ST_defaults
  --BKSETTLED
  [CGC] [int],--base=xs:int, --ST_defaults
  [DGC] [int],--base=xs:int, --ST_defaults
  [EGC] [int],--base=xs:int, --ST_defaults
  [FGC] [int],--base=xs:int, --ST_defaults
  --MISCSETTLED
  [GGC] [int],--base=xs:int, --ST_defaults
  [HGC] [int],--base=xs:int, --ST_defaults
  [IGC] [int],--base=xs:int, --ST_defaults
  [JGC] [int],--base=xs:int, --ST_defaults
  --INSSETTLED
  [KGC] [int],--base=xs:int, --ST_defaults
  [LGC] [int],--base=xs:int, --ST_defaults
  [MGC] [int],--base=xs:int, --ST_defaults
  [NGC] [int],--base=xs:int, --ST_defaults
  --HCSETTLED
  [BZB] [int],--base=xs:int, --ST_defaults
  [CZB] [int],--base=xs:int, --ST_defaults
  [DZB] [int],--base=xs:int, --ST_defaults
  [FZB] [int],--base=xs:int, --ST_defaults
  [NAC] [int],--base=xs:int, --ST_defaults
  [OAC] [int],--base=xs:int, --ST_defaults
  --REVOLVECRED
  [MZB] [int],--base=xs:int, --ST_defaults
  [RIC] [int],--base=xs:int, --ST_defaults
  [SIC] [int],--base=xs:int, --ST_defaults
  [TIC] [int],--base=xs:int, --ST_defaults
  --HCWRSTSETT
  [PAC] [varchar](10), --Default string 
  [QAC] [varchar](10), --Default string 
  --HCWRSTACT
  [WAC] [varchar](10), --Default string 
  --HCPAY
  [RAC] [int],--base=xs:int, --ST_defaults
  --HCAGE
  [SAC] [int],--base=xs:int, --ST_defaults
  [TAC] [int],--base=xs:int, --ST_defaults
  --HCBALCHG
  [UAC] [int],--base=xs:int, --ST_defaults
  [VAC] [int],--base=xs:int, --ST_defaults
  [XAC] [int],--base=xs:int, --ST_defaults
  [YAC] [int],--base=xs:int, --ST_defaults
  --WORSTPAYLOAN
  [ABC] [varchar](10), --Default string 
  [BBC] [varchar](10), --Default string 
  [CBC] [varchar](10), --Default string 
  --WORSTPAYCC
  [DBC] [varchar](10), --Default string 
  [EBC] [varchar](10), --Default string 
  [FBC] [varchar](10), --Default string 
  --WORSTPAYMTG
  [GBC] [varchar](10), --Default string 
  [HBC] [varchar](10), --Default string 
  [IBC] [varchar](10), --Default string 
  --WORSTPAYTELECO
  [PCC] [varchar](10), --Default string 
  [QCC] [varchar](10), --Default string 
  [RCC] [varchar](10), --Default string 
  --WORSTPAYUTIL
  [SCC] [varchar](10), --Default string 
  [TCC] [varchar](10), --Default string 
  [UCC] [varchar](10), --Default string 
  --WORSTPAYHOMESHOP
  [VCC] [varchar](10), --Default string 
  [WCC] [varchar](10), --Default string 
  [XCC] [varchar](10), --Default string 
  --WORSTPAYBNK
  [JBC] [varchar](10), --Default string 
  [KBC] [varchar](10), --Default string 
  [LBC] [varchar](10), --Default string 
  --WORSTPAYMISC
  [YCC] [varchar](10), --Default string 
  [ZCC] [varchar](10), --Default string 
  [ADC] [varchar](10), --Default string 
  --WORSTPAYINS
  [BDC] [varchar](10), --Default string 
  [CDC] [varchar](10), --Default string 
  [DDC] [varchar](10), --Default string 
  --WORSTPAYHOMECR
  [EDC] [varchar](10), --Default string 
  [FDC] [varchar](10), --Default string 
  [GDC] [varchar](10), --Default string 
  --OPENED12MTHXHISTORIC
  [ZBC] [varchar](10), --Default string 
  --OPENED24MTHXHISTORIC
  [ACC] [varchar](10), --Default string 
  --DUEXHISTORIC
  [BCC] [int],--base=xs:int, --ST_defaults
  [CCC] [int],--base=xs:int, --ST_defaults
  [DCC] [int],--base=xs:int, --ST_defaults
  --BOTHXHISTORIC
  [UBC] [varchar](10), --Default string 
  [VBC] [varchar](10), --Default string 
  --WORSTPAYXHISTORIC
  [WBC] [varchar](10), --Default string 
  [XBC] [varchar](10), --Default string 
  [YBC] [varchar](10), --Default string 
  --UTILISATION
  [OCC] [int],--base=xs:int, --ST_defaults
  [PHC] [int],--base=xs:int, --ST_defaults
  [QHC] [int],--base=xs:int, --ST_defaults
  [RHC] [int],--base=xs:int, --ST_defaults
  [SHC] [int],--base=xs:int, --ST_defaults
  [THC] [int],--base=xs:int, --ST_defaults
  --HIGHEST
  [UHC] [int],--base=xs:int, --ST_defaults
  [VHC] [int],--base=xs:int, --ST_defaults
  --PAYDAY
  [XHC] [int],--base=xs:int, --ST_defaults
  [ZHC] [int],--base=xs:int, --ST_defaults
  [LIC] [int],--base=xs:int, --ST_defaults
  --PAYDAYOPENED
  [BIC] [int],--base=xs:int, --ST_defaults
  [CIC] [int],--base=xs:int, --ST_defaults
  [DIC] [int],--base=xs:int, --ST_defaults
  [MIC] [int],--base=xs:int, --ST_defaults
  [EJC] [int],--base=xs:int, --ST_defaults
  --PAYDAYWORST
  [IIC] [varchar](10), --Default string 
  [JIC] [varchar](10), --Default string 
  [KIC] [varchar](10), --Default string 
  --PAYDAYVALUE
  [YHC] [int],--base=xs:int, --ST_defaults
  [AIC] [int],--base=xs:int, --ST_defaults
  [EIC] [int],--base=xs:int, --ST_defaults
  [FIC] [int],--base=xs:int, --ST_defaults
  [GIC] [int],--base=xs:int, --ST_defaults
  [FJC] [int],--base=xs:int, --ST_defaults
  [GJC] [int],--base=xs:int, --ST_defaults
  [HJC] [int],--base=xs:int, --ST_defaults
  [PJC] [int],--base=xs:int, --ST_defaults
  --PAYDAYSETTLED
  [HIC] [int],--base=xs:int, --ST_defaults
  [JJC] [int],--base=xs:int, --ST_defaults
  [KJC] [int],--base=xs:int, --ST_defaults
  [IJC] [int],--base=xs:int, --ST_defaults
  --PARTIAL
  --BOTH
  [MR] [int],--base=xs:int, --ST_defaults
  [NR] [int],--base=xs:int, --ST_defaults
  [OR] [int],--base=xs:int, --ST_defaults
  [PR] [int],--base=xs:int, --ST_defaults
  [QR] [int],--base=xs:int, --ST_defaults
  [RR] [int],--base=xs:int, --ST_defaults
  [SR] [int],--base=xs:int, --ST_defaults
  [TR] [int],--base=xs:int, --ST_defaults
  [UT] [int],--base=xs:int, --ST_defaults
  [UR] [int],--base=xs:int, --ST_defaults
  [VR] [int],--base=xs:int, --ST_defaults
  [TPB] [int],--base=xs:int, --ST_defaults
  [TGC] [int],--base=xs:int, --ST_defaults
  [UGC] [int],--base=xs:int, --ST_defaults
  --ALERT
  [WR] [int],--base=xs:int, --ST_defaults
  --ALL
  [XR] [varchar](10), --Default string 
  [YR] [int],--base=xs:int, --ST_defaults
  [ZR] [int],--base=xs:int, --ST_defaults
  [ZS] [int],--base=xs:int, --ST_defaults
  [AT] [int],--base=xs:int, --ST_defaults
  [BT] [int],--base=xs:int, --ST_defaults
  [CT] [int],--base=xs:int, --ST_defaults
  [DT] [int],--base=xs:int, --ST_defaults
  [ET] [int],--base=xs:int, --ST_defaults
  [FT] [int],--base=xs:int, --ST_defaults
  [GT] [int],--base=xs:int, --ST_defaults
  [IT] [int],--base=xs:int, --ST_defaults
  --VALDEFAULT
  [AS] [int],--base=xs:int, --ST_defaults
  [BS] [int],--base=xs:int, --ST_defaults
  [CS] [int],--base=xs:int, --ST_defaults
  [DS] [int],--base=xs:int, --ST_defaults
  [ES] [int],--base=xs:int, --ST_defaults
  [FS] [int],--base=xs:int, --ST_defaults
  [GS] [int],--base=xs:int, --ST_defaults
  [HS] [int],--base=xs:int, --ST_defaults
  [JS] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [WS] [int],--base=xs:int, --ST_defaults
  --MISC
  [XS] [int],--base=xs:int, --ST_defaults
  [HZB] [int],--base=xs:int, --ST_defaults
  [MJC] [int],--base=xs:int, --ST_defaults
  --NUMDEFBAL
  [PT] [int],--base=xs:int, --ST_defaults
  [QT] [int],--base=xs:int, --ST_defaults
  [RT] [int],--base=xs:int, --ST_defaults
  [ST] [int],--base=xs:int, --ST_defaults
  [TT] [int],--base=xs:int, --ST_defaults
  --ENTERDEF
  [PP] [int],--base=xs:int, --ST_defaults
  [QP] [int],--base=xs:int, --ST_defaults
  [RP] [int],--base=xs:int, --ST_defaults
  [SP] [int],--base=xs:int, --ST_defaults
  [TP] [int],--base=xs:int, --ST_defaults
  --SETTLED
  [UP] [int],--base=xs:int, --ST_defaults
  [GAC] [int],--base=xs:int, --ST_defaults
  [HAC] [int],--base=xs:int, --ST_defaults
  [IAC] [int],--base=xs:int, --ST_defaults
  [JAC] [int],--base=xs:int, --ST_defaults
  [VP] [int],--base=xs:int, --ST_defaults
  --RECOVERED
  [GZB] [int],--base=xs:int, --ST_defaults
  [NZB] [int],--base=xs:int, --ST_defaults
  [ZP] [int],--base=xs:int, --ST_defaults
  [UZB] [int],--base=xs:int, --ST_defaults
  [VZB] [int],--base=xs:int, --ST_defaults
  [AQ] [int],--base=xs:int, --ST_defaults
  --HCDELQ
  [AAC] [int],--base=xs:int, --ST_defaults
  [BAC] [int],--base=xs:int, --ST_defaults
  [CAC] [int],--base=xs:int, --ST_defaults
  --HCVALDEF
  [KAC] [int],--base=xs:int, --ST_defaults
  [LAC] [int],--base=xs:int, --ST_defaults
  [MAC] [int],--base=xs:int, --ST_defaults
  --OWN
  --TYPE
  [AU] [int], --ST_defaults ST_bit
  [BU] [int],--base=xs:int, --ST_defaults
  [CU] [int],--base=xs:int, --ST_defaults
  [DU] [int],--base=xs:int, --ST_defaults
  [EU] [int],--base=xs:int, --ST_defaults
  [FU] [int],--base=xs:int, --ST_defaults
  [GU] [int],--base=xs:int, --ST_defaults
  [HU] [int],--base=xs:int, --ST_defaults
  [KZB] [int],--base=xs:int, --ST_defaults
  [IU] [int],--base=xs:int, --ST_defaults
  [JU] [int],--base=xs:int, --ST_defaults
  [KU] [int],--base=xs:int, --ST_defaults
  [LU] [int],--base=xs:int, --ST_defaults
  --TIME
  [MU] [int],--base=xs:int, --ST_defaults
  [NU] [int],--base=xs:int, --ST_defaults
  [PU] [int],--base=xs:int, --ST_defaults
  [QU] [int],--base=xs:int, --ST_defaults
  [QZB] [int],--base=xs:int, --ST_defaults
  --OPENED
  [WW] [int],--base=xs:int, --ST_defaults
  [XW] [int],--base=xs:int, --ST_defaults
  [YW] [int],--base=xs:int, --ST_defaults
  [ZW] [int],--base=xs:int, --ST_defaults
  [AX] [int],--base=xs:int, --ST_defaults
  [WGC] [int],--base=xs:int, --ST_defaults
  --TOTDF
  [MX] [int],--base=xs:int, --ST_defaults
  --NUMDF
  [BY] [int],--base=xs:int, --ST_defaults
  --TOTNONDF
  [QY] [int],--base=xs:int, --ST_defaults
  --NUMNONDF
  [FZ] [int],--base=xs:int, --ST_defaults
  --VALSECTOR
  [LZ] [int],--base=xs:int, --ST_defaults
  [MZ] [int],--base=xs:int, --ST_defaults
  [NZ] [int],--base=xs:int, --ST_defaults
  --DEBT
  [UZ] [int],--base=xs:int, --ST_defaults
  [VZ] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [TGB] [int],--base=xs:int, --ST_defaults
  [UGB] [int],--base=xs:int, --ST_defaults
  --WORST
  [JQB] [varchar](10), --Default string 
  [TZB] [varchar](10), --Default string 
  --HCDELQ
  [DAC] [int],--base=xs:int, --ST_defaults
  [EAC] [int],--base=xs:int, --ST_defaults
  [FAC] [int],--base=xs:int, --ST_defaults
  --CIFAS
  --MAIN
  [CAB] [int], --ST_defaults ST_bit
  [DAB] [int],--base=xs:int, --ST_defaults
  [EAB] [int],--base=xs:int, --ST_defaults
  [FAB] [int],--base=xs:int, --ST_defaults
  [GAB] [int],--base=xs:int, --ST_defaults
  [HAB] [int],--base=xs:int, --ST_defaults
  [IAB] [int],--base=xs:int, --ST_defaults
  [JAB] [int],--base=xs:int, --ST_defaults
  [KAB] [int],--base=xs:int, --ST_defaults
  [LAB] [int],--base=xs:int, --ST_defaults
  [MAB] [int],--base=xs:int, --ST_defaults
  [NAB] [int],--base=xs:int, --ST_defaults
  [OAB] [int],--base=xs:int, --ST_defaults
  --NOTICES
  [KBB] [int],--base=xs:int, --ST_defaults
  --SEARCH
  --MAIN
  [UDB] [int], --ST_defaults ST_bit
  --DEBTCOLL
  [KEB] [int],--base=xs:int, --ST_defaults
  [LEB] [int],--base=xs:int, --ST_defaults
  [MEB] [int],--base=xs:int, --ST_defaults
  [NEB] [int],--base=xs:int, --ST_defaults
  --ALLCA
  [YGC] [int],--base=xs:int, --ST_defaults
  [QEB] [int],--base=xs:int, --ST_defaults
  [REB] [int],--base=xs:int, --ST_defaults
  [SEB] [int],--base=xs:int, --ST_defaults
  [TEB] [int],--base=xs:int, --ST_defaults
  [UEB] [int],--base=xs:int, --ST_defaults
  --OWNCA
  [VEB] [int],--base=xs:int, --ST_defaults
  [WEB] [int],--base=xs:int, --ST_defaults
  [XEB] [int],--base=xs:int, --ST_defaults
  [YEB] [int],--base=xs:int, --ST_defaults
  [ZEB] [int],--base=xs:int, --ST_defaults
  --HOMECREDIT
  [MFB] [int],--base=xs:int, --ST_defaults
  [NFB] [int],--base=xs:int, --ST_defaults
  [OFB] [int],--base=xs:int, --ST_defaults
  [PFB] [int],--base=xs:int, --ST_defaults
  [QFB] [int],--base=xs:int, --ST_defaults
  [RFB] [int],--base=xs:int, --ST_defaults
  --TELECOM
  [XGC] [int],--base=xs:int, --ST_defaults
  --PAYDAY
  [DJC] [int],--base=xs:int, --ST_defaults
  [NIC] [int],--base=xs:int, --ST_defaults
  [OIC] [int],--base=xs:int, --ST_defaults
  [PIC] [int],--base=xs:int, --ST_defaults
  [QIC] [int],--base=xs:int, --ST_defaults
  --ADDRLINK
  --ADDMAIN
  [VGB] [int], --ST_defaults ST_bit
  [WGB] [int],--base=xs:int, --ST_defaults
  [ZAC] [int], --ST_defaults ST_bit
  [NBC] [int],--base=xs:int, --ST_defaults
  --ADDRAW
  [XGB] [varchar](440),--base=xs:string, --ST_defaults
  [YGB] [varchar](4),--base=xs:string, --ST_defaults
  [QOB] [varchar](38),--base=xs:string, --ST_defaults
  [ZGB] [varchar](440),--base=xs:string, --ST_defaults
  [AHB] [varchar](4),--base=xs:string, --ST_defaults
  [ROB] [varchar](38),--base=xs:string, --ST_defaults
  [BHB] [varchar](440),--base=xs:string, --ST_defaults
  [CHB] [varchar](4),--base=xs:string, --ST_defaults
  [SOB] [varchar](38),--base=xs:string, --ST_defaults
  [DHB] [varchar](440),--base=xs:string, --ST_defaults
  [EHB] [varchar](4),--base=xs:string, --ST_defaults
  [TOB] [varchar](38),--base=xs:string, --ST_defaults
  [FHB] [varchar](440),--base=xs:string, --ST_defaults
  [GHB] [varchar](4),--base=xs:string, --ST_defaults
  [JBB] [varchar](38),--base=xs:string, --ST_defaults
  --ADDTIME
  [HHB] [date],
  [HHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [IHB] [date],
  [IHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [JHB] [date],
  [JHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [KHB] [date],
  [KHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  [LHB] [date],
  [LHB_default] [varchar](4),--and Default Type, --ST_defaults xs:date
  --NOTICES
  [XPB] [int],--base=xs:int, --ST_defaults
  [YPB] [int],--base=xs:int, --ST_defaults
  --ACD
  --BALANCE
  [AYB] [int],--base=xs:int, --ST_defaults
  --PAYMENTS
  [BYB] [int],--base=xs:int, --ST_defaults
  [CYB] [int],--base=xs:int, --ST_defaults
  [DYB] [int],--base=xs:int, --ST_defaults
  [EYB] [int],--base=xs:int, --ST_defaults
  [FHC] [int],--base=xs:int, --ST_defaults
  [GHC] [int],--base=xs:int, --ST_defaults
  [IYB] [int],--base=xs:int, --ST_defaults
  [JYB] [int],--base=xs:int, --ST_defaults
  [KYB] [int],--base=xs:int, --ST_defaults
  [LYB] [int],--base=xs:int, --ST_defaults
  [WHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_NUM
  [PYB] [int],--base=xs:int, --ST_defaults
  [QYB] [int],--base=xs:int, --ST_defaults
  [ZGC] [int],--base=xs:int, --ST_defaults
  [AHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_VAL
  [UYB] [int],--base=xs:int, --ST_defaults
  [VYB] [int],--base=xs:int, --ST_defaults
  [BHC] [int],--base=xs:int, --ST_defaults
  [CHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_BAL
  [ZYB] [int],--base=xs:int, --ST_defaults
  [AZB] [int],--base=xs:int, --ST_defaults
  [DHC] [int],--base=xs:int, --ST_defaults
  [EHC] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_BALTIME
  [EZB] [int],--base=xs:int, --ST_defaults
  --CASH_ADV_PAY
  [IZB] [int],--base=xs:int, --ST_defaults
  );
  go
