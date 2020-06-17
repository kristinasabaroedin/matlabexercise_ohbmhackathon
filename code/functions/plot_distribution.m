function plot1 = plot_distribution(Genes, probeInformation, parcelExpression)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


numGenes = length(Genes);

% for each gene
valYLim = cell(numGenes,1); 
valXLim = cell(numGenes,1); 

for i = 1:numGenes
    idx_Gene = find(strcmp(probeInformation.GeneSymbol,Genes{i}))

    AxHandle(i) = subplot(1,numGenes,i); 
    histogram(parcelExpression(:,idx_Gene))

    axis square
    ylabel('Count')
    xlabel('Gene expression')
    title(sprintf('%s\n', Genes{i}))
    box off
    set(gca,'fontsize', 14);
end

% apply same axes to all subplots for consistency
allYLim = cat(2, valYLim{:});
allXLim = cat(2, valXLim{:});
set(AxHandle, 'YLim', [min(allYLim), max(allYLim)]);
set(AxHandle, 'XLim', [min(allXLim), max(allXLim)]);

end

