%% آزمایش پیچش در حالت برگشت و واحد انگلیسی
tBBr = [4250
3750
3250
2750
2250
1750
1250
750
];
RoB = [0.113446
0.095991
0.069812
0.061086
0.043632
0.034906
0.017453
0.008726
];
pBBr = polyfit(RoB , tBBr, 1);
y1BBr = polyval(pBBr,RoB);
plot(RoB,tBBr,"--or")
hold on
plot(RoB,y1BBr,"-b")
legend('Original Data', 'Polyfit- n=1')
title('نمودار ممان پیچشی بر حسب زاویه پیچش')
xlabel('φ(Rad)')
ylabel('T(Kgf.cm^2)')
%% آزمایش پیچش در حالت برگشت (SI)
tBSI = [419.05
369.75
320.45
271.15
221.85
172.55
123.25
73.95
];
RoB;
pBSI = polyfit(RoB , tBSI, 1);
y1BSI = polyval(pBSI,RoB);
plot(RoB,tBSI,"--or")
hold on
plot(RoB,y1BSI,"-b")
legend('Original Data', 'Polyfit- n=1')
title('نمودار ممان پیچشی بر حسب زاویه پیچش')
xlabel('φ(Rad)')
ylabel('T(N.m)')
%% Error Bargasht
ErrorB = [-13.3
-18.1
-40.8
-36.1
-55.6
-51.6
-116
-160
];
bar (ErrorB, 'red')
legend('Error')
title ('نمودار خطا بر حسب مرحله آزمایش')
xlabel('Step')
ylabel('Error(%)')
