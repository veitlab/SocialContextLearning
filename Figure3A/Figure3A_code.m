% Figure 3A Degree of Learning per Social Context MA,MF and MM

%% load data for data points in plot
load("Fig3A_MA_context.mat");
load("Fig3A_MF_context.mat");
load("Fig3A_MM_context.mat");

%% plot

% calculate mean value per context
mean_MA = mean(boxplot_MA);
mean_MF = mean(boxplot_MF);
mean_MM = mean(boxplot_MM);

means_learning = zeros(length(boxplot_MA),3);
means_learning(:,1) = boxplot_MA;
means_learning(:,2) = boxplot_MF;
means_learning(:,3) = boxplot_MM;

% plot
figure
b = boxchart(means_learning,'BoxFaceColor','k','BoxFaceAlpha',0.0)
hold on
ylabel('Learning [%]','FontSize',16)
set(gca, 'xticklabel',({'MA', 'MF', 'MM'}), 'FontSize', 16)

% plot individual data points per bird
hold on
h1 = plot(means_learning(1,:),'o','MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0],...
    'Color',[0 0 0], 'MarkerSize',6, 'LineWidth', 1)
hold on
h2 = plot(means_learning(2,:),'square','MarkerEdgeColor',[0 0 0],'MarkerFaceColor',...
    [0 0 0],'Color',[0 0 0], 'MarkerSize',6, 'LineWidth', 1)
hold on
h3 = plot(means_learning(3,:),'x','MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0],...
    'Color',[0 0 0], 'MarkerSize',8, 'LineWidth', 1)
hold on
h4 = plot(means_learning(4,:),'^','MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0],...
    'Color',[0 0 0], 'MarkerSize',6, 'LineWidth', 1)
hold on
h5 = plot(means_learning(5,:),'pentagram','MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0],...
    'Color',[0 0 0], 'MarkerSize',6, 'LineWidth', 1)
hold on
h6 = plot(means_learning(6,:),'v','MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0],...
    'Color',[0 0 0], 'MarkerSize',6, 'LineWidth', 1)
hold on

yticks([0:10:100])

% legend
legend([h1,h2,h3,h4,h5,h6],'bird 1','bird 2','bird 3','bird 4','bird 5', 'bird 6',...
    'NumColumns',3,'Location','northoutside','Orientation','horizontal')
set(gca,'LineWidth',1)
hold on



