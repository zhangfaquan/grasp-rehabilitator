%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: F:\github\grasp-rehabilitator\data\datatable.xlsx
%    Worksheet: Sheet1
%
% Auto-generated by MATLAB on 14-Mar-2020 22:40:36

%% Setup the Import Options
opts = spreadsheetImportOptions("NumVariables", 6);

% Specify sheet and range
opts.Sheet = "Sheet1";
opts.DataRange = "A2:F1569";

% Specify column names and types
opts.VariableNames = ["SubjectID", "Weight", "Texture", "Trial", "PLFR", "PGFR"];
opts.SelectedVariableNames = ["SubjectID", "Weight", "Texture", "Trial", "PLFR", "PGFR"];
opts.VariableTypes = ["double", "double", "categorical", "categorical", "double", "double"];
opts = setvaropts(opts, [3, 4], "EmptyFieldRule", "auto");

% Import the data
grdata = readtable("\grasp-rehabilitator\data\datatable.xlsx", opts, "UseExcel", false);


%% Clear temporary variables
clear opts