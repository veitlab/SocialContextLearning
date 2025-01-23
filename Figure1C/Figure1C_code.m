% Figure 1C: Song Rate per Social Context MA, MF and MM

%% load data for plotting
load("Song_Rate_data");
load("Mean_Song_Rate_data");

%% arrange data for plot

% data for bars
x = [1 2 3];
m = [Mean_Song_Rate_data(1,1) Mean_Song_Rate_data(1,2) Mean_Song_Rate_data(1,3)]';

% data for scatter
b1 = [Song_Rate_data(1,1); Song_Rate_data(1,2); Song_Rate_data(1,3)];
b2 = [Song_Rate_data(2,1); Song_Rate_data(2,2); Song_Rate_data(2,3)];
b3 = [Song_Rate_data(3,1); Song_Rate_data(3,2); Song_Rate_data(3,3)];
b4 = [Song_Rate_data(4,1); Song_Rate_data(4,2); Song_Rate_data(4,3)];
b5 = [Song_Rate_data(5,1); Song_Rate_data(5,2); Song_Rate_data(5,3)];
b6 = [Song_Rate_data(6,1); Song_Rate_data(6,2); Song_Rate_data(6,3)];

%% plot
figure
b = bar(m, 'FaceColor','none','LineWidth',1.5,'EdgeAlpha',0);
hold on

% bars
c = bar(m(1:3));
set(c,'EdgeColor',[0.3176 0.6706 0.6706],'LineWidth', 2,'FaceColor','none'); % teal = MM
hold on
c = bar(m(1:2));
set(c,'EdgeColor', [0.4471 0.1529 0.6314],'LineWidth', 2,'FaceColor','none'); % purple = MF
hold on
c = bar(m(1:1));
set(c,'EdgeColor',[0.9216 0.7608 0.3922],'LineWidth', 2,'FaceColor','none'); % yellow = MA

% scatter data points
s1 = plot(x-0.1,b1,'o','MarkerSize',6,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0], 'LineWidth', 1);
hold on
s2 = plot(x-0.05,b2,'square','MarkerSize',6,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0], 'LineWidth', 1);
hold on
s3 = plot(x+0.25,b3,'x','MarkerSize',8,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0], 'LineWidth', 2);
hold on
s4 = plot(x+0.1,b4,'^','MarkerSize',6,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0], 'LineWidth', 1);
hold on
s5 = plot(x+0.125,b5,'pentagram','MarkerSize',6,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0], 'LineWidth', 1.5);
hold on
s6 = plot(x+0.13,b6,'v','MarkerSize',6,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0], 'LineWidth', 1.5);
hold on

% axes lables
ylim([0 700])
set(gca,'TickLength', [0 0]);
set(gca,'LineWidth',1.5);
set(gca,'FontSize',12);
set(gca,'XTicklabel',{'MA','MF','MM'},'FontSize',12);
xlabel('Social Context', 'FontSize', 16);
ylabel('Mean Song Rate [bouts/day]','FontSize',16);

% legend
h = [s1 s2 s3 s4 s5 s6]; 
l1 = legend(h, {'bird 1', 'bird 2','bird 3','bird 4', 'bird 5','bird 6'},'NumColumns',2,...
    'Location','northeast','Orientation','horizontal','FontSize',12);

box off;

