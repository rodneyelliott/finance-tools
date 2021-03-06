%% File and license information.
%**************************************************************************
%
%   File:           make_convert_quandl.m
%   Module:         Input Analysis
%   Project:        Portfolio Optimisation
%   Workspace:      Finance Tools
%
%   Author:         Rodney Elliott
%   Date:           30 July 2014
%
%**************************************************************************
%
%   Copyright:      (c) 2014 Rodney Elliott
%
%   This program is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   This program is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with this program. If not, see <http://www.gnu.org/licenses/>.
%
%**************************************************************************

% This script produces the set of data that TEST_CONVERT_QUANDL uses as its
% reference.
current_path = pwd;

document_1 = xmlread('test_1_convert_quandl.xml');
document_2 = xmlread('test_2_convert_quandl.xml');

cd ../

test_1 = convert_quandl(document_1);
disp('Created test_1 dataset.')
pause(1)

test_2 = convert_quandl(document_2);
disp('Created test_2 dataset.')
pause(1)

cd(current_path)
save('test_convert_quandl', 'test_1', 'test_2')
clearvars -except token