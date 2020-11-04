function step1 = trials_import(filename, dataLines)
%IMPORTFILE Import data from a text file
%  STEP1 = IMPORTFILE(FILENAME) reads data from text file FILENAME for
%  the default selection.  Returns the numeric data.
%
%  STEP1 = IMPORTFILE(FILE, DATALINES) reads data for the specified row
%  interval(s) of text file FILENAME. Specify DATALINES as a positive
%  scalar integer or a N-by-2 array of positive scalar integers for
%  dis-contiguous row intervals.
%
%  Example:
%  step1 = importfile("F:\OneDrive - Flinders\University\2020\MASTERS\Inherited Files\NetballWearable_EmiliaCorbo_2018\Correlation and Feasibility\Data\BS 100818\CSVs\1step.csv", [6, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 22-Aug-2020 11:19:21

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [6, Inf];
end

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 87, "Encoding", "UTF-8");

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["VarName1", "VarName2", "Plate1Force", "VarName4", "VarName5", "Plate1Moment", "VarName7", "VarName8", "Plate1CoP", "VarName10", "VarName11", "Plate2Force", "VarName13", "VarName14", "Plate2Moment", "VarName16", "VarName17", "Plate2CoP", "VarName19", "VarName20", "Plate3Force", "VarName22", "VarName23", "Plate3Moment", "VarName25", "VarName26", "Plate3CoP", "VarName28", "VarName29", "Plate4Force", "VarName31", "VarName32", "Plate4Moment", "VarName34", "VarName35", "Plate4CoP", "VarName37", "VarName38", "ImportedDelsysTrignoAccelerometers20Sensor1", "VarName40", "VarName41", "ImportedDelsysTrignoAccelerometers20Sensor2", "VarName43", "VarName44", "ImportedDelsysTrignoAccelerometers20Sensor3", "VarName46", "VarName47", "ImportedDelsysTrignoAccelerometers20Sensor4", "VarName49", "VarName50", "ImportedDelsysTrignoAccelerometers20Sensor5", "VarName52", "VarName53", "ImportedDelsysTrignoAccelerometers20Sensor6", "VarName55", "VarName56", "ImportedDelsysTrignoAccelerometers20Sensor7", "VarName58", "VarName59", "ImportedDelsysTrignoAccelerometers20Sensor8", "VarName61", "VarName62", "ImportedDelsysTrignoAccelerometers20Sensor9", "VarName64", "VarName65", "ImportedDelsysTrignoAccelerometers20Sensor10", "VarName67", "VarName68", "ImportedDelsysTrignoAccelerometers20Sensor11", "VarName70", "VarName71", "ImportedDelsysTrignoAccelerometers20Sensor12", "VarName73", "VarName74", "ImportedDelsysTrignoAccelerometers20Sensor13", "VarName76", "VarName77", "ImportedDelsysTrignoAccelerometers20Sensor14", "VarName79", "VarName80", "ImportedDelsysTrignoAccelerometers20Sensor15", "VarName82", "VarName83", "ImportedDelsysTrignoAccelerometers20Sensor16", "VarName85", "VarName86", "VarName87"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, "VarName87", "TrimNonNumeric", true);
opts = setvaropts(opts, "VarName87", "ThousandsSeparator", ",");

% Import the data
step1 = readtable(filename, opts);

%% Convert to output type
step1 = table2array(step1);

step1(end,:) = []; %remove the last line (since this is NaN)
end