function [data, auxData, metaData, txtData, weights] = mydata_Mytilus_edulis

%% set metaData
metaData.phylum     = 'Mollusca'; 
metaData.class      = 'Bivalvia'; 
metaData.order      = 'Mytiloida'; 
metaData.family     = 'Mytilidae';
metaData.species    = 'Mytilus_edulis'; 
metaData.species_en = 'blue mussel'; 
metaData.ecoCode.climate = {'Cfb', 'MC', 'ME'}; % Cfb Temperate oceanic climate; coldest month averaging above 0 °C, all months with average temperatures below 22 °C...
metaData.ecoCode.ecozone = {'MANE', 'MAn'}; % MANE Atlantic ocean, NE // MAn North Sea
metaData.ecoCode.habitat = {'Mi', 'Mb'}; % Mi intertidal zone  // Mb marine bentic (epibentic)
metaData.ecoCode.embryo  = {'Mp'}; % Mp marine pelagic
metaData.ecoCode.migrate = {}; % Empty code means no migration or torpor.
metaData.ecoCode.food    = {'P'}; % P planktivore (small aquatic organisms, macro-movement controlled by flow, not by swimming)
metaData.ecoCode.gender  = {'Da'}; % Normally gonochoric but accidentally hermaphrodites
metaData.ecoCode.reprod  = {'O'}; % O homogamy (no alternating generations, fertilisation obligatory)

metaData.T_typical  = C2K(18); % K, body temp
metaData.data_0     = {'ab';'ah'; 'am'; 'Lh'; 'Lb'; 'Lp';	'Li';'Wwh';'Wwb'; 'Wwp'; 'Wwi'; 'Wdh';'Wdb';'Ri'}; 
metaData.data_1     = {'t-L'; 't-dL'; 'L-Ww'; 'L-Wd' ; 'X-JX_L'; 'X-JP_L'; 'JX-JO_L'; 'L-JO';'t-L_T';'L-Ri';'t-Wd';'T-JO';'Wd-JO_T'};

metaData.COMPLETE = 3.8; % using criteria of LikaKear2011

metaData.author   = {'Sofia Saraiva'};   
metaData.date_subm = [2010 11 11];           
metaData.email    = {'Sofia.Saraiva@nioz.nl'};  
metaData.address  = {'NIOZ, Texel'}; 

metaData.author_mod_1   = {'Bas Kooijman'};    
metaData.date_mod_1     = [2015 12 24];              
metaData.email_mod_1    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_1  = {'VU University Amsterdam'};   

metaData.author_mod_2   = {'Bas Kooijman'};    
metaData.date_mod_2     = [2017 11 11];              
metaData.email_mod_2    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_2  = {'VU University Amsterdam'};   

metaData.curator     = {'Starrlight Augustine'};
metaData.email_cur   = {'starrlight.augustine@akvaplan.niva.no'}; 
metaData.date_acc    = [2017 11 11]; 

%% set data

 
%-----------------
% Zero-variate data
%-----------------


% age 0 is at onset of embryo development(hatching = larve trocophore)

data.ah_5 = 8.33;      units.ah_5 = 'd';    label.ah_5 = 'age at hatching';  bibkey.ah_5 = 'Mestre2009';   
  temp.ah_5 = C2K(5);  units.temp.ah_5 = 'K'; label.temp.ah_5 = 'temperature';
  comment.ah_5  = ''; 
 data.ah_10 = 2.38;      units.ah_10 = 'd';    label.ah_10 = 'age at hatching';  bibkey.ah_10 = 'Mestre2009';   
  temp.ah_10 = C2K(10);  units.temp.ah_10 = 'K'; label.temp.ah_10 = 'temperature';
  comment.ah_10  = ''; 
 data.ah_15 = 0.66;      units.ah_15 = 'd';    label.ah_15 = 'age at hatching';  bibkey.ah_15 = 'Mestre2009';   
  temp.ah_15 = C2K(15);  units.temp.ah_15 = 'K'; label.temp.ah_15 = 'temperature';
  comment.ah_15  = '';  
 data.ah_20 = 0.66;      units.ah_20  = 'd';    label.ah_20  = 'age at hatching';  bibkey.ah_20  = 'Mestre2009';   
  temp.ah_20  = C2K(20);  units.temp.ah_20  = 'K'; label.temp.ah_20  = 'temperature';
  comment.ah_20   = ''; 
 
% birth (larve umbo-veligere)
data.ab = 8;      units.ab = 'd';    label.ab = 'age at birth';  bibkey.ab = 'Lucas1985';   
  temp.ab = C2K(17);  units.temp.ab = 'K'; label.temp.ab = 'temperature';
  comment.ab  = ''; 

data.am = 24*365; units.am = 'd';    label.am = 'life span';                bibkey.am = 'RodhRode1984';   
  temp.am = C2K(10);  units.temp.am = 'K'; label.temp.am = 'temperature'; 

% length
% length at hatching (trochophore) 
data.Lh = 0.00977;     units.Lh = 'cm';    label.Lh = 'shell length at hatching';  bibkey.Lh = 'Lucas1985';   
  comment.Lh  = '17°C; 2.107 cells/L';
  
% length at birth 
data.Lb = 0.011935;      units.Lb = 'cm';    label.Lb = 'shell length at birth';  bibkey.Lb = 'Lucas1985';   
  comment.Lb  = '17°C; 2.107 cells/L';
  
% length at puberty
data.Lp  = 1.46;    units.Li  = 'cm';  label.Li  = 'Puberty shell length';   bibkey.Li  = 'Uguen2021';

% Ultimate length
data.Li = 15 ;     units.Lp = 'cm';    label.Lp = 'ultimate shell length';  bibkey.Lp = 'VeerCard2006';
  comment.Lp  = '';

  % WET WEIGHT (Tissue)
  
% weight at hatching
data.Wwh =   2.55e-7;     units.Wwh = 'g';    label.Wwh = 'wet weight at hatching';  bibkey.Wwh = 'Sprung1984';
  comment.Wwh  = '';

% weight at birth
data.Wwb =  3.43e-7;     units.Wwb = 'g';    label.Wwb = 'wet weight at birth';  bibkey.Wwb = 'Sprung1984';
  comment.Wwb  = '';
  
% weight at puberty
data.Wwp = 0.17973 ;     units.Wwp = 'g';    label.Wwp = 'wet weight at puberty';  bibkey.Wwp = 'Uguen2021';
  %comment.Wwp  = '';
  
% ultimate wet weight
data.Wwi = 124.6;     units.Wwi = 'g';   label.Wwi = 'ultimate wet weight';    bibkey.Wwi = 'guess';
  comment.Wwi = 'Based on .03693*Li^3 from HareKooy1993';

% DRY WEIGHT (Tissue)

% weight at hatching
data.Wdh = 4.85e-8 ;     units.Wdh = 'g';    label.Wdh = 'dry weight at hatching';  bibkey.Wdh = 'Sprung1983';
  comment.Wdh  = '';
  
% weight at birth
data.Wdb = 6.51e-8;     units.Wdb = 'g';    label.Wdb = 'dry weight at birth';  bibkey.Wdb = 'Sprung1983';
  comment.Wdb  = '';

  
% REPRODUCTION 
data.Ri = 2*4e6/365 ;     units.Ri = '#/d';    label.Ri = 'maximal reproduction rate';  bibkey.Ri = 'Sprung1983';
  temp.Ri = C2K(8);  units.temp.Ri = 'K'; label.temp.Ri = 'temperature'; comment.Ri  = 'intertidal female max ; 2 spawning periods in France';


  
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  
   
%-----------------
% Univariate data
%-----------------


% INGESTION 

% total particulate matter - pseudo faeces production
% length[cm] food[mgC/l] InorganicMaterial[mg/l] Pseudofaeces[mgdw/h] TPM[mgdw/l]					
Data01 = [ ... % [cm], [mgC/l], [mg/l], [mgdw/h], [mgdw/l]
                    7  0.24      12.91   16.27949  13.39;
                    7  0.24	     15.76   23.19849  16.24;
                    7  0.24	     48.32   114.7735  48.80;
                    7  0.24	     52.80   91.57449  53.28;
                    7  0.24	     72.74   119.6575  73.22;
                    7  0.24	     93.50   171.3465  93.98;
                    7  0.24	     116.70  153.8455  117.18;
                    7  0.24	     197.29  242.1645  197.77;
                    7  0.24	     258.34  231.1755  258.82;
                    7  0.24	     278.69  196.1735  279.17];
                
% total particulate matter - ingestion rate
% length[cm] food[mgC/l] pom[mgC/l] InorganicMaterial[mg/l] Clearancerate[l/h] TPM[mgdw/l]  TotalIngestionRate[mgdw/h]					
Data02 = [ ...%[cm],[mgC/l],[mgC/l],[mg/l],[l/h],[mgdw/l],[mgdw/h]
                3.7	  0.080   0.042  2.00	 2.81  2.30	     1.86;
                3.7	  0.080   0.068  3.23	 3.12  3.60	     2.34;
                3.7	  0.080   0.198  9.41	 2.60  10.10	 2.7;
                3.7	  0.080   0.49	  23.28  2.20  24.70	 2.4;
                3.7	  0.080   1.11	  52.82  1.90  55.80	 3];
            
% total particulate matter - ingestion, pseudofaeces and faeces production
%  food[mgC/l] pom[mgC/l] InorganicMaterial[mg/l] TPM[mgdw/l] Clearancerate[l/h]  AlgaeIngestionRate[microChla/h] Pseudofaeces[mgdw/h] AlgaeFaecesContri[microChla/h]					
Data03to5 = [ ...%[mgC/l], [mgC/l], [mg/l], [mgdw/l], [l/h], [microChla/h], [mgdw/h], [microChla/h]					
                    0.22	0.11	3.97	4.8		0.62 3.1  1.8   0.43;
                    0.22	0.22	7.68	8.8		0.38 1.86  2.1	 0.15;
                    0.18	0.50	17.21	18.9	0.47 1.28  6.7	 0.24;
                    0.19	0.62	21.38	23.4	0.68 2.71  13.2	 0.3;
                    0.15	2.01	69.49	74.9	0.28 0.23  19.8	 0.06;
                    0.15	2.31	79.93	86.1	0.3	 0.06  24.3	 0.06];

data.SJXp_WiddFiet1979 = Data01(:,[3 4]);
units.SJXp_WiddFiet1979   = {'mg/l', 'mgdw/h'};  label.SJXp_WiddFiet1979 = {'Tot Part Matter', 'pseudofaeces prod'};  
temp.SJXp_WiddFiet1979    = C2K(15);  units.temp.SJXp_WiddFiet1979 = 'K'; label.temp.SJXp_WiddFiet1979 = 'temperature';
bibkey.SJXp_WiddFiet1979 = 'WiddFiet1979';
comment.SJXp_WiddFiet1979 = '7cm shell height, 0.24 mgC/l food density';
   
data.SJXp_PrinSmaa1991 = Data03to5(:,[4 7]);
units.SJXp_PrinSmaa1991   = {'mg/l', 'mgdw/h'};  label.SJXp_PrinSmaa1991 = {'Tot Part Matter', 'pseudofaeces prod'};  
temp.SJXp_PrinSmaa1991    = C2K(6.5);  units.temp.SJXp_PrinSmaa1991 = 'K'; label.temp.SJXp_PrinSmaa1991 = 'temperature';
bibkey.SJXp_PrinSmaa1991 = 'PrinSmaa1991';
comment.SJXp_PrinSmaa1991 = '6cm shell height, 0.22-0.15 mgC/l food density';
            
            
data.SJX_KiorMohl1980 = Data02(:,[6 7]);
units.SJX_KiorMohl1980   = {'mgdw/l', 'mgdw/h'};  label.SJX_KiorMohl1980 = {'Tot Part Matter', 'ingestion rate'};  
temp.SJX_KiorMohl1980    = C2K(15);  units.temp.SJX_KiorMohl1980 = 'K'; label.temp.SJX_KiorMohl1980 = 'temperature';
bibkey.SJX_KiorMohl1980 = 'KiorMohl1980';
comment.SJX_KiorMohl1980 = '3.7 cm shell height, 0.08 mgC/l food density';
                                
%                            
data.SJX_PrinSmaa1991 = Data03to5(:,[4 6]);
units.SJX_PrinSmaa1991   = {'mgdw/l', 'mugChla/h'};  label.SJX_PrinSmaa1991 = {'Tot Part Matter', 'ingestion rate'};  
temp.SJX_PrinSmaa1991    = C2K(6.5);  units.temp.SJX_PrinSmaa1991 = 'K'; label.temp.SJX_PrinSmaa1991 = 'temperature';
bibkey.SJX_PrinSmaa1991 = 'PrinSmaa1991';
comment.SJX_PrinSmaa1991 = '6cm shell height, 0.22-0.15 mgC/l food density';
%
data.SJP_PrinSmaa1991 = Data03to5(:,[4 8]);
units.SJP_PrinSmaa1991   = {'mgdw/l', 'mugChla/h'};  label.SJP_PrinSmaa1991 = {'Tot Part Matter', 'faeces prod rate'};  
temp.SJP_PrinSmaa1991    = C2K(6.5);  units.temp.SJP_PrinSmaa1991 = 'K'; label.temp.SJP_PrinSmaa1991 = 'temperature';
bibkey.SJP_PrinSmaa1991 = 'PrinSmaa1991';
comment.SJP_PrinSmaa1991 = '6cm shell height, 0.22-0.15 mgC/l food density';



% CONSO O2 


% Temperature vs. oxygen consumption rate
data.TJO = [1.5 -1 -0.5 0 4.8; % °C, temperature
            120 140 180 160 280]'; % µLO2/h/ind, oxygen consumption rate
units.TJO = {'°C', 'µL/h'}; label.TJO = {'temperature', 'O_2 consumption rate'}; bibkey.TJO = 'Loo1992';


% weight - O2 Consumption of larvae
WdJO_15_1 = [ ... % standard dry weight (g), O2 consumption (µL/h)
2.45375110663981E-08	0.0000356224789026245;
2.98247128621688E-08	0.0000489390091847749;
2.45375110663981E-08	0.0000819960824460496;
3.22459054529639E-08	0.0000887719708898587;
3.10116892657477E-08	0.000121957046015944;
2.868316813342E-08      0.000142946133835684;
3.91940677484721E-08	0.000167547491892334;
4.58159766905448E-08	0.00013203517797163;
7.60949668545986E-08	0.000259294379740466;
3.91940677484721E-08	0.00030391953823132;
1.4773776525985E-07     0.000188739182213509;
3.62511704998852E-08	0.000727895384398317;
5.35566691770689E-08	0.000853167852417283;
9.24914727721733E-08	0.000961077966237593;
8.89513497310823E-08	0.000621016941891561;
1.72698329065943E-07	0.000646167078746697;
2.01876025467903E-07	0.000853167852417283;
2.35983346678219E-07	0.000551288978877068;
2.55140652003129E-07	0.000646167078746697;
2.75853161762918E-07	0.000573615251044869;
3.62511704998853E-07	0.000819960824460496;
3.91940677484722E-07	0.00112648169233588;
4.07539296587177E-07	0.00161026202756094;
1.53617494667182E-07	0.00239502661998749;
4.07539296587177E-07	0.00292090371703225;
5.56881399094527E-07	0.00239502661998749;
5.79044398060249E-07	0.00188739182213509;
7.03813555493156E-07	0.00259294379740467;
9.61724871115298E-07	0.00342359795760758];
data.WdJO_15_1 = [WdJO_15_1(:,1) WdJO_15_1(:,2)*42.33*24e-9];
temp.WdJO_15_1 = C2K(15) ;units.WdJO_15_1 = {'g', 'mol/d'};  label.WdJO_15_1 = {'dry weight', 'O_2 consumption of larvae'}; 
units.temp.WdJO_15_1 = 'K'; label.temp.WdJO_15_1 = 'temperature'; 
bibkey.WdJO_15_1 = 'Hamb1983'; comment.WdJO_15_1 = 'from Hamburger, 1983, Fig.1; Veliger larvae; 15°C; non fed';


% weight- O2 Consumption of a juvenile 15°C
WdJO_15 = [ ... % standard dry weight (g), O2 consumption (µL/h)
1.03979841848149E-06	0.00259294379740467;
1.36644834929533E-06	0.00259294379740467;
1.53617494667182E-06	0.00188739182213509;
2.09910372010855E-06	0.00280721620394118;
2.55140652003129E-06	0.00342359795760758;
3.76939097538837E-06	0.00819960824460494;
4.40623642777359E-06	0.00788046281566992;
5.35566691770691E-06	0.00727895384398316;
0.0000057904439806025	0.00961077966237591;
7.31824221907621E-06	0.00646167078746697;
0.0000153617494667183	0.00853167852417281;
0.0000255140652003129	0.0167547491892334;
0.0000265294846443191	0.0385662042116347;
0.000029824712862169	0.0551288978877068;
0.0000376939097538837	0.0573615251044868];
data.WdJO_15 = [WdJO_15(:,1) WdJO_15(:,2)*42.33*24e-9];
temp.WdJO_15 = C2K(15) ;units.WdJO_15 = {'g', 'mol/d'};  label.WdJO_15 = {'dry weight', 'O_2 consumption of juvenile'}; 
units.temp.WdJO_15 = 'K'; label.temp.WdJO_15 = 'temperature'; 
bibkey.WdJO_15 = 'Hamb1983'; comment.WdJO_15 = 'from Hamburger, 1983, Fig.1; juvenile mussels (<0.0001g tissue dry mass); 15°C; non fed';

% weight- O2 Consumption of a juvenile 12°C
WdJO_12 = [ ... % standard dry weight (g), O2 consumption (µL/h)
0.0000855467253556573	0.0573615251044868;
0.000121547425007629	0.0672335753649934;
0.000153617494667183	0.0672335753649934;
0.000391940677484724	0.204335971785694;
0.000322459054529641	0.329034456231267;
0.000579044398060253	0.316227766016837;
0.00055688139909453 	0.621016941891562;
0.00112421003506209     0.672335753649934;
0.00166088278262773     1.61026202756093;
0.00286831681334203     4.1753189365604;
0.00535566691770695     7.27895384398315];
data.WdJO_12 = [WdJO_12(:,1) WdJO_12(:,2)*42.78*24e-9];
temp.WdJO_12 = C2K(12) ;units.WdJO_12 = {'g', 'mol/d'};  label.WdJO_12 = {'dry weight', 'O_2 consumption of juvenile'}; 
units.temp.WdJO_12 = 'K'; label.temp.WdJO_12 = 'temperature'; 
bibkey.WdJO_12 = 'Hamb1983'; comment.WdJO_12 = 'from Hamburger, 1983, Fig.1; juvenile mussels (>0.0001g tissue dry mass); 12°C; fed';

% weight- O2 Consumption of an adult 14°C
WdJO_14 = [ ... % standard dry weight (g), O2 consumption (µL/h)
0.00116895181649858	7.57373917589501;
0.00186718109129193	7.57373917589501;
0.0025514065200313	10.8263673387405;
0.00322459054529642	12.1957046015944;
0.00362511704998855	10.8263673387405;
0.00458159766905452	11.7210229753348;
0.0265294846443192	32.9034456231266;
0.0201876025467905	32.9034456231266;
0.0226951053669469	41.753189365604;
0.0194149194574389	41.753189365604;
0.0209910372010857	50.9209563677339;
0.0275853161762921	45.2035365636024;
0.0310116892657481	48.9390091847749;
0.0286831681334204	59.684569951223;
0.0310116892657481	67.2335753649933;
0.037693909753884	75.73739175895;
0.037693909753884	57.3615251044867;
0.0515067807616818	67.2335753649933;
0.310116892657481	204.335971785693;
0.235983346678222	212.611233389965;
0.286831681334205	280.721620394117];
data.WdJO_14 = [WdJO_14(:,1) WdJO_14(:,2)*42.48*24e-9];
temp.WdJO_14 = C2K(14) ;units.WdJO_14 = {'g', 'mol/d'};  label.WdJO_14 = {'dry weight', 'O_2 consumption of adult'}; 
units.temp.WdJO_14 = 'K'; label.temp.WdJO_14 = 'temperature'; 
bibkey.WdJO_14 = 'Hamb1983'; comment.WdJO_14 = 'from Hamburger, 1983, Fig.1; adult mussel; 14°C; fed';

% weight- O2 Consumption 10°C
WdJO_10 = [ ... % standard dry weight (g), O2 consumption (µL/h)
0.00682512473577169	8.19202129584834;
0.0125487634495982	14.3184520438206;
0.0184305060916997	22.4046348397771;
0.0205918625886456	20.4479626324182;
0.0230066826575436	18.6621731979512;
0.0282323559532653	26.727199759971;
0.0649248229183097	47.6770854091344;
0.0724432784912172	38.0017800719375;
0.173032213294605	33.6571382488283;
0.101701755089257	56.8630451222707;
0.218949789612075	113.62838087041;
0.229462597969961	142.339800848913;
0.2150503785078 	178.501455884994;
0.359442627517809	169.764457053327;
0.50384123631444	216.896239542634;
0.690485955028301	270.987627217987;
0.664069848991421	487.548149199029;
0.881992573125916	241.483576156776;
1.01168254319125	330.794583450756;
1.18252029700611	315.708438464994];
data.WdJO_10 = [WdJO_10(:,1) WdJO_10(:,2)*43.08*24e-9];
temp.WdJO_10 = C2K(10) ;units.WdJO_10 = {'g', 'mol/d'};  label.WdJO_10 = {'dry weight', 'O_2 consumption of M edulis'}; 
units.temp.WdJO_10 = 'K'; label.temp.WdJO_10 = 'temperature'; 
bibkey.WdJO_10 = 'Vahl1973'; comment.WdJO_10 = 'from Vahl, 1973, Fig.3; 10°C, fed (2000 to 6000 cells/ml)';


% weight- O2 Consumption of a M edulis 15°C
WdJO_15_2 = [ ... % standard dry weight (g), O2 consumption (µL/h)
0.0128208553166833	6.25071601849714;
0.0134083180083321	8.68055485839823;
0.0128406612878109	9.78009731956862;
0.147452193339438	81.0697323165296;
0.0157617975947367	20.2146581155023;
0.0169964858901784	20.1442007079412;
0.0188546725508382	23.5238488317193;
0.0192942088512771	18.7855028706608;
0.0188352794080724	17.4541796355339;
0.0198334490199185	17.5991147108758;
0.0192064776603692	15.8431080125674;
0.019202242735549	14.8616503384112;
0.0222514511913479	17.136360715984;
0.0216472649515014	18.4875554343792;
0.0220860533310856	19.6903660962369;
0.0226192007257473	19.8794255612262;
0.0211549017936082	23.3988188157208;
0.0206623431127455	25.2391671575488;
0.0216695533652067	24.9165797755967;
0.0221918310032354	24.8891220290118;
0.0249725039779809	18.3656534297735;
0.0249798476037928	20.0003460498528;
0.024212426092426	23.5022443677202;
0.0237357540254558	23.2744533382934;
0.0237436065985049	25.6176628214107;
0.0236556320880138	27.6071483054123;
0.024325705404791	28.7725565109721;
0.0254253744888576	33.6925528750059;
0.0273034218392339	31.8385230400117;
0.0279779340721697	37.7169280108376;
0.0286196294442053	27.074587686042;
0.0279460756277043	27.1044564442372;
0.0271802715235156	27.1393449781255;
0.0270646387495432	24.9257390875776;
0.026428652459698	25.2206215945566;
0.0271672881362984	23.6278270312064;
0.0271583032706779	21.4666248656948;
0.0276965820340433	20.1183046655121;
0.0279101500146371	18.6650659652805;
0.0305511760600973	14.3913176325728;
0.0290466845480994	19.8611681605375;
0.0289390611403451	21.4036002717796;
0.0291772189667422	23.0531061126151;
0.0298804456899409	23.0277018897508;
0.0297566063568913	21.8366470068296;
0.0301075335910602	20.6919811936767;
0.0327295582476662	21.5100618924457;
0.032736776530473	22.9305781093664;
0.0335257953918613	22.9053089107668;
0.032616679384444	24.9761755209857;
0.0319745520767335	24.7340986944472;
0.0312381104827744	28.7461315978651;
0.0334101704376902	26.5962514928246;
0.0359902742158092	19.6650534733503;
0.0382178771663157	22.7668252495976;
0.0428693449587971	21.0177292950217;
0.0360180628161207	24.5981154543758;
0.036028654592421	26.7875479161656;
0.0357529639565492	28.8731929060356;
0.0350503805392937	28.8997346203893;
0.0359030781129173	30.7743116793019;
0.0364776737596101	30.7516989309403;
0.037210234778342	31.0526710334548;
0.0357726799035341	33.8788119611834;
0.0343717082904473	31.5009769088357;
0.0335714170170718	33.978570802644;
0.03667393761624	46.0985378659234;
0.0375481882390143	42.7372000217427;
0.0382797307767367	36.3892968004545;
0.039333678622816	30.3196275962872;
0.0403172426084947	39.1145544737902;
0.0421057667404723	36.2291596216562;
0.0411042446653843	33.6616094035165;
0.0410936710511738	31.2415549699128;
0.0438010415081525	33.9224203649023;
0.0448550816989116	33.5257953918621;
0.0462767795683643	28.530360715454;
0.044804005263975	24.0925894255234;
0.04735557446299	22.7835664544169;
0.0410589483227983	24.4493972205702;
0.0400926391188905	24.4763698615598
0.0391591449514692	26.4014690318831;
0.0404240724734631	26.6451712341661;
0.0410725319818915	26.9108968996827;
0.0417298599692362	26.891122961402;
0.0422406164343214	28.9582123062688;
0.0430857442643629	28.6248892357059;
0.050299566922294	28.4204719091756;
0.0493111274279438	28.4465974592547;
0.0555041707468934	22.6167068823373;
0.0470277661067076	30.3921464099756;
0.0477962094613423	33.4273658691266;
0.0466867813977925	36.8333331846423;
0.0499293538462572	33.3598632560364;
0.0491573189494877	36.3558766208604;
0.0501408324916973	35.9374028456112;
0.0482019541025929	38.7924319697465;
0.0480286521540591	43.1634074879404;
0.0491844267186648	42.6587357944978;
0.048233852981979	46.9966648583915;
0.0459868517802098	46.107009977629;
0.0426587357944968	50.3865293931605;
0.0480763363295069	57.5566846725123;
0.0438477513625712	46.2087968481022;
0.0438396943871176	43.8107015317448;
0.0438219742519579	38.9638991160784;
0.0450566583023633	38.9138097231388;
0.0461426098528659	38.8709272113473;
0.107279997565476	22.4098498414438;
0.141074760493198	21.8928989314452;
0.140479750443059	64.2659372981352;
0.148000563151816	75.2275115318493;
0.13509226610992	76.3556504573592;
0.129734852980001	61.1550832698799;
0.12826039640141	70.2825589991004;
0.128288683364745	74.9239921722874;
0.124777784595258	75.824308737496;
0.12630037176155	80.787166905922;
0.128832057450191	80.7129714181198;
0.131419320658722	81.5029229834774;
0.131453135529989	87.8163574558583;
0.125324711026694	85.2405902874911;
0.0645903440325095	28.0933384914272;
0.0724915374151511	30.431266819276;
0.0816828506662514	32.9577005469774;
0.0973777412922707	45.0103148718607;
0.100515870206692	44.4677026307511;
0.113769418601562	55.8992814138504;
0.11156242784469	60.2847552410497;
0.107220870691273	60.3956398382277;
0.102237198050774	61.177563822667;
0.099410021470887	56.8523738687113;
0.0936363622507872	52.3497491481301;
0.0914057808852366	48.124067847123;
0.0833875773947514	41.6287581787435;
0.0798015217707155	38.3036555643378;
0.0763921412168025	38.3811617825634;
0.0711035788352726	35.3609190053958;
0.071409991018462	38.9138097231388;
0.0694505960967788	38.5508110659311;
0.0678011454677201	36.2025386892894;
0.064625962332582	32.9637576007052;
0.0621086992927725	32.6742709298209;
0.0606469909387856	32.7103172736811;
0.0604245032262227	35.6283483860741;
0.0589850862339414	32.7524216049392;
0.0578259671325525	32.7825293045442;
0.058073026664699	35.6938812897595;
0.0564816560996541	35.7398260291253;
0.0553574882702573	33.2008530023108;
0.0538405313894537	33.2435887453232;
0.0540387764064986	30.520874091383;
0.0535937475366649	27.7393683919384;
0.0540725505794489	36.5837405626361;
0.0553737671616386	36.1559991173535;
0.055381908402407	37.7307927191451;
0.0538702217128575	39.006884194726;
0.0556226142371984	41.966720060107;
0.0513644225702023	39.0929966681009;
0.0526043366309488	39.468352870153;
0.052614004395629	41.6287581787435;
0.0526488230624545	50.4328472657565;
0.0541143007613694	45.7609268813924;
0.0549904546625227	48.2303076198383;
0.0560927360346154	48.1860125747504;
0.057894016314518	46.107009977629;
0.0592893727202153	46.0562006527876;
0.058831366839864	48.5950662759911;
0.060733983029462	49.5691523543898;
0.0619696111391726	53.9316336080245;
0.0592741211821083	42.7450543778541;
0.0587902986533603	39.6865417193564;
0.0602072571758653	39.6428076669634;
0.0618990464073404	38.7568047343418;
0.0633909316902997	38.7140952400043;
0.0649187742589813	38.6714328109736;
0.0662200683836406	38.6359167020266;
0.0644243846876633	42.1289859361122;
0.0624061591210613	41.3011069680784;
0.0619331805932186	45.4759023044044;
0.0641833212905234	44.9194218627697;
0.0629243640188492	45.442486930373;
0.0659965372427824	45.8282506920791;
0.0644575424080588	48.9086274179607;
0.0665372189663297	48.8367783920103;
0.0660256506330616	52.0810783814351;
0.0644741276672713	52.6972205509945;
0.0650071151903059	57.3666141297794;
0.0679058863369058	56.6438069733052;
0.0693027071289845	65.6988641362547;
0.0723797234466288	61.504462023971;
0.0723637641076625	57.694349374332;
0.0812935082187166	82.45198533006;
0.113089890333294	98.37778658579;
0.106910006498687	82.2854832943932;
0.117500551287586	64.7995853216294;
0.117069492326932	70.5802448137592;
0.117565346884469	76.0336057539131;
0.115288956810271	82.8773305572058;
0.114802703367544	76.9331169058429;
0.111214448632394	77.0463014707345;
0.114318500792626	71.4152402961699;
0.112067902861725	70.7230616748748;
0.109430420645996	70.8010835473584;
0.109398250070962	65.0142832350025;
0.107706674671038	70.8531459420094;
0.104336377500132	70.2051085339195;
0.100652651371902	65.9650122229799;
0.0978944747125048	66.0499216019639;
0.0974887516324865	62.6336414183302;
0.0910938853069372	56.47750449424;
0.088246669555847	56.5605946123769;
0.0875199263127431	51.4059710649901;
0.0858000675345595	51.4532260604637;
0.0857843018677586	48.7829608979085;
0.0871572004881134	48.7471155204193;
0.0887182097046607	83.8886320504342;
0.0886953879223727	77.8575759149703;
0.0908297778908794	76.9472558783669;
0.0926504570035502	76.8765869911729;
0.0937362169733768	71.3103280194576;
0.0933408663736936	66.1957348919199;
0.0933202852156733	62.0950046592817;
0.0911441189663212	66.2687622052798;
0.0886465038697717	66.3540625676275;
0.0852249274240089	73.1687471050775;
0.0855324448188103	65.7592578894132;
0.0831916634857307	66.5494473531252;
0.0851716952126992	61.0428043571661;
0.0882693758805773	60.9419295968491;
0.0851497857322044	56.6542171225707;
0.0828194766970786	57.3349967858751;
0.080544060401335	56.1979754677918;
0.0815328833835677	61.1663225134844;
0.0789874077457786	61.9126978235621;
0.0771284643920076	61.9810000788706;
0.0774551464320883	66.7699430154343;
0.0765354657577166	66.0984903090081;
0.0774181478996336	58.130683173222;
0.0752938971655669	57.5884242660467;
0.0740860827008081	52.9204226548089;
0.0726275437654733	52.4075015326545;
0.0687016675503459	52.5425049892113;
0.0692339697272194	49.2694612336182;
0.0709026406763205	49.215166928657;
0.0734786575352003	48.6129297779951;
0.0758493939284959	48.5415151454949;
0.0776746543993088	47.9739619777429;
0.0795496856239233	48.4345898574175;
0.080822804962369	48.3990004605253;
0.0811621515742185	51.5857712718543;
0.0792578520586349	52.755356266908;
0.0811293455906036	45.8788085419087;
0.0795321453469357	45.4341369240359;
0.0773527322467584	45.4926192045797;
0.0749322537067833	45.076534376663;
0.0728815696524009	45.6181919875958;
0.0711689408783662	46.1578753554545;
0.0692187040099974	46.2172892234974;
0.0694735726526754	42.4320032365291;
0.0711506334521946	42.8394193196589;
0.0731526137906465	42.3307560756456;
0.075512830615445	42.2685702456123];
data.WdJO_15_2 = [WdJO_15_2(:,1) WdJO_15_2(:,2)*42.33*24e-9];
temp.WdJO_15_2 = C2K(15) ;units.WdJO_15_2 = {'g', 'mol/d'};  label.WdJO_15_2 = {'dry weight', 'O_2 consumption of juvenile'}; 
units.temp.WdJO_15_2 = 'K'; label.temp.WdJO_15_2 = 'temperature'; 
bibkey.WdJO_15_2 = 'Diehl1986'; comment.WdJO_15_2 = 'from Diehl, 1986, Fig.1; 15°C; Sa25‰';


% length - O2 consumption
data.LJO = [ ... % shell height[cm], dioxygen consumption rate[cm3O2/h]
	1.62	0.017;
	1.88	0.026;
	1.93	0.057;
	1.96	0.021;
	2.15	0.035;
	2.32	0.021;
	2.38	0.024;
	2.39	0.052;
	2.51	0.038;
	2.60	0.050;
	2.61	0.061;
	2.91	0.071;
	3.08	0.054;
	3.39	0.108;
	3.80	0.200;
	3.81	0.212;
	3.82	0.160;
	3.92	0.142;
	3.94	0.278;
	4.22	0.380;
	4.23	0.408;
	4.46	0.368;
	4.54	0.252;
	4.59	0.177;
	4.62	0.488;
	4.69	0.226;
	5.23	0.335;
	5.53	0.184;
	6.10	0.328];
data.LJO(:,2) = data.LJO(:,2) * 24/22.4e3; % convert cm3/h to mol/d
units.LJO   = {'cm', 'mol/d'};  label.LJO = {'shell height', 'O2 consumption'};  
temp.LJO    = C2K(15);  units.temp.LJO = 'K'; label.temp.LJO = 'temperature';
bibkey.LJO = 'Krug1960';
comment.LJO = 'from HareKooy1993, Fig.8';

% ingestion rate - O2 consumption for 2 lengths
data.JXJO_25 = [ ... % Ingestion_Rate[mgPOM/h] Oxygen_Consumption_Rate[cm3O2/h]
	0.3643	0.028;
	0.4157	0.033;
	0.4543	0.039;
	0.5014	0.042;
	0.7886	0.050;
	0.8400	0.065];
data.JXJO_25(:,1) = data.JXJO_25(:,1) * 24/ 12e3;   % convert mgPOM/h to Cmol/d
data.JXJO_25(:,2) = data.JXJO_25(:,2) * 24/ 22.4e3; % convert cm3/h to mol/d
units.JXJO_25   = {'Cmol/d', 'mol O2/d'};  label.JXJO_25 = {'ingestion rate', 'O2 consumption'};  
temp.JXJO_25    = C2K(15);  units.temp.JXJO_25 = 'K'; label.temp.JXJO_25 = 'temperature';
bibkey.JXJO_25 = 'BaynHawk1987';
comment.JXJO_25 = 'shell height is 2.5 cm; from HareKooy1993, Fig.9';
%
data.JXJO_45 = [ ... % Ingestion_Rate[mgPOM/h] Oxygen_Consumption_Rate[cm3O2/h]
	0.3600	0.109;
	0.4543	0.157;
	0.5486	0.143;
	0.5957	0.147;
	0.7886	0.155;
	0.9043	0.185];
data.JXJO_45(:,1) = data.JXJO_45(:,1) * 24/ 12e3;   % convert mgPOM/h to Cmol/d
data.JXJO_45(:,2) = data.JXJO_45(:,2) * 24/ 22.4e3; % convert cm3/h to mol/d
units.JXJO_45   = {'Cmol/d', 'mol O2/d'};  label.JXJO_45 = {'ingestion rate', 'O2 consumption'};  
temp.JXJO_45    = C2K(15);  units.temp.JXJO_45 = 'K'; label.temp.JXJO_45 = 'temperature';
bibkey.JXJO_45 = {'BaynHawk1987','BaynHawk1989'};
comment.JXJO_45 = 'shell height is 4.5 cm; from HareKooy1993, Fig.9';



% GROWTH 


% AGE - LENGTH 


data.TL_1 = [ ... % time since birth (d), shell length (cm)
4.6979865771812	    0.0110457516339869;
13.8255033557046	0.0145424836601307;
24.6979865771812	0.0172549019607843;
35.0335570469798	0.021078431372549;
46.1744966442953	0.0248039215686274;
56.241610738255 	0.0286928104575163;
65.234899328859     0.031797385620915];
units.TL_1 = {'d', 'cm'}; label.TL_1 = {'time since birth', 'total length'};  
temp.TL_1 = C2K(6);  units.temp.TL_1 = 'K'; label.temp.TL_1 = 'temperature';
bibkey.TL_1 = 'Sprung1984';
comment.TL_1 = 'Data for 6°C; ad libitum (40c/µL)';

data.TL_2 = [ ... % time since birth (d), shell length (cm)
4.06113537117903	0.0121428571428571;
9.03930131004366	0.0151623376623376;
14.0174672489082	0.0184415584415584;
19.0393013100436	0.0210064935064935;
24.4541484716157	0.0248051948051948;
27.6855895196506	0.0285714285714285];
units.TL_2 = {'d', 'cm'}; label.TL_2 = {'time since birth', 'total length'};  
temp.TL_2 = C2K(12);  units.temp.TL_2 = 'K'; label.temp.TL_2 = 'temperature';
bibkey.TL_2= 'Sprung1984';
comment.TL_2 = 'Data for 12°C; ad libitum (40c/µL)';

data.TL_3 = [ ... % time since birth (d), shell length (cm)
1.98019801980197	0.0119629629629629;
6.93069306930693	0.0183703703703703;
10.7920792079207	0.0245925925925925;
14.7524752475247	0.029;
18.7623762376237	0.0313703703703703];
units.TL_3 = {'d', 'cm'}; label.TL_3 = {'time since birth', 'total length'};  
temp.TL_3 = C2K(18);  units.temp.TL_3 = 'K'; label.temp.TL_3 = 'temperature';
bibkey.TL_3= 'Sprung1984';
comment.TL_3 = 'Data for 18°C; ad libitum (40c/µL)';

data.TL_4 = [ ... % time since hatching (d), shell length (cm)
2.057403123	0.009769736842;
7.051547137	0.01132157316];
units.TL_4 = {'d', 'cm'}; label.TL_4 = {'time since hatching', 'total length'};  
temp.TL_4 = C2K(17);  units.temp.TL_4 = 'K'; label.temp.TL_4 = 'temperature';
bibkey.TL_4= 'Lucas1985';
comment.TL_4 = 'Data from Lucas 1985 Fig.2 ; 17°C; fed (2.107 cellules/L)';

data.TL_5 = [ ... % time since birth (d), shell length (cm)
8.030364372	0.01193500578;
11.00643436	0.01327646038;
12.98402256	0.01421558704;
14.94187392	0.01538497687];
units.TL_5 = {'d', 'cm'}; label.TL_5 = {'time since birth', 'total length'};  
temp.TL_5 = C2K(17);  units.temp.TL_5 = 'K'; label.temp.TL_5 = 'temperature';
bibkey.TL_5= 'Lucas1985';
comment.TL_5 = 'Data from Lucas 1985 Fig.2 ; 17°C; fed (2.107 cellules/L)';



% t-L data at several areal exposure levels
data.tL_0 = [ ... %  time since birth (a), shell height (mm) 
    0.92 6.16;
    1.85 15.13;
    3.09 26.74;
    3.95 33.20;
    5.05 39.21;
    6.03 46.41;
    7.00 50.51;
    7.98 57.11;
    9.12 59.74;
    9.91 63.99;
    11.06 68.82;
    11.96 72.78;
    12.98 76.14;
    14.10 74.64;
    15.15 71.38;
    15.96 80.79;
    17.07 77.96;
    17.93 84.42;
    19.03 78.65;
    19.95 84.81;
    22.09 87.56;
    23.16 89.30;
    24.00 90.90];
data.tL_0(:,1) = data.tL_0(:,1) * 365; % convert a to d
data.tL_0(:,2) = data.tL_0(:,2)/ 10; % convert mm to cm
units.tL_0   = {'d', 'cm'};  label.tL_0 = {'time since birth', 'shell height'};  
temp.tL_0    = C2K(12);  units.temp.tL_0 = 'K'; label.temp.tL_0 = 'temperature';
bibkey.tL_0 = 'RodhRode1984';
comment.tL_0 = '0% aerial exposure';
%
data.tL_13 = [ ... %  time since birth (a), shell height (mm) 
    0.86 6.75;
    1.85 15.72;
    3.87 28.63;
    4.97 34.94;
    5.88 39.19;
    6.97 45.20;
    7.92 46.07;
    8.94 48.40;
    9.84 50.44;
    10.86 54.83;
    12.02 60.85;
    12.96 59.64;
    13.87 64.63;
    15.09 60.62;
    15.94 65.46];
data.tL_13(:,1) = data.tL_13(:,1) * 365; % convert a to d
data.tL_13(:,2) = data.tL_13(:,2)/ 10; % convert mm to cm
units.tL_13   = {'d', 'cm'};  label.tL_13 = {'time since birth', 'shell height'};  
temp.tL_13    = C2K(12);  units.temp.tL_13 = 'K'; label.temp.tL_13 = 'temperature';
bibkey.tL_13 = 'RodhRode1984';
comment.tL_13 = '13% aerial exposure';
%
data.tL_33 = [ ... %  time since birth (a), shell height (mm) 
    0.93 8.08;
    1.85 13.95;
    2.81 18.35;
    3.90 22.00;
    4.99 27.87;
    6.08 31.82;
    6.98 34.60;
    7.94 37.67;
    9.13 40.29;
    9.97 42.63;
    10.92 43.49;
    11.95 46.85;
    13.08 49.47];
data.tL_33(:,1) = data.tL_33(:,1) * 365; % convert a to d
data.tL_33(:,2) = data.tL_33(:,2)/ 10; % convert mm to cm
units.tL_33   = {'d', 'cm'};  label.tL_33 = {'time since birth', 'shell height'};  
temp.tL_33    = C2K(12);  units.temp.tL_33 = 'K'; label.temp.tL_33 = 'temperature';
bibkey.tL_33 = 'RodhRode1984';
comment.tL_33 = '33% aerial exposure';	
    


% AGE - WEIGHT 

data.TW_1 = [ ... % time since hatching (d), dry weight (g) 17°C
0.068536726	6.81933E-07;
2.032244072	6.43689E-07;
2.032244072	6.43689E-07;
0.068536726	6.81933E-07;
0.068536726	6.81933E-07;
2.032316368	6.41773E-07;
7.096804511	9.32837E-07;
7.058342973	9.52068E-07;
7.019158473	9.90457E-07];
units.TW_1 = {'d', 'cm'}; label.TW_1 = {'time since hatching', 'total dry weight'};  
temp.TW_1 = C2K(17);  units.temp.TW_1 = 'K'; label.temp.TW_1 = 'temperature';
bibkey.TW_1 = 'Lucas1985';
comment.TW_1 = 'Data from Lucas 1985 Fig.2 ; 17°C; fed (2.107 cellules/L)';

data.TW_2 = [ ... % time since birth (d), dry weight (g) 17°C
8.053571429	1.07851E-06;
8.033039329	1.12261E-06;
8.087550607	1.17807E-06;
10.9925535	1.19549E-06;
10.99313187	1.18016E-06;
12.97686524	1.11123E-06;
12.98966165	1.27212E-06;
13.00433777	1.38321E-06;
14.94505495	1.4542E-06;
14.96884037	1.32389E-06;
14.97455176	1.17253E-06];
units.TW_2 = {'d', 'cm'}; label.TW_2 = {'time since birth', 'total dry weight'};  
temp.TW_2 = C2K(17);  units.temp.TW_2 = 'K'; label.temp.TW_2 = 'temperature';
bibkey.TW_2 = 'Lucas1985';
comment.TW_2 = 'Data from Lucas 1985 Fig.2 ; 17°C; fed (2.107 cellules/L)';


% WEIGHT - LENGTH 

data.LWW = [ ... % shell length (cm), wet weight since birth (g)
0.00680952380952381	3.08823529411764E-07;
0.00995238095238095	2.27941176470588E-07;
0.012047619047619	2.13235294117647E-07;
0.014047619047619	1.47058823529412E-07;
0.014047619047619	3.23529411764706E-07;
0.0172380952380952	6.61764705882353E-07;
0.0173333333333333	7.35294117647058E-07;
0.0251428571428571	1.39705882352941E-06;
0.0251428571428571	1.52205882352941E-06;
0.0298095238095238	4.33823529411764E-06];
units.LWW = {'cm', 'g'}; label.LWW = {'total length since birth', 'tissue wet weight'};  
temp.LWW = C2K(12);  units.temp.LWW = 'K'; label.temp.LWW = 'temperature';
bibkey.LWW= 'Sprung1984';

data.LDW = [ ... % shell length (cm), dry weight since birth (g)
0.00653465346534653	6.26865671641792E-07;
0.00995049504950495	4.62686567164181E-07;
0.012029702970297	4.47761194029849E-07;
0.0138613861386138	2.98507462686568E-07;
0.0138118811881188	6.56716417910447E-07;
0.0173762376237623	1.23880597014925E-06;
0.0174257425742574	1.41791044776119E-06;
0.0252475247524752	2.64179104477611E-06;
0.0251980198019801	2.86567164179104E-06;
0.0299009900990098	0.0000082686567164179];
units.LDW = {'cm', 'g'}; label.LDW = {'total length since birth', 'tissue wet weight'};  
temp.LDW = C2K(12);  units.temp.LDW = 'K'; label.temp.LDW = 'temperature';
bibkey.LDW= 'Sprung1984';


% My_DATA LENGTH WEIGHT by site : 

% OIE _ WEIGHT - LENGTH 

data.O_LW = [ ... % shell length (cm), wet weight (g)
4.951	2.817;
4.515	2.354;
4.58	2.751;
4.374	3.382;
4.248	2.183;
4.752	2.136;
4.377	2.146;
4.062	1.729;
4.026	2.89;
4.164	1.53;
4.8     2.969;
4.759	3.298;
4.665	2.594;
4.863	2.994;
4.859	3.859;
4.551	2.754;
4.561	2.64;
4.706	3.375;
4.305	2.236;
4.345	2.487;
5.069	3.292;
4.439	1.882;
4.16	1.563;
4.253	1.962;
3.719	1.505;
3.951	1.319;
4.288	1.978;
4.287	2.108;
4.169	1.787;
4.002	2.222;
3.665	1.9428;
4.043	1.9396;
3.892	2.281;
3.309	1.6628;
3.508	1.5577;
3.808	1.8944;
3.737	2.4247;
3.501	1.5654;
3.907	2.1774;
3.532	1.6015;
3.366	1.64951;
3.707	2.06046;
3.677	1.69927;
3.842	1.8562;
3.256	1.25671;
3.441	1.42805;
3.603	1.91036;
3.66	2.14673;
3.403	1.25205;
3.568	1.82325;
4.575	3.0521;
3.606	2.4826;
4.48	3.4992;
3.658	1.9062;
4.096	2.3826;
3.755	2.1669;
4.245	2.9804;
3.861	2.0352;
3.896	1.9358;
3.33	1.42371];
units.O_LW = {'cm', 'g'}; label.O_LW = {'length', 'wet weight'};  
bibkey.O_LW = 'Uguen2021'; comment.O_LW = 'Pointe aux Oies site';


% length - wet weight
data.LW = [ ... % Shell_Length[cm] Wet_Weight[g]
	1.77	0.16;				
	1.92	0.27;				
	2.14	0.32;				
	2.65	1.12;				
	2.80	0.72;				
	3.32	1.34;				
	3.47	1.34;				
	3.47	1.97;				
	4.09	2.48;				
	4.09	3.05;				
	4.20	2.31;				
	4.87	3.10;				
	5.20	3.84;				
	5.46	4.29;				
	5.46	4.52;				
	5.09	4.52;				
	5.01	4.75;				
	5.24	4.98;				
	5.46	6.00;				
	5.60	6.34;				
	5.49	6.40;				
	5.75	6.46;				
	5.90	6.57;				
	5.79	7.37;				
	5.94	7.60;				
	5.97	7.82;				
	6.05	9.93;				
	6.27	9.99;				
	6.75	10.56;				
	6.60	10.73;				
	6.64	10.90;				
	6.86	11.07;				
	6.71	11.18;			
	6.53	11.41;			
	6.49	11.98;			
	6.67	11.75;			
	6.78	11.70;			
	6.93	11.64];
units.LW   = {'cm', 'g'};  label.LW = {'shell height', 'wet weight'};  
bibkey.LW = {'Borc1985','PietKluy1979'};
comment.LW = 'from HareKooy1993, Fig.1';

% time - growth during starvation
data.tdL = [ ... % time since birth [d], Shell_Length_growth[mm/d]
	0.0	0.17;	
	0.5	0.15;	
	1.0	0.11;
	1.5	0.09;	
	2.0	0.07;	
	2.5	0.05;	
	3.0	0.03;	
	3.5	0.02;	
	4.0	0.02;	
	4.5	0.01;	
	5.0	0.01;	
	5.5	0.01];
data.tdL(:,2) = data.tdL(:,2)/ 10; % convert mm/d to cm/d
units.tdL   = {'cm', 'cm/d'};  label.tdL = {'shell height', 'growth'};  
temp.tdL    = C2K(21.8);  units.temp.tdL = 'K'; label.temp.tdL = 'temperature';
bibkey.tdL = 'StroCary1984';
comment.tdL = 'initial length is 1.7 cm and no food; from HareKooy1993, Fig.13';

% GAMETES OUTPUT - LENGTH 

data.LR = [ ... % shell length (cm), number of eggs by female per day
3.1953125	16116.0354547945;
3.78125     49422.508739726;
3.7734375	56406.1240821918;
4.0078125	41364.4910136986;
4           63389.7394520548;
4.296875	57480.5264657534;
4.4140625	71447.7571780822;
4.1953125	78431.3725479452;
3.90625     109589.04109589];
units.LR = {'cm', 'eggs/day'}; label.LR = {'length', 'number of eggs by female per day'};  
temp.LR = C2K(8);  units.temp.LR = 'K'; label.temp.LR = 'temperature';
bibkey.LR = 'Sprung1984';


%% set weights for all real data
weights = setweights(data, []);
weights.SJXp_PrinSmaa1991 = weights.SJXp_PrinSmaa1991 .* (data.SJXp_PrinSmaa1991(:,2) > 5);
weights.SJX_KiorMohl1980 = weights.SJX_KiorMohl1980 * 0; % a factor 100 too high
weights.Wwi = 50 * weights.Wwi;

%% set pseudodata and respective weights
[data, units, label, weights] = addpseudodata(data, units, label, weights);
weights.psd.k_J = 0; weights.psd.k = 0.1;
data.psd.k = 0.3; units.psd.k  = '-'; label.psd.k  = 'maintenance ratio'; 

%% pack auxData and txtData for output
auxData.temp = temp;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;

%% Group plots
set1 = {'SJXp_WiddFiet1979','SJXp_PrinSmaa1991'}; comment1 = {'Data from WiddFiet1979, PrinSmaa1991'};
set2 = {'JXJO_45','JXJO_25'}; comment2 = {'Data from 4.5, 2.5 shell height'};
set3 = {'tL_0','tL_13','tL_33'}; comment3 = {'Data at 0%, 13%, 33% areal exposure'};
metaData.grp.sets = {set1,set2,set3};
metaData.grp.comment = {comment1,comment2,comment3};

%% Discussion points
D1 = 'The JX data of KiorMohl1980 is a factor 100 too high, for unknown reasons; the clearance rate times particle conc is not near the ingestion rate';
D2 = 'In view of low somatic maintenance, pseudodata k_J = 0.002 1/d is replaced by pseudodata k = 0.3';
metaData.discussion = struct('D1', D1, 'D2', D2);

%% Facts
F1 = 'This entry is discussed in SaraMeer2011, SaraMeer2011a, SaraMeer2012, Sara2014';
metaData.bibkey.F1 = {'SaraMeer2011','SaraMeer2011a','SaraMeer2012','Sara2014'}; 
metaData.facts = struct('F1',F1);

%% Links
metaData.links.id_CoL = 'fd90faaa60b00c787b864db5935122a0'; % Cat of Life
metaData.links.id_EoL = '449959'; % Ency of Life
metaData.links.id_Wiki = 'Mytilus_edulis'; % Wikipedia
metaData.links.id_ADW = 'Mytilus_edulis'; % ADW
metaData.links.id_Taxo = '39226'; % Taxonomicon
metaData.links.id_WoRMS = '140480'; % WoRMS
metaData.links.id_molluscabase = '140480'; % MolluscaBase

%% References
bibkey = 'Wiki'; type = 'Misc'; bib = ...
'howpublished = {\url{http://en.wikipedia.org/wiki/Mytilus_edulis}}';
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Kooy2010'; type = 'Book'; bib = [ ...  % used in setting of chemical parameters and pseudodata
'author = {Kooijman, S.A.L.M.}, ' ...
'year = {2010}, ' ...
'title  = {Dynamic Energy Budget theory for metabolic organisation}, ' ...
'publisher = {Cambridge Univ. Press, Cambridge}, ' ...
'pages = {Table 4.2 (page 150), 8.1 (page 300)}, ' ...
'howpublished = {\url{../../../bib/Kooy2010.html}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Newe1989'; type = 'Article'; bib = [ ... 
'author = {Newell, R.}, ' ... 
'year = {1989}, ' ...
'title = {Species profiles: life histories and environmental requirements of coastal fiches and invertebrates ({N}orth and {M}id-{A}tlantic): blue mussel}, ' ...
'journal = {U.S. Fish. Wildl. Serv. Biol. Rep.; U.S. Army Corps of Engineers}, ' ...
'volume = {82 (11.102)}, ' ...
'number = {TR E1-82-4}, '...
'pages = {25}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'HareKooy1993'; type = 'Article'; bib = [ ... 
'author = {Haren, R. van and Kooijman, S. A. L. M.}, ' ... 
'year = {1993}, ' ...
'title = {Application of a {D}ynamic {E}nergy {B}udget model to \emph{Mytilus edulis} ({L}.)}, ' ...
'journal = {Neth. J. Sea Res.}, ' ...
'volume = {31}, ' ...
'pages = {119-133}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'VeerCard2006'; type = 'Article'; bib = [ ... 
'author = {Veer, H. van der and Cardoso, J. F. and Meer, J. van der}, ' ... 
'year = {2006}, ' ...
'title = {The estimation of {D}{E}{B} parameters for various northeast {A}tlantic bivalve species}, ' ...
'journal = {Journal of Sea Research}, ' ...
'volume = {56}, ' ...
'pages = {107-124}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'CardDekk2007'; type = 'Article'; bib = [ ... 
'author = {Cardoso, J. and Dekker, R. and Witte, J. and van der Veer, H.}, ' ... 
'year = {2007}, ' ...
'title = {Is reproductive failure responsible for reduced recruitment of intertidal \emph{Mytilus edulis} {L}. in the western {D}utch {W}adden {S}eap {S}enckenberg}, ' ...
'journal = {Mar. Biol.}, ' ...
'volume = {37}, ' ...
'pages = {83-92}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'SaraMeer2011a'; type = 'Article'; bib = [ ... 
'author = {Saraiva, S. and van der Meer, J. and Kooijman, S. A. L. M. and Sousa, T.}, ' ... 
'year = {2011}, ' ...
'title = {Modelling feeding processes in bivalves: a mechanistic approach}, ' ...
'journal = {Ecological Modelling}, ' ...
'volume = {222}, ' ...
'pages = {514-523}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'SaraMeer2011'; type = 'Article'; bib = [ ... 
'author = {Saraiva, S. and van der Meer, J. and Kooijman, S. A. L. M. and Sousa, T.}, ' ... 
'year = {2011}, ' ...
'title = {{D}{E}{B} parameter estimation for \emph{Mytilus edulis}}, ' ...
'journal = {J. Sea Res.}, ' ...
'volume = {66}, ' ...
'pages = {289--296}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'SaraMeer2012'; type = 'Article'; bib = [ ... 
'author = {Saraiva, S. and Meer, J. van der and Kooijman, S. A. L. M. and Witbaard, R. and Philippart, C. J. M. and Hippler, D. and Parker, R.}, ' ... 
'year = {2012}, ' ...
'title = {Validating a {D}{E}{B} model for a blue mussel}, ' ...
'journal = {MEPS}, ' ...
'volume = {463}, ' ...
'pages = {141--158}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'RodhRode1984'; type = 'Article'; bib = [ ... 
'author = {Rodhouse, P. and Roden, C. and Burnell, G. and Hensey, M. and McMahon, T. and Ottway, B. and Ryan, T.}, ' ... 
'year = {1984}, ' ...
'title = {Food resource, gametogenesis and growth of \emph{Mytilus edulis} on the shore and in suspended culture: {K}illary {H}arbour, {I}reland}, ' ...
'journal = {Marine Biology}, ' ...
'volume = {64}, ' ...
'pages = {513-529}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'WiddFiet1979'; type = 'Article'; bib = [ ... 
'author = {Widdows, J. and Fieth, P. and Worral, C.}, ' ... 
'year = {1979}, ' ...
'title = {Relationship between seston, available food and feeding activity in the common mussel \emph{Mytilus edulis}}, ' ...
'journal = {Mar. Biol.}, ' ...
'volume = {50}, ' ...
'pages = {195-207}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'KiorMohl1980'; type = 'Article'; bib = [ ... 
'author = {Ki{\o}rboe, T. and M{\o}hlenberg, F. and N{\o}hr, O.}, ' ... 
'year = {1980}, ' ...
'title = {Feeding, particle selection and carbon absorption in \emph{Mytilus edulis} in different mixtures of algae and resuspended bottom material}, ' ...
'journal = {Ophelia}, ' ...
'volume = {19}, ' ...
'pages = {193-205}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'PrinSmaa1991'; type = 'Article'; bib = [ ... 
'author = {Prins, T. and Smaal, A. and Pouwer, A.}, ' ... 
'year = {1991}, ' ...
'title = {Selective ingestion of phytoplankton by the bivalves \emph{Mytilus edulis} {L}. and \emph{Cerastoderma edule} ({L}.)}, ' ...
'journal = {Hydrobiol. Bull.}, ' ...
'volume = {25}, ' ...
'pages = {93-100}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Krug1960'; type = 'Article'; bib = [ ... 
'author = {Kruger, F.}, ' ... 
'year = {1960}, ' ...
'title = {Zur {F}rage der {G}rossenabhangigkeit des {S}auerstoffverbrauchs von \emph{Mytilus edulis} {L}.}, ' ...
'journal = {Helgol. wiss. Meeresunters}, ' ...
'volume = {7}, ' ...
'pages = {125-148}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Borc1985'; type = 'Article'; bib = [ ... 
'author = {Borchardt, T.}, ' ... 
'year = {1985}, ' ...
'title = {Relationships between carbon and cadmium uptake in \emph{Mytilus edulis}}, ' ...
'journal = {Marine Biology}, ' ...
'volume = {85}, ' ...
'pages = {233-244}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'PietKluy1979'; type = 'Incollection'; bib = [ ... 
'author = {Pieters, H. and Kluytmans, J. and Zurburg, W. and Zandee, D.}, ' ... 
'year = {1979}, ' ...
'title = {The influence of seasonal changes on energy metabolism in \emph{Mytilus edulis} ({L}.). i. growth rate and biochemical composition in relation to environmental parameters and spawning fed on different algal diets}, ' ...
'booktitle = {Cyclic phenomena in marine plants and animals}, ' ...
'editor = {Naylor, E. and Hartnoll, R.}, ' ...
'publisher = {Pergamon Press}, '...
'address = {New York}, '...
'pages = {285-292}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'StroCary1984'; type = 'Article'; bib = [ ... 
'author = {Str\"{o}mgren, T. and Cary, C.}, ' ... 
'year = {1984}, ' ...
'title = {Growth in length of \e,ph{Mytilus edulis} {L}. fed on different algal diets}, ' ...
'journal = {J. Exp. Mar. Biol. Ecol.}, ' ...
'volume = {76}, ' ...
'pages = {23--24}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'BaynHawk1987'; type = 'Article'; bib = [ ... 
'author = {Bayne, B. and Hawkins, A. and Navarro, E.}, ' ... 
'year = {1987}, ' ...
'title = {Feeding and digestion by the mussel \emph{Mytilus edulis} {L}. ({B}ivalvia: {M}ollusca) in mixtures of silt and algal cells at low concentrations}, ' ...
'journal = {J. Exp. Mar. Biol. Ecol.}, ' ...
'volume = {111}, ' ...
'pages = {1--22}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'BaynHawk1989'; type = 'Article'; bib = [ ... 
'author = {Bayne, B. and Hawkins, J. and Navarro, E. and Iglesias, I.}, ' ... 
'year = {1989}, ' ...
'title = {Effects of seston concentration on feeding, digestion and growth in the mussel \emph{Mytilus edulis}}, ' ...
'journal = {Mar. Ecol. Prog. Ser.}, ' ...
'volume = {55}, ' ...
'pages = {47-54}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Sara2014'; type = 'PhDthesis'; bib = [ ... 
'author = {Saraiva, S.}, ' ... 
'year = {2014}, ' ...
'title = {Modelling bivalves in estuaries and coastal areas} , ' ...
'school = {VU University Amsterdam and Lisbon University}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'HonkMeer1998'; type = 'Article'; bib = [ ... 
'author = {Honkoop, P. J. C. and Van der Meer, J.}, ' ... 
'year = {1998}, ' ...
'title = {Experimentally induced effects of water temperature and immersion time on reproductive output of bivalves in the {W}adden {S}ea}, ' ...
'journal = {Journal of Experimental Marine Biology and Ecology}, ' ...
'volume = {220}, ' ...
'pages = {227--246}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
bibkey = 'Kooy2010'; type = 'Book'; bib = [ ...  % used in setting of chemical parameters and pseudodata
'author = {Kooijman, S.A.L.M.}, ' ...
'year = {2010}, ' ...
'title  = {Dynamic Energy Budget theory for metabolic organisation}, ' ...
'publisher = {Cambridge Univ. Press, Cambridge}, ' ...
'pages = {Table 4.2 (page 150), 8.1 (page 300)}, ' ...
'howpublished = {\url{../../../bib/Kooy2010.html}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%


bibkey = 'Uguen2021'; type = 'Misc' ; bib = [ ... 
'author = {Uguen, M}, ' ...
'year = {2021}, '...
'note = {unpublished results from own research}, '];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];

%

bibkey = 'Sprung1983'; type = 'Article' ; bib = [ ... 
'author = {Sprung,  M.}, ' ...
'year = {1983}, '...
'title = {Reproduction and fecundity of the mussel Mytilus edulisat Helgoland (North Sea)}, ' ...
'Journal = { Helgolander Meeresuntersuchungen }, '...
'volume = {36}, ' ...
'pages = {243--255}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];
%


bibkey = 'Sprung1984'; type = 'Article' ; bib = [ ... 
'author = {Sprung,  M.}, '...
'year = {1984}, '...
'title = {Physiological energetics of mussel larvae (Mytilus edulis). I. Shell growth and biomass}, '...
'journal = {Marine Ecology Progress Series }, '...
'volume = {17}, '...
'pages = {283--293}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];


%



bibkey = 'Lucas1985'; type = 'Article' ; bib = [ ...
'author = {Lucas, M. and CHEBAB-CHALABI, L. and ALDANA ARANDA, D. }, ' ... 
'year = {1985}, '...
'title = {Passage de l endotrophie a l exotrophie chez les larves de Mytilus edulis}, '...
'journal = {Oceanologica acta }, '...
'volume = {9}, '...
'pages = {97--103}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];

%


bibkey = 'Loo1992'; type = 'Article' ; bib = [ ... 
'author = {Loo, L.}, '...
'year = {1992}, '...
'title = {Filtration, assimilation, respiration and growth of Mytilus edulis L. at low temperatures. },'...
'journal = {Physiological Zoology}, '...
'volume = {59}, '...
'pages = {201--211}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];

%


bibkey = 'Diehl1986'; type = 'Article' ; bib = [ ...
'author = {Diehl, W. J.  and Gaffney,  P. M. and Koehn, K.}, '...
'year = {1986}, '...
'title = {Physiological and genetic aspects of growth in the mussel Mytilus edulis. I. Oxygen consumption, growth, and weight loss.}, '...
'journal = {Ophelia}, '...
'volume = {35},'...
'pages = {123--131}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];


%


bibkey = 'Hamb1983'; type = 'Article' ; bib = [ ...
'author = {Hamburger, K. and Mohlenberg, F. and Randlov, A. and Riisgard, H. U.},'...
'year = {1983}, '...
'title = {Size, oxygen consumption and growth in the mussel Mytilus edulis}, '...
'journal = {Marine Biology },'...
'volume = {75}, '...
'pages = {303--306}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];

%

bibkey = 'Mestre2009'; type = 'Article' ; bib = [ ... 
'author = {Mestre, N. C. and Thatje, S. and Tyler, P. A.}, '...
'year = {2009}, '...
'title = {The ocean is not deep enough: pressure tolerances during early ontogeny of the blue mussel Mytilus edulis.}, '...
'journal = {Proceedings of the Royal Society B: Biological Sciences  }, '...
'volume = {276}, '...
'pages = {717--726}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];

%

bibkey = 'Vahl1973'; type = 'Article' ; bib = [ ... 
'author = {Vahl, O.}, '...
'year = {1973}, '...
'title = {Pumping and oxygen cunsumption rates of Mytilus edulis L. of different sizes.}, '...
'journal = {Ophelia }, '...
'volume = {12}, '...
'pages = {45--52}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ',' bib, ')'';'];

%

bibkey = 'HareKooy1993'; type = 'Article'; bib = [ ... 
'author = {Haren, R. van and Kooijman, S. A. L. M.}, ' ... 
'year = {1993}, ' ...
'title = {Application of a dynamic energy budget model to Mytilus edulis (L.)}, ' ...
'journal = {Neth. J. Sea Res.}, ' ...
'volume = {31}, ' ...
'pages = {119-133}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];

%
bibkey = 'VeerCard2006'; type = 'Article'; bib = [ ... 
'author = {Veer, H. van der and Cardoso, J. F. and Meer, J. van der}, ' ... 
'year = {2006}, ' ...
'title = {The estimation of DEB parameters for various northeast atlantic bivalve species}, ' ...
'journal = {Journal of Sea Research}, ' ...
'volume = {56}, ' ...
'pages = {107-124}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];

%



