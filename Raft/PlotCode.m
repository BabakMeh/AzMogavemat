%% آزمایش پیچش در حالت رفت و واحد انگلیسی
tRBr = [750
1250
1750
2250
2750
3250
3750
4250
];
RoR = [0.034906
0.043633
0.05236
0.07854
0.095993
0.113446
0.122173
0.1309
];
pRBr = polyfit(RoR , tRBr, 1);
y1RBr = polyval(pRBr,RoR);
plot(RoR,tRBr,"--or")
hold on
plot(RoR,y1RBr,"-b")
legend('Original Data', 'Polyfit- n=1')
title('نمودار ممان پیچشی بر حسب زاویه پیچش')
xlabel('φ(Rad)')
ylabel('T(Kgf.cm^2)')
%% آزمایش پیچش در حالت رفت(SI)
TRSI = [73.95
123.25
172.55
221.85
271.15
320.45
369.75
419.05
];
RoR = [0.034906
0.043633
0.05236
0.07854
0.095993
0.113446
0.122173
0.1309
];
pRSI = polyfit(RoR , TRSI, 1);
y1RSI = polyval(pRSI,RoR);
plot(RoR,TRSI,"--or")
hold on
plot(RoR,y1RSI,"-b")
legend('Original Data', 'Polyfit- n=1')
title('نمودار ممان پیچشی بر حسب زاویه پیچش')
xlabel('φ(Rad)')
ylabel('T(N.m)')
