% Figure 1B Degree of Learning per Order of Social Contexts experienced

%% load data for data points in plot
load("Fig3B_b1_order.mat");
load("Fig3B_b2_order.mat");
load("Fig3B_b3_order.mat");
load("Fig3B_b4_order.mat");
load("Fig3B_b5_order.mat");
load("Fig3B_b6_order.mat");

%% plot
figure
plot(b1_order(1,:), 'o-', 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor',[0 0 0],'MarkerSize',6, 'LineWidth', 0.5, 'Color', [0 0 0]) 
hold on
plot(b2_order(1,:), 'square-', 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor',[0 0 0],'MarkerSize',6, 'LineWidth', 0.5, 'Color', [0 0 0]) 
hold on
plot(b3_order(1,:), 'x-', 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor',[0 0 0],'MarkerSize',8, 'LineWidth', 0.5, 'Color', [0 0 0])  
hold on
plot(b4_order(1,:), '^-', 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor',[0 0 0],'MarkerSize',6, 'LineWidth', 0.5, 'Color', [0 0 0]) 
hold on
plot(b5_order(1,:), 'pentagram-', 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor',[0 0 0],'MarkerSize',7, 'LineWidth', 0.5, 'Color', [0 0 0]) 
hold on
plot(b6_order(1,:), 'v-', 'MarkerFaceColor', [0 0 0], ...
    'MarkerEdgeColor',[0 0 0],'MarkerSize',6, 'LineWidth', 0.5, 'Color', [0 0 0]) 

ylabel('Learning [%]')
ylim([0 100])
yticks(0:10:100)

xlabel('Order of Social Context')
xticks(1:1:3)
set(gca, 'xticklabel',({'1.', '2.', '3.'}), 'FontSize', 16)
axis padded
set(gca,'LineWidth',1)

box off;
