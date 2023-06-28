%% Create variables

% Create the data set for the Environmental Justice Project
numLocations = 2000;

locationLat = rand(numLocations,1)*180-90; %Latitude of locations
locationLong = rand(numLocations,1)*360-180; %Longitude of Locations
locationPollution = rand(numLocations,1)*100; % Pollution level at each location
locationPopulation = round(rand(numLocations,1)*100000000); %Population at each location

%% Calculate a Pollution to Population Ratio

%Calculate a ratio of pollution to population
locationRatio = locationPollution./locationPopulation;

%% Visualize Data

% Create a 2D scatterplot to visualize the data
figure;
scatter(locationLat,locationLong,100,locationRatio,'filled');
title('Environmental Justice Project');
xlabel('Latitude');
ylabel('Longitude');
colormap('jet');
colorbar;

%% Perform Analysis

% Calculate the average value of the pollution to population ratio
meanLocationRatio = mean(locationRatio);

% Calculate the standard deviation of the pollution to population ratio
stdLocationRatio = std(locationRatio);

% Find the locations with higher than average pollution to population ratio 
indices = find(locationRatio > meanLocationRatio);

% Collect the data for the locations with higher than average pollution
highPollutionLat = locationLat(indices);
highPollutionLong = locationLong(indices);
highPollutionPollution = locationPollution(indices);
highPollutionPopulation = locationPopulation(indices);

%% Visualize Results

% Create a 2D scatterplot to visualize the results
figure;
scatter(highPollutionLat,highPollutionLong,100,highPollutionPollution./highPollutionPopulation,'filled');
title('Environmental Justice Project Results');
xlabel('Latitude');
ylabel('Longitude');
colormap('jet');
colorbar;