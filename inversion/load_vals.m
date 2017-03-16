function [BX_VALS, BY_VALS, BZ_VALS] = load_vals(FILENAME)

OBSERVED_NAME = FILENAME;
OBSERVED_BX_FILENAME = strcat(OBSERVED_NAME, '_Bx.txt');
OBSERVED_BY_FILENAME = strcat(OBSERVED_NAME, '_By.txt');
OBSERVED_BZ_FILENAME = strcat(OBSERVED_NAME, '_Bz.txt');

OBSERVED_BX = textread(OBSERVED_BX_FILENAME,'%f', 'commentstyle', 'shell');
OBSERVED_BY = textread(OBSERVED_BY_FILENAME,'%f', 'commentstyle', 'shell');
OBSERVED_BZ = textread(OBSERVED_BZ_FILENAME,'%f', 'commentstyle', 'shell');
N_POINTS = length(OBSERVED_BX)/4;

OBSERVED_BX_VALS = reshape(OBSERVED_BX, 4, N_POINTS)';
OBSERVED_BY_VALS = reshape(OBSERVED_BY, 4, N_POINTS)';
OBSERVED_BZ_VALS = reshape(OBSERVED_BZ, 4, N_POINTS)';

BX_VALS = OBSERVED_BX_VALS(:, 4);
BY_VALS = OBSERVED_BY_VALS(:, 4);
BZ_VALS = OBSERVED_BZ_VALS(:, 4);
end