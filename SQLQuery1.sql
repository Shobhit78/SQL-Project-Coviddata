select * from [Portfolio Project]..Covid_vaccination$
order by date ASC;

select * from [Portfolio Project]..CovidDeaths$
order by date ASC;

Select location,population,min(total_cases) as highest_count,(total_cases/population)*100 as infection_rate
from [Portfolio Project]..CovidDeaths$
GROUP BY location,population,total_cases
order by highest_count desc;

--Looking at countries highest infection rate as per population

select location,total_cases,new_cases,total_deaths,(total_deaths/total_cases)*100 as death_rate,population 
from [Portfolio Project]..CovidDeaths$
where location like 'a%'
order by total_cases ASC;

Select location,MAX(CAST(total_deaths as int)) as Total_Death_Count
from [Portfolio Project]..CovidDeaths$
WHERE continent IS NOT NULL
GROUP BY location
order by Total_Death_Count desc;

SELECT * FROM [Portfolio Project]..CovidDeaths$
WHERE continent IS NOT NULL;