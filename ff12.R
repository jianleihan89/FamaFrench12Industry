###name your dataset as primary
primary$ffind=0  ##create an variable to indicate Fama-French industry
#1 NoDur  Consumer NonDurables -- Food, Tobacco, Textiles, Apparel, Leather, Toys
primary$ffind[((primary$sic>=100)&(primary$sic<=999))|((primary$sic>=2000)&(primary$sic<=2399))|((primary$sic>=2700)&(primary$sic<=2749))|((primary$sic>=2770)&(primary$sic<=2799))|((primary$sic>=3100)&(primary$sic<=3199))|((primary$sic>=3940)&(primary$sic<=3989))]=1
#2 Durbl  Consumer Durables -- Cars, TV's, Furniture, Household Appliances
primary$ffind[((primary$sic>=2500)&(primary$sic<=2519))|((primary$sic>=2590)&(primary$sic<=2599))|((primary$sic>=3630)&(primary$sic<=3659))|((primary$sic>=3710)&(primary$sic<=3711))|((primary$sic>=3714)&(primary$sic<=3714))|((primary$sic>=3716)&(primary$sic<=3716))|((primary$sic>=3750)&(primary$sic<=3751))|((primary$sic>=3792)&(primary$sic<=3792))|((primary$sic>=3900)&(primary$sic<=3939))|((primary$sic>=3990)&(primary$sic<=3999))]=2
#3 Manuf  Manufacturing -- Machinery, Trucks, Planes, Off Furn, Paper, Com Printing
primary$ffind[((primary$sic>=2520)&(primary$sic<=2589))|((primary$sic>=2600)&(primary$sic<=2699))|((primary$sic>=2750)&(primary$sic<=2769))|((primary$sic>=3000)&(primary$sic<=3099))|((primary$sic>=3200)&(primary$sic<=3569))|((primary$sic>=3580)&(primary$sic<=3629))|((primary$sic>=3700)&(primary$sic<=3709))|((primary$sic>=3712)&(primary$sic<=3713))|((primary$sic>=3715)&(primary$sic<=3715))|((primary$sic>=3717)&(primary$sic<=3749))|((primary$sic>=3752)&(primary$sic<=3791))|((primary$sic>=3793)&(primary$sic<=3799))|((primary$sic>=3830)&(primary$sic<=3839))|((primary$sic>=3860)&(primary$sic<=3899))]=3
#4 Enrgy  Oil, Gas, and Coal Extraction and Products
primary$ffind[((primary$sic>=1200)&(primary$sic<=1399))|((primary$sic>=2900)&(primary$sic<=2999))]=4
# 5 Chems  Chemicals and Allied Products
primary$ffind[((primary$sic>=2800)&(primary$sic<=2829))|((primary$sic>=2840)&(primary$sic<=2899))]=5
#6 BusEq  Business Equipment -- Computers, Software, and Electronic Equipment
primary$ffind[((primary$sic>=3570)&(primary$sic<=3579))|((primary$sic>=3660)&(primary$sic<=3692))|((primary$sic>=3694)&(primary$sic<=3699))|((primary$sic>=3810)&(primary$sic<=3829))|((primary$sic>=7370)&(primary$sic<=7379))]=6
#7 Telcm  Telephone and Television Transmission
primary$ffind[((primary$sic>=4800)&(primary$sic<=4899))]=7
#8 Utils  Utilities
primary$ffind[((primary$sic>=4900)&(primary$sic<=4949))]=8
#9 Shops  Wholesale, Retail, and Some Services (Laundries, Repair Shops)
primary$ffind[((primary$sic>=5000)&(primary$sic<=5999))|((primary$sic>=7200)&(primary$sic<=7299))|((primary$sic>=7600)&(primary$sic<=7699))]=9
#10 Hlth   Healthcare, Medical Equipment, and Drugs
primary$ffind[((primary$sic>=2830)&(primary$sic<=2839))|((primary$sic>=3693)&(primary$sic<=3693))|((primary$sic>=3840)&(primary$sic<=3859))|((primary$sic>=8000)&(primary$sic<=8099))]=10
#11 Money  Finance
primary$ffind[((primary$sic>=6000)&(primary$sic<=6999))]=11
#12 Other  Other -- Mines, Constr, BldMt, Trans, Hotels, Bus Serv, Entertainment
primary$ffind[primary$ffind==0]=12

