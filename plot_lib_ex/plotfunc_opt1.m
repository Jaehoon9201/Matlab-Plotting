function [] = plotfunc_opt1(fignum, x,y, pos_size, xlim_, ylim_, idxing_, title_, xlabel_, ylabel_, legend_)

    colors = get(groot,'defaultAxesColorOrder');
    set(figure(fignum), 'units','normalized','pos',pos_size); %[xPos yPos xSize ySize]
    hold on; grid on; box on;
    plot(x, y,'Marker','none',  'Color' , colors(1,:) ,'LineStyle', '-', 'LineWidth', 1)
    set(gca,'fontname','Times New Roman','FontSize', 13)
    
    ylim(ylim_);
    xlim(xlim_);

    idxing = strcmp('ON', idxing_);
    if idxing == 1
        title(title_); 
        xlabel(xlabel_);
        ylabel(ylabel_);
        legend(legend_);
    end

end

