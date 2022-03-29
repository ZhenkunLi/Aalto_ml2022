clc;
clear;
%%
train_score = importdata('train_score.csv');
val_score = importdata('val_score.csv');
test_score = importdata('test_score.csv');
%
feature = 1:1000:65537;
figure(1)
    plot(feature,train_score,':',LineWidth=2);hold on
    plot(feature,val_score,'-.',LineWidth=2,MarkerSize=10);hold on
    plot(feature,test_score,'-',LineWidth=2);hold off
%

set (gcf,'Position',[500,300,800,0.618*800])
xlim([0,20000])
ylim([0.35,1.05])
grid on;
set(gca,'GridLineStyle','--','GridColor','k', 'GridAlpha',0.2)
set(gca, 'Fontname', 'Times New Roman','FontSize',16);
legend('Training Score','Validation Score','Testing Score')
xlabel('Number of features', 'Fontname','Times New Roman','FontSize',16);
ylabel('Accuracy', 'Fontname','Times New Roman','FontSize',16);
%%
C = 0.1:0.1:2;
train_C= importdata('train_C.csv');
val_C = importdata('val_C.csv');
test_C = importdata('test_C.csv');
figure(1)
    plot(C,train_C,'r:',LineWidth=2);hold on
    plot(C,val_C,'g-.',LineWidth=2,MarkerSize=10);hold on
    plot(C,test_C,'b-',LineWidth=2);hold off
%

set (gcf,'Position',[500,300,800,0.618*800])
xlim([0,2])
ylim([0.2,1.05])
grid on;
set(gca,'GridLineStyle','--','GridColor','k', 'GridAlpha',0.2)
set(gca, 'Fontname', 'Times New Roman','FontSize',16);
legend('C for training set','C for validation set','C for testing set')
xlabel('The value of hyperparameter C', 'Fontname','Times New Roman','FontSize',16);
ylabel('Accuracy', 'Fontname','Times New Roman','FontSize',16);

clc;
clear;
%%
train_score = importdata('SVC_train_score.csv');
val_score = importdata('SVC_val_score.csv');
test_score = importdata('SVC_test_score.csv');
%
feature = 1:1000:65537;
figure(1)
    plot(feature,train_score,':',LineWidth=2);hold on
    plot(feature,val_score,'-.',LineWidth=2,MarkerSize=10);hold on
    plot(feature,test_score,'-',LineWidth=2);hold off
%

set (gcf,'Position',[500,300,800,0.618*800])
xlim([0,20000])
ylim([0.35,1.05])
grid on;
set(gca,'GridLineStyle','--','GridColor','k', 'GridAlpha',0.2)
set(gca, 'Fontname', 'Times New Roman','FontSize',16);
legend('Training Score','Validation Score','Testing Score')
xlabel('Number of features', 'Fontname','Times New Roman','FontSize',16);
ylabel('Accuracy', 'Fontname','Times New Roman','FontSize',16);
%%
C = 1:10^4:10^6;
train_C= importdata('SVC_train_C.csv');
val_C = importdata('SVC_val_C.csv');
test_C = importdata('SVC_test_C.csv');
figure(1)
    plot(C,train_C,'r:',LineWidth=2);hold on
    plot(C,val_C,'g-.',LineWidth=2,MarkerSize=10);hold on
    plot(C,test_C,'b-',LineWidth=2);hold off
%

set (gcf,'Position',[500,300,800,0.618*800])
% xlim([0,2])
ylim([0.2,1.05])
grid on;
set(gca,'GridLineStyle','--','GridColor','k', 'GridAlpha',0.2)
set(gca, 'Fontname', 'Times New Roman','FontSize',16);
legend('C for training set','C for validation set','C for testing set')
xlabel('The value of hyperparameter C', 'Fontname','Times New Roman','FontSize',16);
ylabel('Accuracy', 'Fontname','Times New Roman','FontSize',16);