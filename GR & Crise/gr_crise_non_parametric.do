*** Importar banco de dados nível país
import excel "C:\Users\Helison\Desktop\Mestrado Controladoria e Contabilidade\4. Submissões\SEMEAD\GR & Crise\Tab_Compl_CNT (1)\Tab_Compl_CNT_1T20.xls", sheet("Trimestre contra Trimestre Ant.") cellrange(A3:W101) firstrow
** Apagar variáveis desnecessárias
drop AGROPECUÁRIA INDÚSTRIA D E F G SERVIÇOS I J K L M N O VA ConsumodasFamílias ConsumodoGoverno FormaçãoBrutadeCapitalFixo Exportação Importação W
**Apagar linhas desnecessárias
drop in 1/57
drop in 41
** Criar variável t_ano comum nos dois bancos de dados
gen t_ano  =  0  if Período == "2010.I"
replace t_ano = 0  if Período == "2010.II"
replace t_ano = 0  if Período == "2010.III"
replace t_ano = 0  if Período == "2010.IV"
replace t_ano = 1  if Período == "2011.I"
replace t_ano = 2  if Período == "2011.II"
replace t_ano = 3  if Período == "2011.III"
replace t_ano = 4  if Período == "2011.IV"
replace t_ano = 5  if Período == "2012.I"
replace t_ano = 6  if Período == "2012.II"
replace t_ano = 7  if Período == "2012.III"
replace t_ano = 8  if Período == "2012.IV"
replace t_ano = 9  if Período == "2013.I"
replace t_ano = 10 if Período == "2013.II"
replace t_ano = 11  if Período == "2013.III"
replace t_ano = 12 if Período == "2013.IV"
replace t_ano = 13 if Período == "2014.I"
replace t_ano = 14  if Período == "2014.II"
replace t_ano = 15  if Período == "2014.III"
replace t_ano = 16  if Período == "2014.IV"
replace t_ano = 17  if Período == "2015.I"
replace t_ano = 18  if Período == "2015.II"
replace t_ano = 19  if Período == "2015.III"
replace t_ano = 20  if Período == "2015.IV"
replace t_ano = 21  if Período == "2016.I"
replace t_ano = 22  if Período == "2016.II"
replace t_ano = 23  if Período == "2016.III"
replace t_ano = 24  if Período == "2016.IV"
replace t_ano = 25  if Período == "2017.I"
replace t_ano = 26  if Período == "2017.II"
replace t_ano = 27  if Período == "2017.III"
replace t_ano = 28  if Período == "2017.IV"
replace t_ano = 29  if Período == "2018.I"
replace t_ano = 30  if Período == "2018.II"
replace t_ano = 31  if Período == "2018.III"
replace t_ano = 32  if Período == "2018.IV"
replace t_ano = 33  if Período == "2019.I"
replace t_ano = 34  if Período == "2019.II"
replace t_ano = 35  if Período == "2019.III"
replace t_ano = 36  if Período == "2019.IV"

*** Apagar anos de 2010 e 2011
drop if t_ano == 0 
drop if t_ano == 1
drop if t_ano == 2
drop if t_ano == 3
drop if t_ano == 4
  
save "C:\Users\Helison\Desktop\Mestrado Controladoria e Contabilidade\4. Submissões\SEMEAD\GR & Crise\bd_pib.dta", replace
clear

*** Importar banco de dados nível empresa
import excel "C:\Users\Helison\Desktop\Mestrado Controladoria e Contabilidade\4. Submissões\SEMEAD\GR & Crise\BD.xlsx", sheet("Sheet1") cellrange(A4:ZO279) firstrow

*** Tratar base dados Economatica
** Renomear variáveis
rename (AtivoTotMar2010ajustpor AtivoTotJun2010ajustpor AtivoTotSet2010ajustpor AtivoTotDez2010ajustpor AtivoTotMar2011ajustpor AtivoTotJun2011ajustpor AtivoTotSet2011ajustpor AtivoTotDez2011ajustpor AtivoTotMar2012ajustpor AtivoTotJun2012ajustpor AtivoTotSet2012ajustpor AtivoTotDez2012ajustpor AtivoTotMar2013ajustpor AtivoTotJun2013ajustpor AtivoTotSet2013ajustpor AtivoTotDez2013ajustpor AtivoTotMar2014ajustpor AtivoTotJun2014ajustpor AtivoTotSet2014ajustpor AtivoTotDez2014ajustpor AtivoTotMar2015ajustpor AtivoTotJun2015ajustpor AtivoTotSet2015ajustpor AtivoTotDez2015ajustpor AtivoTotMar2016ajustpor AtivoTotJun2016ajustpor AtivoTotSet2016ajustpor AtivoTotDez2016ajustpor AtivoTotMar2017ajustpor AtivoTotJun2017ajustpor AtivoTotSet2017ajustpor AtivoTotDez2017ajustpor AtivoTotMar2018ajustpor AtivoTotJun2018ajustpor AtivoTotSet2018ajustpor AtivoTotDez2018ajustpor AtivoTotMar2019ajustpor AtivoTotJun2019ajustpor AtivoTotSet2019ajustpor AtivoTotDez2019ajustpor) (at12010 at22010 at32010 at42010 at12011 at22011 at32011 at42011 at12012 at22012 at32012 at42012 at12013 at22013 at32013 at42013 at12014 at22014 at32014 at42014 at12015 at22015 at32015 at42015 at12016 at22016 at32016 at42016 at12017 at22017 at32017 at42017 at12018 at22018 at32018 at42018 at12019 at22019 at32019 at42019)
rename (CtaRecCPMar2010ajustpor CtaRecCPJun2010ajustpor CtaRecCPSet2010ajustpor CtaRecCPDez2010ajustpor CtaRecCPMar2011ajustpor CtaRecCPJun2011ajustpor CtaRecCPSet2011ajustpor CtaRecCPDez2011ajustpor CtaRecCPMar2012ajustpor CtaRecCPJun2012ajustpor CtaRecCPSet2012ajustpor CtaRecCPDez2012ajustpor CtaRecCPMar2013ajustpor CtaRecCPJun2013ajustpor CtaRecCPSet2013ajustpor CtaRecCPDez2013ajustpor CtaRecCPMar2014ajustpor CtaRecCPJun2014ajustpor CtaRecCPSet2014ajustpor CtaRecCPDez2014ajustpor CtaRecCPMar2015ajustpor CtaRecCPJun2015ajustpor CtaRecCPSet2015ajustpor CtaRecCPDez2015ajustpor CtaRecCPMar2016ajustpor CtaRecCPJun2016ajustpor CtaRecCPSet2016ajustpor CtaRecCPDez2016ajustpor CtaRecCPMar2017ajustpor CtaRecCPJun2017ajustpor CtaRecCPSet2017ajustpor CtaRecCPDez2017ajustpor CtaRecCPMar2018ajustpor CtaRecCPJun2018ajustpor CtaRecCPSet2018ajustpor CtaRecCPDez2018ajustpor CtaRecCPMar2019ajustpor CtaRecCPJun2019ajustpor CtaRecCPSet2019ajustpor CtaRecCPDez2019ajustpor)(crcp12010 crcp22010 crcp32010 crcp42010 crcp12011 crcp22011 crcp32011 crcp42011 crcp12012 crcp22012 crcp32012 crcp42012 crcp12013 crcp22013 crcp32013 crcp42013 crcp12014 crcp22014 crcp32014 crcp42014 crcp12015 crcp22015 crcp32015 crcp42015 crcp12016 crcp22016 crcp32016 crcp42016 crcp12017 crcp22017 crcp32017 crcp42017 crcp12018 crcp22018 crcp32018 crcp42018 crcp12019 crcp22019 crcp32019 crcp42019)
rename (CtaRecLPMar2010ajustpor CtaRecLPJun2010ajustpor CtaRecLPSet2010ajustpor CtaRecLPDez2010ajustpor CtaRecLPMar2011ajustpor CtaRecLPJun2011ajustpor CtaRecLPSet2011ajustpor CtaRecLPDez2011ajustpor CtaRecLPMar2012ajustpor CtaRecLPJun2012ajustpor CtaRecLPSet2012ajustpor CtaRecLPDez2012ajustpor CtaRecLPMar2013ajustpor CtaRecLPJun2013ajustpor CtaRecLPSet2013ajustpor CtaRecLPDez2013ajustpor CtaRecLPMar2014ajustpor CtaRecLPJun2014ajustpor CtaRecLPSet2014ajustpor CtaRecLPDez2014ajustpor CtaRecLPMar2015ajustpor CtaRecLPJun2015ajustpor CtaRecLPSet2015ajustpor CtaRecLPDez2015ajustpor CtaRecLPMar2016ajustpor CtaRecLPJun2016ajustpor CtaRecLPSet2016ajustpor CtaRecLPDez2016ajustpor CtaRecLPMar2017ajustpor CtaRecLPJun2017ajustpor CtaRecLPSet2017ajustpor CtaRecLPDez2017ajustpor CtaRecLPMar2018ajustpor CtaRecLPJun2018ajustpor CtaRecLPSet2018ajustpor CtaRecLPDez2018ajustpor CtaRecLPMar2019ajustpor CtaRecLPJun2019ajustpor CtaRecLPSet2019ajustpor CtaRecLPDez2019ajustpor)(crlp12010 crlp22010 crlp32010 crlp42010 crlp12011 crlp22011 crlp32011 crlp42011 crlp12012 crlp22012 crlp32012 crlp42012 crlp12013 crlp22013 crlp32013 crlp42013 crlp12014 crlp22014 crlp32014 crlp42014 crlp12015 crlp22015 crlp32015 crlp42015 crlp12016 crlp22016 crlp32016 crlp42016 crlp12017 crlp22017 crlp32017 crlp42017 crlp12018 crlp22018 crlp32018 crlp42018 crlp12019 crlp22019 crlp32019 crlp42019)
rename (ImobilMar2010ajustporin  ImobilJun2010ajustporin  ImobilSet2010ajustporin  ImobilDez2010ajustporin  ImobilMar2011ajustporin  ImobilJun2011ajustporin  ImobilSet2011ajustporin  ImobilDez2011ajustporin  ImobilMar2012ajustporin  ImobilJun2012ajustporin  ImobilSet2012ajustporin  ImobilDez2012ajustporin  ImobilMar2013ajustporin  ImobilJun2013ajustporin  ImobilSet2013ajustporin  ImobilDez2013ajustporin  ImobilMar2014ajustporin  ImobilJun2014ajustporin  ImobilSet2014ajustporin  ImobilDez2014ajustporin  ImobilMar2015ajustporin  ImobilJun2015ajustporin  ImobilSet2015ajustporin  ImobilDez2015ajustporin  ImobilMar2016ajustporin  ImobilJun2016ajustporin  ImobilSet2016ajustporin  ImobilDez2016ajustporin  ImobilMar2017ajustporin  ImobilJun2017ajustporin  ImobilSet2017ajustporin  ImobilDez2017ajustporin  ImobilMar2018ajustporin  ImobilJun2018ajustporin  ImobilSet2018ajustporin  ImobilDez2018ajustporin  ImobilMar2019ajustporin  ImobilJun2019ajustporin  ImobilSet2019ajustporin  ImobilDez2019ajustporin )(imob12010 imob22010 imob32010 imob42010 imob12011 imob22011 imob32011 imob42011 imob12012 imob22012 imob32012 imob42012 imob12013 imob22013 imob32013 imob42013 imob12014 imob22014 imob32014 imob42014 imob12015 imob22015 imob32015 imob42015 imob12016 imob22016 imob32016 imob42016 imob12017 imob22017 imob32017 imob42017 imob12018 imob22018 imob32018 imob42018 imob12019 imob22019 imob32019 imob42019)
rename (PatrimLiqMar2010ajustpo PatrimLiqJun2010ajustpo PatrimLiqSet2010ajustpo PatrimLiqDez2010ajustpo PatrimLiqMar2011ajustpo PatrimLiqJun2011ajustpo PatrimLiqSet2011ajustpo PatrimLiqDez2011ajustpo PatrimLiqMar2012ajustpo PatrimLiqJun2012ajustpo PatrimLiqSet2012ajustpo PatrimLiqDez2012ajustpo PatrimLiqMar2013ajustpo PatrimLiqJun2013ajustpo PatrimLiqSet2013ajustpo PatrimLiqDez2013ajustpo PatrimLiqMar2014ajustpo PatrimLiqJun2014ajustpo PatrimLiqSet2014ajustpo PatrimLiqDez2014ajustpo PatrimLiqMar2015ajustpo PatrimLiqJun2015ajustpo PatrimLiqSet2015ajustpo PatrimLiqDez2015ajustpo PatrimLiqMar2016ajustpo PatrimLiqJun2016ajustpo PatrimLiqSet2016ajustpo PatrimLiqDez2016ajustpo PatrimLiqMar2017ajustpo PatrimLiqJun2017ajustpo PatrimLiqSet2017ajustpo PatrimLiqDez2017ajustpo PatrimLiqMar2018ajustpo PatrimLiqJun2018ajustpo PatrimLiqSet2018ajustpo PatrimLiqDez2018ajustpo PatrimLiqMar2019ajustpo PatrimLiqJun2019ajustpo PatrimLiqSet2019ajustpo PatrimLiqDez2019ajustpo) (pl12010 pl22010 pl32010 pl42010 pl12011 pl22011 pl32011 pl42011 pl12012 pl22012 pl32012 pl42012 pl12013 pl22013 pl32013 pl42013 pl12014 pl22014 pl32014 pl42014 pl12015 pl22015 pl32015 pl42015 pl12016 pl22016 pl32016 pl42016 pl12017 pl22017 pl32017 pl42017 pl12018 pl22018 pl32018 pl42018 pl12019 pl22019 pl32019 pl42019)
rename (ReceitaMar2010ajustpori ReceitaJun2010ajustpori ReceitaSet2010ajustpori ReceitaDez2010ajustpori ReceitaMar2011ajustpori ReceitaJun2011ajustpori ReceitaSet2011ajustpori ReceitaDez2011ajustpori ReceitaMar2012ajustpori ReceitaJun2012ajustpori ReceitaSet2012ajustpori ReceitaDez2012ajustpori ReceitaMar2013ajustpori ReceitaJun2013ajustpori ReceitaSet2013ajustpori ReceitaDez2013ajustpori ReceitaMar2014ajustpori ReceitaJun2014ajustpori ReceitaSet2014ajustpori ReceitaDez2014ajustpori ReceitaMar2015ajustpori ReceitaJun2015ajustpori ReceitaSet2015ajustpori ReceitaDez2015ajustpori ReceitaMar2016ajustpori ReceitaJun2016ajustpori ReceitaSet2016ajustpori ReceitaDez2016ajustpori ReceitaMar2017ajustpori ReceitaJun2017ajustpori ReceitaSet2017ajustpori ReceitaDez2017ajustpori ReceitaMar2018ajustpori ReceitaJun2018ajustpori ReceitaSet2018ajustpori ReceitaDez2018ajustpori ReceitaMar2019ajustpori ReceitaJun2019ajustpori ReceitaSet2019ajustpori ReceitaDez2019ajustpori) (receita12010 receita22010 receita32010 receita42010 receita12011 receita22011 receita32011 receita42011 receita12012 receita22012 receita32012 receita42012 receita12013 receita22013 receita32013 receita42013 receita12014 receita22014 receita32014 receita42014 receita12015 receita22015 receita32015 receita42015 receita12016 receita22016 receita32016 receita42016 receita12017 receita22017 receita32017 receita42017 receita12018 receita22018 receita32018 receita42018 receita12019 receita22019 receita32019 receita42019)
rename (LucroLiquidoMar2010ajust LucroLiquidoJun2010ajust LucroLiquidoSet2010ajust LucroLiquidoDez2010ajust LucroLiquidoMar2011ajust LucroLiquidoJun2011ajust LucroLiquidoSet2011ajust LucroLiquidoDez2011ajust LucroLiquidoMar2012ajust LucroLiquidoJun2012ajust LucroLiquidoSet2012ajust LucroLiquidoDez2012ajust LucroLiquidoMar2013ajust LucroLiquidoJun2013ajust LucroLiquidoSet2013ajust LucroLiquidoDez2013ajust LucroLiquidoMar2014ajust LucroLiquidoJun2014ajust LucroLiquidoSet2014ajust LucroLiquidoDez2014ajust LucroLiquidoMar2015ajust LucroLiquidoJun2015ajust LucroLiquidoSet2015ajust LucroLiquidoDez2015ajust LucroLiquidoMar2016ajust LucroLiquidoJun2016ajust LucroLiquidoSet2016ajust LucroLiquidoDez2016ajust LucroLiquidoMar2017ajust LucroLiquidoJun2017ajust LucroLiquidoSet2017ajust LucroLiquidoDez2017ajust LucroLiquidoMar2018ajust LucroLiquidoJun2018ajust LucroLiquidoSet2018ajust LucroLiquidoDez2018ajust LucroLiquidoMar2019ajust LucroLiquidoJun2019ajust LucroLiquidoSet2019ajust LucroLiquidoDez2019ajust) (lucro_liquido12010 lucro_liquido22010 lucro_liquido32010 lucro_liquido42010 lucro_liquido12011 lucro_liquido22011 lucro_liquido32011 lucro_liquido42011 lucro_liquido12012 lucro_liquido22012 lucro_liquido32012 lucro_liquido42012 lucro_liquido12013 lucro_liquido22013 lucro_liquido32013 lucro_liquido42013 lucro_liquido12014 lucro_liquido22014 lucro_liquido32014 lucro_liquido42014 lucro_liquido12015 lucro_liquido22015 lucro_liquido32015 lucro_liquido42015 lucro_liquido12016 lucro_liquido22016 lucro_liquido32016 lucro_liquido42016 lucro_liquido12017 lucro_liquido22017 lucro_liquido32017 lucro_liquido42017 lucro_liquido12018 lucro_liquido22018 lucro_liquido32018 lucro_liquido42018 lucro_liquido12019 lucro_liquido22019 lucro_liquido32019 lucro_liquido42019)
rename (CxOperMar2010ajustporin CxOperJun2010ajustporin CxOperSet2010ajustporin CxOperDez2010ajustporin CxOperMar2011ajustporin CxOperJun2011ajustporin CxOperSet2011ajustporin CxOperDez2011ajustporin CxOperMar2012ajustporin CxOperJun2012ajustporin CxOperSet2012ajustporin CxOperDez2012ajustporin CxOperMar2013ajustporin CxOperJun2013ajustporin CxOperSet2013ajustporin CxOperDez2013ajustporin CxOperMar2014ajustporin CxOperJun2014ajustporin CxOperSet2014ajustporin CxOperDez2014ajustporin CxOperMar2015ajustporin CxOperJun2015ajustporin CxOperSet2015ajustporin CxOperDez2015ajustporin CxOperMar2016ajustporin CxOperJun2016ajustporin CxOperSet2016ajustporin CxOperDez2016ajustporin CxOperMar2017ajustporin CxOperJun2017ajustporin CxOperSet2017ajustporin CxOperDez2017ajustporin CxOperMar2018ajustporin CxOperJun2018ajustporin CxOperSet2018ajustporin CxOperDez2018ajustporin CxOperMar2019ajustporin CxOperJun2019ajustporin CxOperSet2019ajustporin CxOperDez2019ajustporin) (fco12010 fco22010 fco32010 fco42010 fco12011 fco22011 fco32011 fco42011 fco12012 fco22012 fco32012 fco42012 fco12013 fco22013 fco32013 fco42013 fco12014 fco22014 fco32014 fco42014 fco12015 fco22015 fco32015 fco42015 fco12016 fco22016 fco32016 fco42016 fco12017 fco22017 fco32017 fco42017 fco12018 fco22018 fco32018 fco42018 fco12019 fco22019 fco32019 fco42019)
rename (RentAtMar2010de3meses RentAtJun2010de3meses RentAtSet2010de3meses RentAtDez2010de3meses RentAtMar2011de3meses RentAtJun2011de3meses RentAtSet2011de3meses RentAtDez2011de3meses RentAtMar2012de3meses RentAtJun2012de3meses RentAtSet2012de3meses RentAtDez2012de3meses RentAtMar2013de3meses RentAtJun2013de3meses RentAtSet2013de3meses RentAtDez2013de3meses RentAtMar2014de3meses RentAtJun2014de3meses RentAtSet2014de3meses RentAtDez2014de3meses RentAtMar2015de3meses RentAtJun2015de3meses RentAtSet2015de3meses RentAtDez2015de3meses RentAtMar2016de3meses RentAtJun2016de3meses RentAtSet2016de3meses RentAtDez2016de3meses RentAtMar2017de3meses RentAtJun2017de3meses RentAtSet2017de3meses RentAtDez2017de3meses RentAtMar2018de3meses RentAtJun2018de3meses RentAtSet2018de3meses RentAtDez2018de3meses RentAtMar2019de3meses RentAtJun2019de3meses RentAtSet2019de3meses RentAtDez2019de3meses) (roa12010 roa22010 roa32010 roa42010 roa12011 roa22011 roa32011 roa42011 roa12012 roa22012 roa32012 roa42012 roa12013 roa22013 roa32013 roa42013 roa12014 roa22014 roa32014 roa42014 roa12015 roa22015 roa32015 roa42015 roa12016 roa22016 roa32016 roa42016 roa12017 roa22017 roa32017 roa42017 roa12018 roa22018 roa32018 roa42018 roa12019 roa22019 roa32019 roa42019)
rename (ValorMercadodaempresa31Mar10 ValorMercadodaempresa31Jul10 ValorMercadodaempresa30Set10 ValorMercadodaempresa31Dez10 ValorMercadodaempresa31Mar11 ValorMercadodaempresa31Jul11 ValorMercadodaempresa30Set11 ValorMercadodaempresa31Dez11 ValorMercadodaempresa31Mar12 ValorMercadodaempresa31Jul12 ValorMercadodaempresa30Set12 ValorMercadodaempresa31Dez12 ValorMercadodaempresa31Mar13 ValorMercadodaempresa31Jul13 ValorMercadodaempresa30Set13 ValorMercadodaempresa31Dez13 ValorMercadodaempresa31Mar14 ValorMercadodaempresa31Jul14 ValorMercadodaempresa30Set14 ValorMercadodaempresa31Dez14 ValorMercadodaempresa31Mar15 ValorMercadodaempresa31Jul15 ValorMercadodaempresa30Set15 ValorMercadodaempresa31Dez15 ValorMercadodaempresa31Mar16 ValorMercadodaempresa31Jul16 ValorMercadodaempresa30Set16 ValorMercadodaempresa31Dez16 ValorMercadodaempresa31Mar17 ValorMercadodaempresa31Jul17 ValorMercadodaempresa30Set17 ValorMercadodaempresa31Dez17 ValorMercadodaempresa31Mar18 ValorMercadodaempresa31Jul18 ValorMercadodaempresa30Set18 ValorMercadodaempresa31Dez18 ValorMercadodaempresa31Mar19 ValorMercadodaempresa31Jul19 ValorMercadodaempresa30Set19 ValorMercadodaempresa31Dez19)(valor_mercado12010 valor_mercado22010 valor_mercado32010 valor_mercado42010 valor_mercado12011 valor_mercado22011 valor_mercado32011 valor_mercado42011 valor_mercado12012 valor_mercado22012 valor_mercado32012 valor_mercado42012 valor_mercado12013 valor_mercado22013 valor_mercado32013 valor_mercado42013 valor_mercado12014 valor_mercado22014 valor_mercado32014 valor_mercado42014 valor_mercado12015 valor_mercado22015 valor_mercado32015 valor_mercado42015 valor_mercado12016 valor_mercado22016 valor_mercado32016 valor_mercado42016 valor_mercado12017 valor_mercado22017 valor_mercado32017 valor_mercado42017 valor_mercado12018 valor_mercado22018 valor_mercado32018 valor_mercado42018 valor_mercado12019 valor_mercado22019 valor_mercado32019 valor_mercado42019)
rename (AtvCirMar2010ajustporin AtvCirJun2010ajustporin AtvCirSet2010ajustporin AtvCirDez2010ajustporin AtvCirMar2011ajustporin AtvCirJun2011ajustporin AtvCirSet2011ajustporin AtvCirDez2011ajustporin AtvCirMar2012ajustporin AtvCirJun2012ajustporin AtvCirSet2012ajustporin AtvCirDez2012ajustporin AtvCirMar2013ajustporin AtvCirJun2013ajustporin AtvCirSet2013ajustporin AtvCirDez2013ajustporin AtvCirMar2014ajustporin AtvCirJun2014ajustporin AtvCirSet2014ajustporin AtvCirDez2014ajustporin AtvCirMar2015ajustporin AtvCirJun2015ajustporin AtvCirSet2015ajustporin AtvCirDez2015ajustporin AtvCirMar2016ajustporin AtvCirJun2016ajustporin AtvCirSet2016ajustporin AtvCirDez2016ajustporin AtvCirMar2017ajustporin AtvCirJun2017ajustporin AtvCirSet2017ajustporin AtvCirDez2017ajustporin AtvCirMar2018ajustporin AtvCirJun2018ajustporin AtvCirSet2018ajustporin AtvCirDez2018ajustporin AtvCirMar2019ajustporin AtvCirJun2019ajustporin AtvCirSet2019ajustporin AtvCirDez2019ajustporin)(at_circ12010 at_circ22010 at_circ32010 at_circ42010 at_circ12011 at_circ22011 at_circ32011 at_circ42011 at_circ12012 at_circ22012 at_circ32012 at_circ42012 at_circ12013 at_circ22013 at_circ32013 at_circ42013 at_circ12014 at_circ22014 at_circ32014 at_circ42014 at_circ12015 at_circ22015 at_circ32015 at_circ42015 at_circ12016 at_circ22016 at_circ32016 at_circ42016 at_circ12017 at_circ22017 at_circ32017 at_circ42017 at_circ12018 at_circ22018 at_circ32018 at_circ42018 at_circ12019 at_circ22019 at_circ32019 at_circ42019)
rename (CaixaEEqCxMar2010ajustpo CaixaEEqCxJun2010ajustpo CaixaEEqCxSet2010ajustpo CaixaEEqCxDez2010ajustpo CaixaEEqCxMar2011ajustpo CaixaEEqCxJun2011ajustpo CaixaEEqCxSet2011ajustpo CaixaEEqCxDez2011ajustpo CaixaEEqCxMar2012ajustpo CaixaEEqCxJun2012ajustpo CaixaEEqCxSet2012ajustpo CaixaEEqCxDez2012ajustpo CaixaEEqCxMar2013ajustpo CaixaEEqCxJun2013ajustpo CaixaEEqCxSet2013ajustpo CaixaEEqCxDez2013ajustpo CaixaEEqCxMar2014ajustpo CaixaEEqCxJun2014ajustpo CaixaEEqCxSet2014ajustpo CaixaEEqCxDez2014ajustpo CaixaEEqCxMar2015ajustpo CaixaEEqCxJun2015ajustpo CaixaEEqCxSet2015ajustpo CaixaEEqCxDez2015ajustpo CaixaEEqCxMar2016ajustpo CaixaEEqCxJun2016ajustpo CaixaEEqCxSet2016ajustpo CaixaEEqCxDez2016ajustpo CaixaEEqCxMar2017ajustpo CaixaEEqCxJun2017ajustpo CaixaEEqCxSet2017ajustpo CaixaEEqCxDez2017ajustpo CaixaEEqCxMar2018ajustpo CaixaEEqCxJun2018ajustpo CaixaEEqCxSet2018ajustpo CaixaEEqCxDez2018ajustpo CaixaEEqCxMar2019ajustpo CaixaEEqCxJun2019ajustpo CaixaEEqCxSet2019ajustpo CaixaEEqCxDez2019ajustpo) (cash12010 cash22010 cash32010 cash42010 cash12011 cash22011 cash32011 cash42011 cash12012 cash22012 cash32012 cash42012 cash12013 cash22013 cash32013 cash42013 cash12014 cash22014 cash32014 cash42014 cash12015 cash22015 cash32015 cash42015 cash12016 cash22016 cash32016 cash42016 cash12017 cash22017 cash32017 cash42017 cash12018 cash22018 cash32018 cash42018 cash12019 cash22019 cash32019 cash42019)
rename (PasCirMar2010ajustporin PasCirJun2010ajustporin PasCirSet2010ajustporin PasCirDez2010ajustporin PasCirMar2011ajustporin PasCirJun2011ajustporin PasCirSet2011ajustporin PasCirDez2011ajustporin PasCirMar2012ajustporin PasCirJun2012ajustporin PasCirSet2012ajustporin PasCirDez2012ajustporin PasCirMar2013ajustporin PasCirJun2013ajustporin PasCirSet2013ajustporin PasCirDez2013ajustporin PasCirMar2014ajustporin PasCirJun2014ajustporin PasCirSet2014ajustporin PasCirDez2014ajustporin PasCirMar2015ajustporin PasCirJun2015ajustporin PasCirSet2015ajustporin PasCirDez2015ajustporin PasCirMar2016ajustporin PasCirJun2016ajustporin PasCirSet2016ajustporin PasCirDez2016ajustporin PasCirMar2017ajustporin PasCirJun2017ajustporin PasCirSet2017ajustporin PasCirDez2017ajustporin PasCirMar2018ajustporin PasCirJun2018ajustporin PasCirSet2018ajustporin PasCirDez2018ajustporin PasCirMar2019ajustporin PasCirJun2019ajustporin PasCirSet2019ajustporin PasCirDez2019ajustporin) (pas_circ12010 pas_circ22010 pas_circ32010 pas_circ42010 pas_circ12011 pas_circ22011 pas_circ32011 pas_circ42011 pas_circ12012 pas_circ22012 pas_circ32012 pas_circ42012 pas_circ12013 pas_circ22013 pas_circ32013 pas_circ42013 pas_circ12014 pas_circ22014 pas_circ32014 pas_circ42014 pas_circ12015 pas_circ22015 pas_circ32015 pas_circ42015 pas_circ12016 pas_circ22016 pas_circ32016 pas_circ42016 pas_circ12017 pas_circ22017 pas_circ32017 pas_circ42017 pas_circ12018 pas_circ22018 pas_circ32018 pas_circ42018 pas_circ12019 pas_circ22019 pas_circ32019 pas_circ42019)
rename (TotEmFiCPMar2010ajustpor TotEmFiCPJun2010ajustpor TotEmFiCPSet2010ajustpor TotEmFiCPDez2010ajustpor TotEmFiCPMar2011ajustpor TotEmFiCPJun2011ajustpor TotEmFiCPSet2011ajustpor TotEmFiCPDez2011ajustpor TotEmFiCPMar2012ajustpor TotEmFiCPJun2012ajustpor TotEmFiCPSet2012ajustpor TotEmFiCPDez2012ajustpor TotEmFiCPMar2013ajustpor TotEmFiCPJun2013ajustpor TotEmFiCPSet2013ajustpor TotEmFiCPDez2013ajustpor TotEmFiCPMar2014ajustpor TotEmFiCPJun2014ajustpor TotEmFiCPSet2014ajustpor TotEmFiCPDez2014ajustpor TotEmFiCPMar2015ajustpor TotEmFiCPJun2015ajustpor TotEmFiCPSet2015ajustpor TotEmFiCPDez2015ajustpor TotEmFiCPMar2016ajustpor TotEmFiCPJun2016ajustpor TotEmFiCPSet2016ajustpor TotEmFiCPDez2016ajustpor TotEmFiCPMar2017ajustpor TotEmFiCPJun2017ajustpor TotEmFiCPSet2017ajustpor TotEmFiCPDez2017ajustpor TotEmFiCPMar2018ajustpor TotEmFiCPJun2018ajustpor TotEmFiCPSet2018ajustpor TotEmFiCPDez2018ajustpor TotEmFiCPMar2019ajustpor TotEmFiCPJun2019ajustpor TotEmFiCPSet2019ajustpor TotEmFiCPDez2019ajustpor) (emprest12010 emprest22010 emprest32010 emprest42010 emprest12011 emprest22011 emprest32011 emprest42011 emprest12012 emprest22012 emprest32012 emprest42012 emprest12013 emprest22013 emprest32013 emprest42013 emprest12014 emprest22014 emprest32014 emprest42014 emprest12015 emprest22015 emprest32015 emprest42015 emprest12016 emprest22016 emprest32016 emprest42016 emprest12017 emprest22017 emprest32017 emprest42017 emprest12018 emprest22018 emprest32018 emprest42018 emprest12019 emprest22019 emprest32019 emprest42019)
rename (TotEmFiLPMar2010ajustpor TotEmFiLPJun2010ajustpor TotEmFiLPSet2010ajustpor TotEmFiLPDez2010ajustpor TotEmFiLPMar2011ajustpor TotEmFiLPJun2011ajustpor TotEmFiLPSet2011ajustpor TotEmFiLPDez2011ajustpor TotEmFiLPMar2012ajustpor TotEmFiLPJun2012ajustpor TotEmFiLPSet2012ajustpor TotEmFiLPDez2012ajustpor TotEmFiLPMar2013ajustpor TotEmFiLPJun2013ajustpor TotEmFiLPSet2013ajustpor TotEmFiLPDez2013ajustpor TotEmFiLPMar2014ajustpor TotEmFiLPJun2014ajustpor TotEmFiLPSet2014ajustpor TotEmFiLPDez2014ajustpor TotEmFiLPMar2015ajustpor TotEmFiLPJun2015ajustpor TotEmFiLPSet2015ajustpor TotEmFiLPDez2015ajustpor TotEmFiLPMar2016ajustpor TotEmFiLPJun2016ajustpor TotEmFiLPSet2016ajustpor TotEmFiLPDez2016ajustpor TotEmFiLPMar2017ajustpor TotEmFiLPJun2017ajustpor TotEmFiLPSet2017ajustpor TotEmFiLPDez2017ajustpor TotEmFiLPMar2018ajustpor TotEmFiLPJun2018ajustpor TotEmFiLPSet2018ajustpor TotEmFiLPDez2018ajustpor TotEmFiLPMar2019ajustpor TotEmFiLPJun2019ajustpor TotEmFiLPSet2019ajustpor TotEmFiLPDez2019ajustpor) (emprestLP12010 emprestLP22010 emprestLP32010 emprestLP42010 emprestLP12011 emprestLP22011 emprestLP32011 emprestLP42011 emprestLP12012 emprestLP22012 emprestLP32012 emprestLP42012 emprestLP12013 emprestLP22013 emprestLP32013 emprestLP42013 emprestLP12014 emprestLP22014 emprestLP32014 emprestLP42014 emprestLP12015 emprestLP22015 emprestLP32015 emprestLP42015 emprestLP12016 emprestLP22016 emprestLP32016 emprestLP42016 emprestLP12017 emprestLP22017 emprestLP32017 emprestLP42017 emprestLP12018 emprestLP22018 emprestLP32018 emprestLP42018 emprestLP12019 emprestLP22019 emprestLP32019 emprestLP42019)
rename (DeprAmorMar2010ajustpor DeprAmorJun2010ajustpor DeprAmorSet2010ajustpor DeprAmorDez2010ajustpor DeprAmorMar2011ajustpor DeprAmorJun2011ajustpor DeprAmorSet2011ajustpor DeprAmorDez2011ajustpor DeprAmorMar2012ajustpor DeprAmorJun2012ajustpor DeprAmorSet2012ajustpor DeprAmorDez2012ajustpor DeprAmorMar2013ajustpor DeprAmorJun2013ajustpor DeprAmorSet2013ajustpor DeprAmorDez2013ajustpor DeprAmorMar2014ajustpor DeprAmorJun2014ajustpor DeprAmorSet2014ajustpor DeprAmorDez2014ajustpor DeprAmorMar2015ajustpor DeprAmorJun2015ajustpor DeprAmorSet2015ajustpor DeprAmorDez2015ajustpor DeprAmorMar2016ajustpor DeprAmorJun2016ajustpor DeprAmorSet2016ajustpor DeprAmorDez2016ajustpor DeprAmorMar2017ajustpor DeprAmorJun2017ajustpor DeprAmorSet2017ajustpor DeprAmorDez2017ajustpor DeprAmorMar2018ajustpor DeprAmorJun2018ajustpor DeprAmorSet2018ajustpor DeprAmorDez2018ajustpor DeprAmorMar2019ajustpor DeprAmorJun2019ajustpor DeprAmorSet2019ajustpor DeprAmorDez2019ajustpor) (deprec12010 deprec22010 deprec32010 deprec42010 deprec12011 deprec22011 deprec32011 deprec42011 deprec12012 deprec22012 deprec32012 deprec42012 deprec12013 deprec22013 deprec32013 deprec42013 deprec12014 deprec22014 deprec32014 deprec42014 deprec12015 deprec22015 deprec32015 deprec42015 deprec12016 deprec22016 deprec32016 deprec42016 deprec12017 deprec22017 deprec32017 deprec42017 deprec12018 deprec22018 deprec32018 deprec42018 deprec12019 deprec22019 deprec32019 deprec42019)
rename ( EBITMar2010ajustporinfl EBITJun2010ajustporinfl EBITSet2010ajustporinfl EBITDez2010ajustporinfl EBITMar2011ajustporinfl EBITJun2011ajustporinfl EBITSet2011ajustporinfl EBITDez2011ajustporinfl EBITMar2012ajustporinfl EBITJun2012ajustporinfl EBITSet2012ajustporinfl EBITDez2012ajustporinfl EBITMar2013ajustporinfl EBITJun2013ajustporinfl EBITSet2013ajustporinfl EBITDez2013ajustporinfl EBITMar2014ajustporinfl EBITJun2014ajustporinfl EBITSet2014ajustporinfl EBITDez2014ajustporinfl EBITMar2015ajustporinfl EBITJun2015ajustporinfl EBITSet2015ajustporinfl EBITDez2015ajustporinfl EBITMar2016ajustporinfl EBITJun2016ajustporinfl EBITSet2016ajustporinfl EBITDez2016ajustporinfl EBITMar2017ajustporinfl EBITJun2017ajustporinfl EBITSet2017ajustporinfl EBITDez2017ajustporinfl EBITMar2018ajustporinfl EBITJun2018ajustporinfl EBITSet2018ajustporinfl EBITDez2018ajustporinfl EBITMar2019ajustporinfl EBITJun2019ajustporinfl EBITSet2019ajustporinfl EBITDez2019ajustporinfl) (ebit12010 ebit22010 ebit32010 ebit42010 ebit12011 ebit22011 ebit32011 ebit42011 ebit12012 ebit22012 ebit32012 ebit42012 ebit12013 ebit22013 ebit32013 ebit42013 ebit12014 ebit22014 ebit32014 ebit42014 ebit12015 ebit22015 ebit32015 ebit42015 ebit12016 ebit22016 ebit32016 ebit42016 ebit12017 ebit22017 ebit32017 ebit42017 ebit12018 ebit22018 ebit32018 ebit42018 ebit12019 ebit22019 ebit32019 ebit42019)

** Transformar em modelo de banco de dados em painel
reshape long at crcp crlp imob pl receita lucro_liquido fco roa valor_mercado at_circ cash pas_circ emprest emprestLP deprec ebit, i(Código) j(tri_ano)

** Excluir variaveis desnecessarias 
drop Classe BolsaFonte TipodeAtivo AtivoCancelado H I A

** Codificar variaveis qualitativas 
encode  Código, gen (ticker)
encode  Nome, gen (companhia)
encode  SubsetorBovespa, gen (subsetor_b3)
encode  SetorEconômicoBovespa, gen (setor)

* Excluir variaveis codificadas 
drop Código Nome SubsetorBovespa SetorEconômicoBovespa

** Substituir "-" por valores ausentes 
replace at = "" if at== "-"
replace crcp = "" if crcp == "-"
replace crlp = "" if crlp == "-"
replace imob = "" if imob == "-"
replace pl = "" if pl == "-"
replace receita = "" if receita == "-"
replace lucro_liquido = "" if lucro_liquido == "-"
replace fco = "" if fco == "-"
replace roa = "" if roa == "-"
replace valor_mercado = "" if valor_mercado == "-"
replace at_circ = "" if at_circ == "-"
replace cash = "" if cash == "-"
replace pas_circ = "" if pas_circ == "-"
replace emprest = "" if emprest == "-"
replace deprec = "" if deprec == "-"
replace ebit = "" if ebit == "-"
replace emprestLP = "" if emprestLP == "-"

**Transformar variáveis do formato texto para o formato numérico (substituir a mesma variavel)
destring at, replace
destring crcp, replace
destring crlp, replace
destring imob, replace
destring pl, replace
destring receita, replace
destring lucro_liquido, replace
destring fco, replace
destring roa, replace
destring valor_mercado, replace
destring at_circ, replace
destring cash, replace
destring pas_circ, replace
destring emprest, replace
destring emprestLP, replace
destring deprec, replace
destring ebit, replace

** Filtro para organizar a sequencia dos trimestres no ano
*Gerar a variavel ano em string 
tostring tri_ano, gen (str_ano) 
* Dividir a variavel ano em trimestre e ano 
gen trimestre = substr( str_ano ,1,1)
gen anos = substr( str_ano ,-4,4)
drop str_ano

*** Apagar setores com menos de 20 observacoes por periodo
drop if setor == 2
drop if setor == 6
drop if setor == 8

*** Apagar empresas com PL negativo 
drop if pl < 0

*** Modelos de Variaveis Earnings Management

*** Income smoothing 1
**Organizar dados
sort ticker anos trimestre
** Criar variáveis escalonadas e defasadas
by ticker: gen at_lag = at[_n-1]
by ticker: gen lo_at =  ebit/ at_lag
by ticker: gen lo_at_lag = lo_at[_n-1]  
by ticker: gen fco_at =  fco/ at_lag
by ticker: gen fco_at_lag = fco_at[_n-1]
**Gerar consructo Leuz et al.(2003) IS1
** Gerar desvio-padrão
by ticker: gen sd_lo = sqrt(((((lo_at - (( lo_at + lo_at_lag)/2))^2)+((lo_at_lag- (( lo_at + lo_at_lag)/2))^2))/2))
by ticker: gen sd_fco = sqrt(((((fco_at - (( fco_at + fco_at _lag)/2))^2)+((fco_at_lag - ((fco_at + fco_at_lag)/2))^2))/2))
** Variavel Income Smoothing 1
by ticker: gen is1 = sd_fco/sd_lo

*** Winsorizando variáveis 
winsor2 is1, suffix (_w) cuts (5 95)

*** Income smoothing 2 
** Instalar pacote 
*ssc install egenmore
**Organizar os dados
sort ticker anos trimestre
**Gerar variaveis
* Accruals conforme Filip (2014) para o modelo de Leuz et al (2003)
by ticker: gen accruals_leuz = lo_at - fco_at
* Variacao 
by ticker: gen var_acc_leuz = accruals_leuz - accruals_leuz[_n-1]
by ticker: gen var_fco = fco_at - fco_at_lag
* Gerar consructo Leuz et al.(2003) IS2
sort setor anos trimestre
egen is = corr(var_acc_leuz var_fco),spearman by( setor anos trimestre)
* The Spearman coefficient was multiplied by −1 so that higher IS2 scores reflect higher level of income smoothing (Filip & Raffournier, 2014)
gen is2 = is*-1

*** Salvar banco de dados
*save "C:\Users\Helison\Desktop\bd_leuz.dta", replace

** Accrual quality Jones 1 
** Criando variaveis do modelo
* Organizar os dados
sort ticker anos trimestre
**Gerar variavel dependente 
by ticker: gen var_ac = at_circ - at_circ[_n-1]
by ticker: gen var_cash = cash - cash[_n-1]
by ticker: gen var_pc = pas_circ - pas_circ[_n-1]
by ticker: gen var_fin = emprest - emprest[_n-1]
by ticker: gen acc_ = (var_ac - var_cash) - (var_pc - var_fin) - deprec
by ticker: gen acc_quality = acc_/at[_n-1]

**Gerar variaveis independentes
* Organizar os dados
sort ticker anos trimestre
* Gerar alfa1
by ticker: gen jones1_a1= 1/at[_n-1]

*Gerar alfa2
by ticker: gen var_rev = receita - receita[_n-1]
by ticker: gen rec = crcp + crlp
by ticker: gen var_rec = rec - rec[_n-1]
by ticker: gen jones1_a2= (var_rev -var_rec)/at[_n-1]

*Gerar alfa3
 by ticker: gen jones1_a3= (imob/at[_n-1])
 
 *Gerar alfa4
 by ticker: gen roa_= (roa/100)
  by ticker: gen jones1_a4= roa_[_n-1]
 
 *Gerar variavel ano com inteira 
 destring anos, replace
 
 * Codificando variavel trimestre_ano pra gerar a regressao por trimestre 
gen t_ano = 1 if tri_ano == 12011
replace t_ano = 2 if tri_ano == 22011
replace t_ano = 3 if tri_ano == 32011
replace t_ano = 4 if tri_ano == 42011
replace t_ano = 5 if tri_ano == 12012
replace t_ano = 6 if tri_ano == 22012
replace t_ano = 7 if tri_ano == 32012
replace t_ano = 8 if tri_ano == 42012
replace t_ano = 9 if tri_ano == 12013
replace t_ano = 10 if tri_ano == 22013
replace t_ano = 11 if tri_ano == 32013
replace t_ano = 12 if tri_ano == 42013
replace t_ano = 13 if tri_ano == 12014
replace t_ano = 14 if tri_ano == 22014
replace t_ano = 15 if tri_ano == 32014
replace t_ano = 16 if tri_ano == 42014
replace t_ano = 17 if tri_ano == 12015
replace t_ano = 18 if tri_ano == 22015
replace t_ano = 19 if tri_ano == 32015
replace t_ano = 20 if tri_ano == 42015
replace t_ano = 21 if tri_ano == 12016
replace t_ano = 22 if tri_ano == 22016
replace t_ano = 23 if tri_ano == 32016
replace t_ano = 24 if tri_ano == 42016
replace t_ano = 25 if tri_ano == 12017
replace t_ano = 26 if tri_ano == 22017
replace t_ano = 27 if tri_ano == 32017
replace t_ano = 28 if tri_ano == 42017
replace t_ano = 29 if tri_ano == 12018
replace t_ano = 30 if tri_ano == 22018
replace t_ano = 31 if tri_ano == 32018
replace t_ano = 32 if tri_ano == 42018
replace t_ano = 33 if tri_ano == 12019
replace t_ano = 34 if tri_ano == 22019
replace t_ano = 35 if tri_ano == 32019
replace t_ano = 36 if tri_ano == 42019

*** Criando grupo de setores 
egen setores = group(setor)

 * Gerar modelo 
gen jones1=.
forval y = 1(1) 36{
 forval i = 1(1) 6{
 display `y'
 display `i'
 qui reg acc_quality jones1_a1 jones1_a2 jones1_a3 jones1_a4 if `y' == t_ano & `i' == setores,
 predict r if `y' == t_ano & `i' == setores, resid
 replace jones1 = r if `y' == t_ano & `i' == setores
 drop r
 }
 }
** JONES1, represents the standard deviation of the residuals from the modified Jones model 
sort ticker anos trimestre
by ticker: gen sd_jones1 = sqrt(((((jones1- (( jones1 + jones1[_n-1])/2))^2)+((jones1[_n-1] - (( jones1 + jones1[_n-1])/2))^2))/2))

** Accrual quality Jones 2 
* Criar variaveis adicionais ao modelo jones1
* Organizar os dados
sort ticker anos trimestre
* Gerar alfa1
by ticker: gen jones2_a1= 1/at[_n-1]

*Gerar alfa2
by ticker: gen jones2_a2= (var_rev -var_rec)/at[_n-1]

*Gerar alfa3
by ticker: gen jones2_a3= (imob/at[_n-1])
 
*Gerar alfa4 
by ticker: gen jones2_a4 = pl/valor_mercado

* Gerar alfa5
by ticker: gen jones2_a5= fco/at[_n-1]

* Gerar modelo
gen jones2=.
forval y = 1(1) 36{
 forval i = 1(1) 6{
 display `y'
 display `i'
 qui reg acc_quality jones2_a1 jones2_a2 jones2_a3 jones2_a4 jones2_a5 if `y' == t_ano & `i' == setores,
 predict r if `y' == t_ano & `i' == setores, resid
 replace jones2 = r if `y' == t_ano & `i' == setores
 drop r
 }
 }
 ** Un-standardized residuals from Eq. (2) represent an alternative proxy for discretionary accruals, and JONES2 represents the standard deviation of these residuals.
sort ticker anos trimestre
by ticker: gen sd_jones2 = sqrt(((((jones2- (( jones2 + jones2[_n-1])/2))^2)+((jones2[_n-1] - (( jones2 + jones2[_n-1])/2))^2))/2))

** Accrual quality DD
* Organizar os dados
sort ticker anos trimestre

* Gerar alfa1
by ticker: gen dd_a1= fco[_n-1]/at[_n-1]

* Gerar alfa2
by ticker: gen dd_a2= fco/at[_n-1]

* Gerar alfa3
by ticker: gen dd_a3= fco[_n+1]/at[_n-1]

* Gerar alfa4
by ticker: gen dd_a4=(var_rev -var_rec)/at[_n-1]

*Gerar alfa5
by ticker: gen dd_a5= (imob/at[_n-1])

* Gerar modelo
gen dd=.
forval y = 1(1) 35{
 forval i = 1(1) 6{
 display `y'
 display `i'
 qui reg acc_quality dd_a1 dd_a2 dd_a3 dd_a4 dd_a5 if `y' == t_ano & `i' == setores,
 predict r if `y' == t_ano & `i' == setores, resid
 replace dd = r if `y' == t_ano & `i' == setores
 drop r
 }
 }
*** Our metric DD represents the standard deviation of these residuals.
sort ticker anos trimestre
by ticker: gen sd_dd = sqrt(((((dd - (( dd + dd[_n-1])/2))^2)+((dd[_n-1] - (( dd + dd[_n-1])/2))^2))/2))

*** Gerar variaveis 
sort ticker anos trimestre

** Gerar tamanho 
gen tam = ln(at)

** Gerar alavancagem 
gen alav = (emprest + emprestLP) / at 

*** Apgar variaveis 
drop at crcp crlp imob pl valor_mercado at_circ cash pas_circ emprest emprestLP receita lucro_liquido fco deprec ebit companhia subsetor_b3 at_lag lo_at lo_at_lag fco_at fco_at_lag sd_lo sd_fco accruals_leuz var_acc_leuz var_fco var_ac var_cash var_pc var_fin acc_ acc_quality jones1_a1 var_rev rec var_rec jones1_a2 jones1_a3 roa_ jones1_a4 setores jones2_a1 jones2_a2 jones2_a3 jones2_a4 jones2_a5 dd_a1 dd_a2 dd_a3 dd_a4 dd_a5

*** Juntar bd income smoothing com bd accrual quality
*merge m:m tri_ano ticker using bd_leuz.dta
*drop _merge

*** Apagar anos 2010 e 2011
drop if anos == 2010
drop if anos == 2011

*** Tratar variáveis de interesse 
** Organizar os dados
sort ticker anos trimestre  

*** Juntar planilha 1 (PIB) com planilha 2 (Empresas)
merge m:m t_ano using bd_pib.dta

*** Ajustar escala do PIB
gen pib = PIB/100
drop PIB _merge Período

*** Paired t test: ttest pré_crise == crise, level (99) | bootstrap t=r(t), rep(1000): ttest pré_crise == crise, level(99)
* https://www.ime.usp.br/~sandoval/mae5755/comparacao_2medias_pareado.pdf
* https://statistics.laerd.com/stata-tutorials/paired-t-test-using-stata.php

*** Criando variável crise
gen crise  =  "Pré-Crise" if t_ano == 5
replace crise = "Pré-Crise" if t_ano ==  6
replace crise = "Pré-Crise" if t_ano ==  7
replace crise = "Pré-Crise" if t_ano ==  8
replace crise = "Pré-Crise" if t_ano ==  9
replace crise = "Pré-Crise" if t_ano ==  10
replace crise = "Pré-Crise" if t_ano ==  11
replace crise = "Pré-Crise" if t_ano ==  12
replace crise = "Pré-Crise" if t_ano ==  13
replace crise = "Pré-Crise" if t_ano ==  14
replace crise = "Pré-Crise" if t_ano ==  15
replace crise = "Pré-Crise" if t_ano ==  16
replace crise = "Crise" if t_ano ==  17
replace crise = "Crise" if t_ano ==  18
replace crise = "Crise" if t_ano ==  19
replace crise = "Crise" if t_ano ==  20
replace crise = "Crise" if t_ano ==  21
replace crise = "Crise" if t_ano ==  22
replace crise = "Crise" if t_ano ==  23
replace crise = "Crise" if t_ano ==  24
replace crise = "Pós-crise" if t_ano ==  25
replace crise = "Pós-crise" if t_ano ==  26
replace crise = "Pós-crise" if t_ano ==  27
replace crise = "Pós-crise" if t_ano ==  28
replace crise = "Pós-crise" if t_ano ==  29
replace crise = "Pós-crise" if t_ano ==  30
replace crise = "Pós-crise" if t_ano ==  31
replace crise = "Pós-crise" if t_ano ==  32
replace crise = "Pós-crise" if t_ano ==  33
replace crise = "Pós-crise" if t_ano ==  34
replace crise = "Pós-crise" if t_ano ==  35
replace crise = "Pós-crise" if t_ano ==  36

** Codificar variável crise 
encode crise, gen (crise_)
drop crise 

** Organizando a variável crise
gen crise  =  1 if crise_ == 2
replace crise = 2 if crise_ ==  1
replace crise = 3 if crise_ ==  3

*** Excluir dados missing 
drop if is1_w==.| is2==.| sd_jones1==.| sd_jones2==.|sd_dd==.

*** Salvar resultados em arquivo de texto
log using "C:\Users\Helison\Desktop\Mestrado Controladoria e Contabilidade\4. Submissões\SEMEAD\GR & Crise\result", text replace

*** Earnings management metrics by period
** Estatistica descritiva por ano
table anos, c(mean is1_w mean is2 mean sd_jones1 mean sd_jones2 mean sd_dd)
table anos, c(median is1_w median is2 median sd_jones1 median sd_jones2 median sd_dd)

** Estatistica descritiva por período
table crise_, c(mean is1_w mean is2 mean sd_jones1 mean sd_jones2 mean sd_dd)
table crise_, c(median is1_w median is2 median sd_jones1 median sd_jones2 median sd_dd)

*** Teste normalidade dos dados 
sfrancia is1_w is2 sd_jones1 sd_jones2 sd_dd
sktest is1_w is2 sd_jones1 sd_jones2 sd_dd
swilk is1_w is2 sd_jones1 sd_jones2 sd_dd

*************************** Pré-crise & crise **********************************
preserve 

drop if crise == 3

**************************************** Teste t - IS 1
*** Teste de variância 
sdtest is1_w, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is1_w, by(crise) unequal 
ttest is1_w, by(crise) unequal 
ranksum is1_w, by(crise)
median is1_w, by(crise)

**************************************** Teste t - IS 2 
*** Teste de variância 
sdtest is2, by (crise)

*** Gerar teste t presumindo variâncias diferentes  - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is2, by(crise) unequal
ttest is2, by(crise) unequal
ranksum is2, by(crise)
median is2, by(crise)

************************************** Teste t - Jones1
*** Teste de variância 
sdtest sd_jones1, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones1, by(crise) unequal 
ttest sd_jones1, by(crise) unequal 
ranksum sd_jones1, by(crise)
median sd_jones1, by(crise)

************************************** Teste t - Jones2
*** Teste de variância 
sdtest sd_jones2, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones2, by(crise) unequal
ttest sd_jones2, by(crise) unequal
ranksum sd_jones2, by(crise)
median sd_jones2, by(crise)

****************************************** Teste t - DD
*** Teste de variância 
sdtest sd_dd, by (crise)

*** Gerar teste t presumindo variâncias diferentes  - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_dd, by(crise) unequal 
ttest sd_dd, by(crise) unequal 
ranksum sd_dd, by(crise)
median sd_dd, by(crise)

restore

*************************** crise e pós-crise **********************************
preserve 

drop if crise == 1

**************************************** Teste t - IS 1 
*** Teste de variância 
sdtest is1_w, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is1_w, by(crise) unequal 
ttest is1_w, by(crise) unequal 
ranksum is1_w, by(crise)
median is1_w, by(crise)

**************************************** Teste t - IS 2 
*** Teste de variância 
sdtest is2, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is2, by(crise)
ttest is2, by(crise)
ranksum is2, by(crise)
median is2, by(crise)


************************************** Teste t - Jones1
*** Teste de variância 
sdtest sd_jones1, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones1, by(crise) 
ttest sd_jones1, by(crise) 
ranksum sd_jones1, by(crise)
median sd_jones1, by(crise)

************************************** Teste t - Jones2
*** Teste de variância 
sdtest sd_jones2, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones2, by(crise) unequal
ttest sd_jones2, by(crise) unequal
ranksum sd_jones2, by(crise)
median sd_jones2, by(crise)

****************************************** Teste t - DD
*** Teste de variância 
sdtest sd_dd, by (crise)

*** Gerar teste t presumindo variâncias diferentes  - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_dd, by(crise) unequal 
ttest sd_dd, by(crise) unequal 
ranksum sd_dd, by(crise)
median sd_dd, by(crise)

restore

*** Positive vs. negative discretionary accruals

gen pn_da = "Positivo" if jones1 >= 0 & jones2 >= 0 & dd >= 0
replace pn_da = "Negativo" if pn_da ==""

********************************************************************************
********************************************************************************
********************************** Negativo ************************************
********************************************************************************
********************************************************************************
preserve
drop if pn_da == "Positivo"

********************************************************************************
*************************** Pré-crise & crise **********************************
********************************************************************************

drop if crise == 3

**************************************** Teste t - IS 1
*** Teste de variância 
sdtest is1_w, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is1_w, by(crise) unequal 
ttest is1_w, by(crise) unequal 
ranksum is1_w, by(crise)
median is1_w, by(crise)

**************************************** Teste t - IS 2
*** Teste de variância 
sdtest is2, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is2, by(crise) unequal
ttest is2, by(crise) unequal
ranksum is2, by(crise)
median is2, by(crise)

************************************** Teste t - Jones1
*** Teste de variância 
sdtest sd_jones1, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones1, by(crise) unequal 
ttest sd_jones1, by(crise) unequal 
ranksum sd_jones1, by(crise)
median sd_jones1, by(crise)

************************************** Teste t - Jones2
*** Teste de variância 
sdtest sd_jones2, by (crise)

*** Gerar teste t presumindo variâncias diferentes  - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones2, by(crise) unequal 
ttest sd_jones2, by(crise) unequal 
ranksum sd_jones2, by(crise)
median sd_jones2, by(crise)

****************************************** Teste t - DD 
*** Teste de variância 
sdtest sd_dd, by (crise)

*** Gerar teste t presumindo variâncias diferentes  - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_dd, by(crise) unequal 
ttest sd_dd, by(crise) unequal 
ranksum sd_dd, by(crise)
median sd_dd, by(crise)

restore 

preserve
drop if pn_da == "Positivo"

********************************************************************************
*************************** crise e pós-crise **********************************
********************************************************************************
drop if crise == 1

**************************************** Teste t - IS 1 
*** Teste de variância 
sdtest is1_w, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is1_w, by(crise) unequal 
ttest is1_w, by(crise) unequal 
ranksum is1_w, by(crise)
median is1_w, by(crise)

**************************************** Teste t - IS 2
*** Teste de variância 
sdtest is2, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is2, by(crise)
ttest is2, by(crise)
ranksum is2, by(crise)
median is2, by(crise)
************************************** Teste t - Jones1
*** Teste de variância 
sdtest sd_jones1, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones1, by(crise)
ttest sd_jones1, by(crise) 
ranksum sd_jones1, by(crise)
median sd_jones1, by(crise)

************************************** Teste t - Jones2
*** Teste de variância 
sdtest sd_jones2, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones2, by(crise)
ttest sd_jones2, by(crise)
ranksum sd_jones2, by(crise)
median sd_jones2, by(crise)

****************************************** Teste t - DD
*** Teste de variância 
sdtest sd_dd, by (crise)

*** Gerar teste t presumindo variâncias iguais  - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_dd, by(crise)
ttest sd_dd, by(crise)
ranksum sd_dd, by(crise)
median sd_dd, by(crise)

restore

********************************************************************************
********************************************************************************
********************************** Positivo ************************************
********************************************************************************
********************************************************************************

preserve
drop if pn_da == "Negativo"

********************************************************************************
*************************** Pré-crise & crise **********************************
********************************************************************************

drop if crise == 3

**************************************** Teste t - IS 1
*** Teste de variância 
sdtest is1_w, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is1_w, by(crise)
ttest is1_w, by(crise)
ranksum is1_w, by(crise)
median is1_w, by(crise)

**************************************** Teste t - IS 2
*** Teste de variância 
sdtest is2, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is2, by(crise) unequal
ttest is2, by(crise) unequal
ranksum is2, by(crise)
median is2, by(crise)

************************************** Teste t - Jones1
*** Teste de variância 
sdtest sd_jones1, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones1, by(crise) unequal
ttest sd_jones1, by(crise) unequal
ranksum sd_jones1, by(crise)
median sd_jones1, by(crise)

************************************** Teste t - Jones2 
*** Teste de variância 
sdtest sd_jones2, by (crise)

*** Gerar teste t presumindo variâncias diferentes  - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones2, by(crise) unequal 
ttest sd_jones2, by(crise) unequal 
ranksum sd_jones2, by(crise)
median sd_jones2, by(crise)

****************************************** Teste t - DD
*** Teste de variância 
sdtest sd_dd, by (crise)
*** Gerar teste t presumindo variâncias diferentes - Difference
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_dd, by(crise) unequal
ttest sd_dd, by(crise) unequal
ranksum sd_dd, by(crise)
median sd_dd, by(crise)

restore 

preserve
drop if pn_da == "Negativo"

********************************************************************************
*************************** crise e pós-crise **********************************
********************************************************************************
drop if crise == 1

**************************************** Teste t - IS 1 
*** Teste de variância 
sdtest is1_w, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is1_w, by(crise)
ttest is1_w, by(crise) 
ranksum is1_w, by(crise)
median is1_w, by(crise)

**************************************** Teste t - IS 2
*** Teste de variância 
sdtest is2, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest is2, by(crise)
ttest is2, by(crise)
ranksum is2, by(crise)
median is2, by(crise)

************************************** Teste t - Jones1
*** Teste de variância 
sdtest sd_jones1, by (crise)

*** Gerar teste t presumindo variâncias iguais - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones1, by(crise) 
ttest sd_jones1, by(crise) 
ranksum sd_jones1, by(crise)
median sd_jones1, by(crise)

************************************** Teste t - Jones2
*** Teste de variância 
sdtest sd_jones2, by (crise)

*** Gerar teste t presumindo variâncias diferentes - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_jones2, by(crise) unequal
ttest sd_jones2, by(crise) unequal
ranksum sd_jones2, by(crise)
median sd_jones2, by(crise)

****************************************** Teste t - DD
*** Teste de variância 
sdtest sd_dd, by (crise)

*** Gerar teste t presumindo variâncias diferentes  - Difference 
*bootstrap t=r(t), rep(10000) strata(crise) size (100): ttest sd_dd, by(crise) unequal 
ttest sd_dd, by(crise) unequal 
ranksum sd_dd, by(crise)
median sd_dd, by(crise)

restore


********************************************************************************
************************** Modelos de regressão GLS ****************************
********************************************************************************

*** Informar que e painel 
tsset ticker tri_ano

*** Rodar modelo considerando hetero e autocorr para cada medicao GR

xtgls is1_w pib tam alav roa, igls panels(heteroskedastic) corr(ar1) force
xtgls is2 pib tam alav roa, igls panels(heteroskedastic) corr(ar1) force
xtgls sd_jones1 pib tam alav roa, igls panels(heteroskedastic) corr(ar1) force
xtgls sd_jones2 pib tam alav roa, igls panels(heteroskedastic) corr(ar1) force
xtgls sd_dd pib tam alav roa, igls panels(heteroskedastic) corr(ar1) force









