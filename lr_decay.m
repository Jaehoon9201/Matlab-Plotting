close all; clc; clear;

lr_init = 0.004;
epoch_num = 1200;
lr = zeros(epoch_num, 1);

for i = 1:1:4
    lr_decay_ratio = 1- 0.002 * i ;
    for epoch = 1:1:epoch_num
        lr(epoch) = lr_init * lr_decay_ratio^epoch;
    end

%     plot(1:1:epoch, lr,'-o','MarkerSize',2);
    plot(1:1:epoch, lr);
    
    colors = get(groot,'defaultAxesColorOrder');
    hold on; grid on; box on;
    plot(1:1:epoch, lr,  'Color' , colors(i,:) ,'LineStyle', '-', 'LineWidth', 1);
    xlabel('Epoch'); ylabel('Learning Rate');
    legend('lr_{decay} = 0.098', 'lr_{decay} = 0.096', 'lr_{decay} = 0.094', 'lr_{decay} = 0.092')
end