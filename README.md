# Project Overview
## Project Description
The Covid Vaccination Dashboard for the US (USCVD) is a configurable web app that provides a real-time, location-aware, and interactive data visualization and analytics platform in order to better monitor the spread of the Covid-19 pandemic as well as the progress of the coronavirus vaccination coverage among all the states of America. The live feed used for this dashboard is from Data on [COVID-19 (coronavirus) by Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data#data-on-covid-19-coronavirus-by-our-world-in-data) which is updated daily and includes data on confirmed cases, deaths, hospitalizations, testing, and vaccinations as well as other variables of potential interest. The dashboard will be implemented as a spatial data infrastructure (SDI) through the WebGIS platform and will be easily and openly accessed by users all over the world.
## Project Purpose, Benefits, and Target Group
With the aim of controlling the spread of this pandemic as well as monitoring and moderating the progression and allocation of covid vaccination, it is very critical to keep the public, the scientific community, government leaders, and officials in the health care sector actively informed about the current situation. It can:
- make the public realize and understand the severity of the situation and arouse people’s awareness and preparedness towards covid-19
- help government leaders and officials in the health care sector to have a more intuitive impression of the spread and distribution of the epidemic, so as to make more timely and reasonable decisions
- provide the scientific community with a handy tool that is potentially beneficial to various research topics
## Project Objectives
USCVD is a visualization web app based on the ArcGIS platform. Combined with the daily data including confirmed cases, deaths, hospitalizations, testing, and vaccinations. A time slider tool could reveal the changing trend of different data. With more and more vaccinations, we could see the effect of the decreasing trend.
1. **Data integration from GitHub Data on COVID-19 (coronavirus) by Our World in Data**
- Automated downloading from GitHub API, inserting the data into a database, publishing the service through ArcGIS enterprises.
2. **Web map**
- With the OSM base map, displaying the Events with time slider
- Displaying the vaccination sites detail as Popups on a map
- Being able to filter the data by selecting a time frame
- Being able to show the animation by selecting a time frame
- Searching for specific events through state name

