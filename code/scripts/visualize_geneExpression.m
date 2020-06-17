clear

parentdir = '/Users/kristinasabaroedin/Documents/Projects/ohbm_hackathon2020/matlabexercise_ohbmhackathon/';
scriptsdir = [parentdir, 'code/'];
datadir = [parentdir, 'data/'];

addpath(genpath(scriptsdir))

load([datadir,'geneExpression.mat'])

Genes = {'ABCA2','CAPN2','CTDSPL'};
numGenes = length(Genes);


plot1 = plot_distribution(Genes, probeInformation, parcelExpression)

figureName = sprintf('figures/histogramGenes.png');
print(plot1,figureName,'-dpng','-r600');