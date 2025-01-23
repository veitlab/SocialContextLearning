% Fig 2D: Learning curves of bird 1

%% load data for plotting
load("MA_scr_train_order_BP_target");
load("MA_scr_train_order_BP_alternative");

load("MF_scr_train_order_BP_target");
load("MF_scr_train_order_BP_alternative");

load("MM_scr_train_order_BP_target");
load("MM_scr_train_order_BP_alternative");

%% plot: MF Social Context
figure
plot(MF_scr_train_order_x_to_a(1,:), 'o-', 'MarkerFaceColor', [0.6350 0.0780 0.1840], ...
    'MarkerEdgeColor',[0.6350 0.0780 0.1840], 'LineWidth', 2, 'Color', [0.6350 0.0780 0.1840]) % red
hold on
plot(MF_scr_train_order_x_to_l(1,:), 'o-', 'MarkerFaceColor', [0 0.4470 0.7410], 'MarkerEdgeColor',...
    [0 0.4470 0.7410], 'LineWidth', 2, 'Color', [0 0.4470 0.7410]) % blue 
hold on

ylim([0 100]);
ylabel('Transition Probability [%]');
yline(MF_scr_train_order_x_to_a(1,1),'k--','LineWidth',1, 'Color', [0.6350 0.0780 0.1840]); 
yline(MF_scr_train_order_x_to_l(1,1),'k--','LineWidth',1, 'Color', [0 0.4470 0.7410]); 

xticks(1:1:length(MF_scr_train_order_x_to_a));
xticklabels({'BS','T1','T2','T3','T4','PS1','PS2','PS3'}); 
xline(1.5,'k-','LineWidth',1); 
xline(5.5,'k-','LineWidth',1); 
xlim('padded');

title('1. Training (Context: MF)');

lgd = legend({'x - a', 'x - l'});
title(lgd, 'Syllable Transitions');
box off;

set(gca, 'ytick', 0:20:100);


%% plot: MA Social Context
figure
plot(MA_scr_train_order_x_to_a(1,:), 'o-', 'MarkerFaceColor', [0.6350 0.0780 0.1840], ...
    'MarkerEdgeColor',[0.6350 0.0780 0.1840], 'LineWidth', 2, 'Color', [0.6350 0.0780 0.1840]) % red
hold on
plot(MA_scr_train_order_x_to_l(1,:), 'o-', 'MarkerFaceColor', [0 0.4470 0.7410], 'MarkerEdgeColor',...
    [0 0.4470 0.7410], 'LineWidth', 2, 'Color', [0 0.4470 0.7410]) % blue 
hold on

ylim([0 100]);
ylabel('Transition Probability [%]');
yline(MA_scr_train_order_x_to_a(1,1),'k--','LineWidth',1, 'Color', [0.6350 0.0780 0.1840]); 
yline(MA_scr_train_order_x_to_l(1,1),'k--','LineWidth',1, 'Color', [0 0.4470 0.7410]); 

xticks(1:1:length(MA_scr_train_order_x_to_a));
xticklabels({'BS','T1','T2','T3','T4','T5','PS1','PS2','PS3'}); 
xline(1.5,'k-','LineWidth',1); 
xline(6.5,'k-','LineWidth',1); 
xlim('padded');

title('2. Training (Context: MA)');

lgd = legend({'x - a', 'x - l'});
title(lgd, 'Syllable Transitions');
box off;

set(gca, 'ytick', 0:20:100);

%% plot: MM Social Context

figure
plot(MM_scr_train_order_x_to_a(1,:), 'o-', 'MarkerSize', 5,'MarkerFaceColor', [0.6350 0.0780 0.1840], ...
    'MarkerEdgeColor',[0.6350 0.0780 0.1840], 'LineWidth', 2, 'Color', [0.6350 0.0780 0.1840]) % red
hold on
plot(MM_scr_train_order_x_to_l(1,:), 'o-', 'MarkerSize', 5, 'MarkerFaceColor', [0 0.4470 0.7410], 'MarkerEdgeColor',...
    [0 0.4470 0.7410], 'LineWidth', 2, 'Color', [0 0.4470 0.7410]) % blue 
hold on

ylim([0 100]);
ylabel('Transition Probability [%]');
yline(MM_scr_train_order_x_to_a(1,1),'k--','LineWidth',1, 'Color', [0.6350 0.0780 0.1840]); 
yline(MM_scr_train_order_x_to_l(1,1),'k--','LineWidth',1, 'Color', [0 0.4470 0.7410]); 

xticks(1:1:length(MM_scr_train_order_x_to_a));
xticklabels({'BS','T1','T2','T3','T4','T5','PS1','PS2','PS3'}); 
xline(1.5,'k-','LineWidth',1); 
xline(6.5,'k-','LineWidth',1); 
xlim('padded');

title('3. Training (Context: MM)');

lgd = legend({'x - a', 'x - l'},'Position', [0.7 0.75 0.2 0.1]);
title(lgd, 'Syllable Transitions');
box off;

set(gca, 'ytick', 0:20:100);







