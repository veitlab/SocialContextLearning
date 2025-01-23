% Figure 1G: Entropy Change

%% load data for plotting
load("b1_norm_data");
load("b2_norm_data");
load("b3_norm_data");
load("b4_norm_data");
load("b5_norm_data");
load("b6_norm_data");

%% plot
figure
h1 = plot(b1_norm_data,'-o','Color',[0 0 0], 'MarkerSize', 6, ...
    'MarkerFaceColor', [0 0 0], 'MarkerEdgeColor',[0 0 0]);
hold on
h2 = plot(b2_norm_data,'-square','Color',[0 0 0], 'MarkerSize', 6, ...
    'MarkerFaceColor', [0 0 0], 'MarkerEdgeColor',[0 0 0]);
hold on
h3 = plot(b3_norm_data,'-x','Color',[0 0 0], 'MarkerSize', 8, ...
    'MarkerFaceColor', [0 0 0], 'MarkerEdgeColor',[0 0 0]);
hold on
h4 = plot(b4_norm_data,'-^','Color',[0 0 0], 'MarkerSize', 6, ...
    'MarkerFaceColor', [0 0 0], 'MarkerEdgeColor',[0 0 0]);
hold on
h5 = plot(b5_norm_data,'-pentagram','Color',[0 0 0], 'MarkerSize', 5, ...
    'MarkerFaceColor', [0 0 0], 'MarkerEdgeColor',[0 0 0]);
hold on
h6 = plot(b6_norm_data,'-v','Color',[0 0 0], 'MarkerSize', 5, ...
    'MarkerFaceColor', [0 0 0], 'MarkerEdgeColor',[0 0 0]);

yline(b1_norm_data(1,1),'k--','LineWidth',1); 
yticklabels({'','-0.2', '','-0.1','','0',''});

box off
xticks([1 2 3]);
set(gca,'XTickLabel', {'MA','MF','MM'});
ylabel('Entropy Change [%]');
xlabel('Social Context');

legend([h1,h2,h3,h4,h5,h6],'bird 1','bird 2','bird 3','bird 4','bird 5','bird 6',...
    'NumColumns',2,'Location','southwest','Orientation','horizontal');



