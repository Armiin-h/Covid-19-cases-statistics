save mdata
clear all
y1 = [0 0 0 0 0 0 0 0 0 2 8 22 26 5 51 35 38 59 283 125 130 240 184 341 401 779 930 924 1214 1459 2095 2960 2993 4528 2516 2509 4183 3935 4332 6615 6933 6824 4740 4450 4923 6173 6813 6365 4933 4031 3252 4288 5633 4939 3936 3281 2402 2218 2138 2543 2945 3699 2327 2018 1323 1388 2195 2481 1870 1514 1257 988 1154 1627 1470 1068 890 697 488 855 1155 1268 1158 736 555 697 595 927 877 724 545 407 638 538 704];
y2 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 3 6 8 9 13 17 26 28 44 68 84 94 123 159 206 267 351 433 541 645 775 931 1107 1275 1444 1584 1810 2016 2349 2607 2736 2871 3022 3194 3495 3804 4052 4352 4538 4642 4862 5086 5315 5575 5760 5877 5976 6126 6314 6467 6623 6736 6812 6866 6993 6993 7275 7392 7510 7549 7569 7661 7738 7861 7928 8001 8027 8049 8123 8193 8270];
y3 = [0 4 2 0 4 1 0 0 0 1 0 1 0 0 0 0 0 0 1 1 0 0 0 0 7 0 21 0 0 21 0 38 10 65 29 57 187 2837 257 2126 985 1823 730 4289 2600 2600 3740 2135 1825 2300 0 7381 10219 6107 1506 3487 2900 4000 3900 4400 4400 6114 2286 2600 3500 3700 4200 3900 3500 3000 2200 2500 2900 3000 3100 3400 2100 1600 2100 2400 2596 2204 1800 1600 1100 1217 1583 1500 1600 1400 900 800 1200 1100 1200];
ts1 = timeseries(y1,1:95);
ts2 = timeseries(y2,1:95);
ts3 = timeseries(y3,1:95);
ts1.TimeInfo.Units = 'days';
ts1.TimeInfo.StartDate = '15-Feb-2020';    
ts1.TimeInfo.Format = 'mmm dd, yy';     
ts1.Time = ts1.Time - ts1.Time(1);
ts2.TimeInfo.Units = 'days';
ts2.TimeInfo.StartDate = '15-Feb-2020';    
ts2.TimeInfo.Format = 'mmm dd, yy';       
ts2.Time = ts2.Time - ts2.Time(1);
ts3.TimeInfo.Units = 'days';
ts3.TimeInfo.StartDate = '15-Feb-2020';     
ts3.TimeInfo.Format = 'mmm dd, yy';      
ts3.Time = ts3.Time - ts3.Time(1);
plot(ts1,'--');hold on
plot(ts2,'-');hold on
plot(ts3,':','Color',[0 0 1]);
xlabel('Date')
ylabel({'Logarithmic Scale of Daily Cases ','(infected , Death & Recovered)'},'FontWeight','bold','FontName','Calibri')
legend('Infected daily Cases','Total Death daily Cases','Recovered Cases')
title('CoronaVirus Logarithmic Scale Graph of Germany','LineStyle','--','EdgeColor',[0 0 1],'FontAngle','italic','FontName','Calibri','Interpreter','none')
annotation('textbox',[0.0116692531522793 0 0.0911435499515034 0.26984126984127],'Color',[1 0 0],'String',{'P.s : This Statics','Were Announced','By The Federal Ministry of Health of Germany ','government.','Therefore we can','not Confirm or','Deny It.'},'FontSize',8,'FontName','Calibri','FitBoxToText','off','EdgeColor',[1 1 1],'BackgroundColor',[1 1 1]);
clear all
load mdata 