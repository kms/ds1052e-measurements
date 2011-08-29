% ds1052e-measurements
% Octave (MATLAB) code for processing the measurements
%
% (c) Karl-Martin Skontorp <kms@skontorp.net> ~ http://22pf.org/
% Licensed under the GNU GPL 2.0 or later.

dataFromFile = dlmread("bandwidth-2011-08-21-1MHz-175MHz.csv");

mhz = dataFromFile(:,1);
mv = dataFromFile(:,2);

% use the maximum point as a reference for 0dB
mv /= max(mv);
db = log10(mv) * 20;

dlmwrite("bandwidth-in-db.csv", [mhz, db], ", ");
