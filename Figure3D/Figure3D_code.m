% Figure 3D: Learning T1 vs. Learning TBest

%% load data for plotting
load("Learning_T1_data.mat");
load("Learning_TBest_data.mat");

%% plot

% colors
yellow = [0.9216 0.7608 0.3922]; % MA
purple = [0.4471 0.1529 0.6314]; % MF
teal = [0.3176 0.6706 0.6706]; % MM

%
figure

plot(Learning_TBest_data(:),Learning_T1_data(:),'.', 'Color', 'k', 'MarkerSize', 5)
hold on
lsline
hold on

% bird 1
h1 = plot(Learning_TBest_data(1,1), Learning_T1_data(1,1), 'o', 'MarkerFaceColor', yellow, ...
    'MarkerEdgeColor',yellow, 'LineWidth', 2, 'Color', yellow,'MarkerSize', 6); 
hold on
h2 = plot(Learning_TBest_data(1,2), Learning_T1_data(1,2), 'o', 'MarkerFaceColor', purple, ...
    'MarkerEdgeColor',purple, 'LineWidth', 2, 'Color', purple,'MarkerSize', 6); 
hold on
h3 = plot(Learning_TBest_data(1,3), Learning_T1_data(1,3), 'o', 'MarkerFaceColor', teal, ...
    'MarkerEdgeColor',teal, 'LineWidth', 2, 'Color', teal,'MarkerSize', 6); 
hold on

% bird 2
h4 = plot(Learning_TBest_data(2,1),Learning_T1_data(2,1),'square', 'MarkerFaceColor', yellow, ...
    'MarkerEdgeColor',yellow, 'LineWidth', 2, 'Color', yellow,'MarkerSize', 6); 
hold on
h5 = plot(Learning_TBest_data(2,2),Learning_T1_data(2,2), 'square', 'MarkerFaceColor', purple, ...
    'MarkerEdgeColor',purple, 'LineWidth', 2, 'Color', purple,'MarkerSize', 6); 
hold on
h6 = plot(Learning_TBest_data(2,3),Learning_T1_data(2,3), 'square', 'MarkerFaceColor', teal, ...
    'MarkerEdgeColor',teal, 'LineWidth', 2, 'Color', teal,'MarkerSize', 6); 
hold on

% bird 3
h7 = plot(Learning_TBest_data(3,1),Learning_T1_data(3,1), 'x', 'MarkerFaceColor', yellow, ...
    'MarkerEdgeColor',yellow, 'LineWidth', 2, 'Color', yellow,'MarkerSize', 8); 
hold on
h8 = plot(Learning_TBest_data(3,2),Learning_T1_data(3,2), 'x', 'MarkerFaceColor', purple, ...
    'MarkerEdgeColor',purple, 'LineWidth', 2, 'Color', purple,'MarkerSize', 8); 
hold on
h9 = plot(Learning_TBest_data(3,3),Learning_T1_data(3,3), 'x', 'MarkerFaceColor', teal, ...
    'MarkerEdgeColor',teal, 'LineWidth', 2, 'Color', teal,'MarkerSize', 8); 
hold on

% bird 4
h10 = plot(Learning_TBest_data(4,1),Learning_T1_data(4,1), '^', 'MarkerFaceColor', yellow, ...
    'MarkerEdgeColor',yellow, 'LineWidth', 2, 'Color', yellow,'MarkerSize', 6); 
hold on
h11 = plot(Learning_TBest_data(4,2),Learning_T1_data(4,2), '^', 'MarkerFaceColor', purple, ...
    'MarkerEdgeColor',purple, 'LineWidth', 2, 'Color', purple,'MarkerSize', 6); 
hold on
h12 = plot(Learning_TBest_data(4,3),Learning_T1_data(4,3), '^', 'MarkerFaceColor', teal, ...
    'MarkerEdgeColor',teal, 'LineWidth', 2, 'Color', teal,'MarkerSize', 6); 
hold on

% bird 5
h13 = plot(Learning_TBest_data(5,1),Learning_T1_data(5,1), 'pentagram', 'MarkerFaceColor', yellow, ...
    'MarkerEdgeColor',yellow, 'LineWidth', 2, 'Color', yellow,'MarkerSize', 6); 
hold on
h14 = plot(Learning_TBest_data(5,2),Learning_T1_data(5,2), 'pentagram', 'MarkerFaceColor', purple, ...
    'MarkerEdgeColor',purple, 'LineWidth', 2, 'Color', purple,'MarkerSize', 6); 
hold on
h15 = plot(Learning_TBest_data(5,3),Learning_T1_data(5,3), 'pentagram', 'MarkerFaceColor', teal, ...
    'MarkerEdgeColor',teal, 'LineWidth', 2, 'Color', teal,'MarkerSize', 6); 
hold on

% bird 6
h16 = plot(Learning_TBest_data(6,1),Learning_T1_data(6,1), 'v', 'MarkerFaceColor', yellow, ...
    'MarkerEdgeColor',yellow, 'LineWidth', 2, 'Color', yellow,'MarkerSize', 6); 
hold on
h17 = plot(Learning_TBest_data(6,2),Learning_T1_data(6,2), 'v', 'MarkerFaceColor', purple, ...
    'MarkerEdgeColor',purple, 'LineWidth', 2, 'Color', purple,'MarkerSize', 6); 
hold on
h17 = plot(Learning_TBest_data(6,3),Learning_T1_data(6,3), 'v', 'MarkerFaceColor', teal, ...
    'MarkerEdgeColor',teal, 'LineWidth', 2, 'Color', teal,'MarkerSize', 6); 
hold on

% axes lables
set(gca,'LineWidth',2)
set(gca,'FontSize',12)

ylabel('Learning T1 [%]','FontSize',16)
xlabel('Learning TBest [%]','FontSize',16)

box off





