---
title: "Glossary of Wildfire Modeling Terms"
description: "Comprehensive glossary of terminology used in wildfire behavior modeling and simulation"
part: 1
section: 3
categories: 
  - orientation
  - reference
tags:
  - glossary
  - terminology
  - definitions
date: 2024-11-30
date-modified: 2024-11-30
---

# Glossary of Wildfire Modeling Terms

::: {.callout-note}
## How to Use This Glossary
Terms are organized alphabetically within categories. Click any term to jump to its definition. Terms appearing as [[wiki-links]] throughout the directory link back to this glossary.
:::

## Quick Navigation

- [Fuel Terminology](#fuel-terminology)
- [Fire Behavior & Spread](#fire-behavior-spread)
- [Weather & Atmospheric](#weather-atmospheric)
- [Modeling & Simulation](#modeling-simulation)
- [Infrastructure & Utilities](#infrastructure-utilities)
- [Insurance & Risk](#insurance-risk)
- [Data & Computing](#data-computing)

---

## Fuel Terminology {#fuel-terminology}

### Active Crown Fire
**Definition**: A crown fire in which the entire fuel complex—surface fuels, ladder fuels, and canopy fuels—is involved. The fire advances both through the canopy and along the surface with energy release from both fuel strata contributing to fire spread.

**Context**: Active crown fire represents the most intense fire behavior category and is distinguished from passive crown fire where only individual trees or groups torch out.

**Related Terms**: [[passive crown fire]], [[crown fire]], [[canopy bulk density]], [[fireline intensity]]

**See Also**: [[Section 4 - Fire Behavior Triangle]], [[Section 6 - Surface and Crown Fire Transitions]]

---

### Canopy Base Height (CBH)
**Definition**: The lowest height above the ground at which there is sufficient canopy fuel to propagate fire vertically. Measured in meters or feet from ground level to the base of the live crown.

**Context**: CBH is a critical threshold for crown fire initiation. Lower CBH values indicate greater susceptibility to crown fire as surface fires can more easily transition into the canopy.

**Units**: Meters (m) or feet (ft)

**Related Terms**: [[canopy bulk density]], [[ladder fuels]], [[crown fire]], [[surface fire]]

**See Also**: [[Section 13 - Fuel Model Assignment and Canopy Metrics]]

---

### Canopy Bulk Density (CBD)
**Definition**: The mass of available canopy fuel per unit canopy volume, typically expressed in kg/m³. Represents the density of burnable material within the tree canopy layer.

**Context**: CBD determines whether a crown fire can sustain itself once initiated. Minimum CBD thresholds (typically 0.05-0.1 kg/m³) must be met for active crown fire spread.

**Units**: Kilograms per cubic meter (kg/m³)

**Related Terms**: [[canopy base height]], [[active crown fire]], [[crown fire spread rate]]

**See Also**: [[Section 13 - Canopy Metrics]]

---

### Fire Behavior Fuel Model (FBFM)
**Definition**: A standardized classification system that describes the physical characteristics of surface fuels affecting fire behavior. FBFMs specify fuel load, fuel bed depth, moisture of extinction, and surface-area-to-volume ratios for different fuel components.

**Context**: The original 13 fuel models (Anderson 1982) were expanded to 40 models (Scott & Burgan 2005). These classifications drive rate of spread calculations in Rothermel-based models.

**Related Terms**: [[LANDFIRE]], [[fuel load]], [[fuel bed depth]], [[Rothermel model]]

**See Also**: [[Section 6 - Fire Behavior Fuel Models]], [[Section 13 - Fuel Model Assignment]]

---

### Fuel Load
**Definition**: The oven-dry weight of fuel per unit area, typically expressed in tons per acre (US) or tonnes per hectare (metric). Includes all combustible biomass by size class.

**Context**: Fuel load directly affects potential fire intensity and flame length. Higher fuel loads produce more intense fires but don't necessarily increase spread rate.

**Units**: Tons/acre (t/ac) or Mg/ha

**Related Terms**: [[fuel bed depth]], [[fireline intensity]], [[fuel model]]

**See Also**: [[Section 13 - Fuels Data]]

---

### Fuel Moisture Content (FMC)
**Definition**: The amount of water in fuel expressed as a percentage of the oven-dry weight of that fuel. Dead fuels are classified by timelag (1-hour, 10-hour, 100-hour, 1000-hour), while live fuels include herbaceous and woody components.

**Context**: FMC is the most dynamic fuel property and strongly influences fire behavior. Fuels below their moisture of extinction can sustain combustion; above this threshold, fire cannot spread through that fuel component.

**Units**: Percent of dry weight (%)

**Related Terms**: [[timelag]], [[moisture of extinction]], [[live fuel moisture]], [[dead fuel moisture]]

**See Also**: [[Section 13 - Fuel Moisture Conditioning]]

---

### Ladder Fuels
**Definition**: Vegetation that provides vertical continuity between surface fuels and crown fuels, allowing fire to climb from the ground into tree canopies. Examples include shrubs, small trees, dead branches, and tall grass.

**Context**: Removal of ladder fuels is a primary objective of fuel treatments in the wildland-urban interface to reduce crown fire risk.

**Related Terms**: [[crown fire]], [[canopy base height]], [[fuel treatment]], [[defensible space]]

**See Also**: [[Section 21 - Treatment Planning and Effectiveness]]

---

### LANDFIRE
**Definition**: Landscape Fire and Resource Management Planning Tools—a shared program between the wildland fire management programs of the U.S. Department of Agriculture Forest Service and the U.S. Department of the Interior that provides geospatial data products for fire and land management.

**Context**: LANDFIRE provides the primary national-scale fuel, vegetation, and fire behavior data layers used in most US wildfire modeling applications at 30-meter resolution.

**Related Terms**: [[FBFM]], [[fuel model]], [[canopy metrics]]

**Data Access**: [LANDFIRE Data Portal](https://landfire.gov)

**See Also**: [[Section 13 - Vegetation and Fuel Layer Sources]]

---

### Moisture of Extinction
**Definition**: The dead fuel moisture content above which a fire will not spread. This threshold varies by fuel type and is a key parameter in fire behavior fuel models.

**Context**: Typical values range from 12-40%, with fine fuels generally having lower thresholds than coarse fuels.

**Units**: Percent of dry weight (%)

**Related Terms**: [[fuel moisture content]], [[rate of spread]], [[fire spread]]

**See Also**: [[Section 6 - Rothermel Model]]

---

### Timelag
**Definition**: The time required for a dead fuel particle to reach approximately 63% of equilibrium moisture content under constant atmospheric conditions. Used to classify dead fuels by size.

**Context**: Fuel timelag classes: 1-hour (<0.25" diameter), 10-hour (0.25-1"), 100-hour (1-3"), 1000-hour (3"+). Smaller fuels respond rapidly to weather changes; larger fuels change slowly.

**Related Terms**: [[fuel moisture content]], [[dead fuel moisture]], [[fuel size class]]

**See Also**: [[Section 13 - Fuel Moisture Conditioning]]

---

## Fire Behavior & Spread {#fire-behavior-spread}

### Backing Fire
**Definition**: A fire spreading against the wind or downslope. Backing fires exhibit the slowest spread rates and lowest intensities of any fire spread direction.

**Context**: Understanding backing fire behavior is important for prescribed fire planning and for predicting fire perimeter evolution in variable winds.

**Related Terms**: [[head fire]], [[flanking fire]], [[rate of spread]]

**See Also**: [[Section 4 - Fire Behavior Overview]]

---

### Burn Probability
**Definition**: The likelihood that a specific location will burn during a specified time period, typically expressed as an annual probability or probability under a given fire weather scenario.

**Context**: Burn probability is a key output of landscape fire simulation systems like FSim and is used for risk assessment, treatment prioritization, and insurance underwriting.

**Units**: Probability (0-1) or percentage

**Related Terms**: [[conditional flame length]], [[fire occurrence]], [[stochastic simulation]]

**See Also**: [[Section 7 - Landscape Burn Probability and Integrated Risk]]

---

### Crown Fire
**Definition**: Fire that advances through the crown fuel layer, either independently of or with the surface fire. Crown fires exhibit the most intense fire behavior with the highest spread rates and heat release.

**Context**: Crown fire is classified as passive (individual tree torching) or active (continuous canopy spread). Active crown fire requires sufficient canopy bulk density and crown fire spread rate to sustain itself.

**Related Terms**: [[active crown fire]], [[passive crown fire]], [[surface fire]], [[canopy bulk density]]

**See Also**: [[Section 6 - Surface and Crown Fire Transitions]]

---

### Fireline Intensity
**Definition**: The rate of heat release per unit length of fire front, regardless of its depth. The standard measure of fire intensity in wildland fire science.

**Formula**: I = H × W × R, where H is heat yield, W is fuel consumed, R is rate of spread

**Units**: Kilowatts per meter (kW/m) or BTU per foot per second

**Context**: Fireline intensity determines suppression difficulty, ecological effects, and is directly related to flame length.

**Related Terms**: [[flame length]], [[rate of spread]], [[heat per unit area]]

**See Also**: [[Section 4 - Fire Behavior Overview]]

---

### Flame Length
**Definition**: The distance measured from the tip of the flame to the midpoint of the flame depth at the base of the flame. A practical field measure related to fireline intensity.

**Context**: Flame length is used operationally to assess suppression capability: <4 ft (direct attack feasible), 4-8 ft (direct attack difficult), >8 ft (indirect attack required), >11 ft (suppression ineffective).

**Units**: Feet (ft) or meters (m)

**Related Terms**: [[fireline intensity]], [[suppression difficulty]], [[fire behavior]]

**See Also**: [[Section 6 - Fire Assessment]]

---

### Flanking Fire
**Definition**: Fire spreading roughly parallel to the wind direction, along the sides of a fire between the head and the heel. Flanking fire exhibits intermediate spread rates between head and backing fires.

**Related Terms**: [[head fire]], [[backing fire]], [[fire perimeter]]

**See Also**: [[Section 4 - Fire Behavior Overview]]

---

### Head Fire
**Definition**: The portion of a fire spreading most rapidly, usually driven by wind or upslope alignment. Head fires exhibit the highest spread rates and intensities.

**Context**: In operational fire behavior prediction, head fire spread rate is typically the primary output of interest as it determines how quickly a fire grows and threatens values at risk.

**Related Terms**: [[backing fire]], [[flanking fire]], [[rate of spread]]

**See Also**: [[Section 4 - Fire Behavior Overview]]

---

### Rate of Spread (ROS)
**Definition**: The speed at which a fire front advances, measured perpendicular to the fire edge. The fundamental output of fire behavior models.

**Units**: Meters per minute (m/min), chains per hour (ch/hr), or feet per minute (ft/min). 1 chain = 66 feet = 20.1 meters.

**Context**: ROS varies dramatically with conditions: <1 m/min for smoldering fires to >100 m/min for extreme crown fires. The Rothermel model and its derivatives are the primary tools for ROS prediction in US applications.

**Related Terms**: [[fireline intensity]], [[head fire]], [[Rothermel model]]

**See Also**: [[Section 6 - Rothermel and Related Models]]

---

### Spotting
**Definition**: The production of firebrands (embers) that are lofted by convection and transported beyond the main fire front, potentially igniting new fires ahead of the perimeter.

**Context**: Spotting distance depends on firebrand size, convective column strength, ambient wind, and fuel receptivity. Spotting is a primary mechanism for rapid fire spread and structure ignition in WUI fires.

**Related Terms**: [[firebrand]], [[spot fire]], [[ember transport]]

**See Also**: [[Section 10 - Ember Transport and Firebrand Ignition]]

---

### Surface Fire
**Definition**: Fire that spreads through the surface fuel layer, including litter, grass, low shrubs, and dead woody material up to approximately 2 meters height.

**Context**: Surface fire is the starting point for fire behavior prediction. Most operational fire behavior models (FARSITE, BehavePlus) are fundamentally surface fire models with crown fire modules added.

**Related Terms**: [[crown fire]], [[ground fire]], [[rate of spread]]

**See Also**: [[Section 6 - Empirical and Semi-Empirical Models]]

---

## Weather & Atmospheric {#weather-atmospheric}

### Extreme Fire Weather
**Definition**: Weather conditions that significantly increase fire danger and fire behavior above normal expectations. Typically characterized by high temperatures, low humidity, strong winds, and drought.

**Context**: Red Flag Warnings are issued when extreme fire weather conditions are forecast. Fire weather indices like the [[Haines Index]] and [[Burning Index]] quantify these conditions.

**Related Terms**: [[Red Flag Warning]], [[fire weather watch]], [[Haines Index]]

**See Also**: [[Section 14 - Weather and Climate Inputs]]

---

### Fire Weather
**Definition**: Weather conditions that influence fire ignition, behavior, and suppression, including temperature, relative humidity, wind speed and direction, precipitation, and atmospheric stability.

**Context**: Fire weather is monitored through Remote Automated Weather Stations (RAWS) and forecast by dedicated fire weather meteorologists at the National Weather Service.

**Related Terms**: [[RAWS]], [[fire danger rating]], [[fire weather forecast]]

**See Also**: [[Section 14 - Critical Variables and Sources]]

---

### Haines Index
**Definition**: A lower atmosphere stability index used to indicate the potential for existing fires to become large fires. Values range from 2 (low potential) to 6 (high potential).

**Context**: The Haines Index has been largely replaced by the Hot-Dry-Windy Index (HDW) in many applications but remains in use operationally.

**Related Terms**: [[atmospheric stability]], [[fire weather]], [[fire danger]]

**See Also**: [[Section 14 - Fire Weather Indices]]

---

### RAWS (Remote Automated Weather Station)
**Definition**: A weather station that transmits observations via satellite or radio to support fire weather forecasting and fire danger rating. RAWS provide the primary ground-based weather observations for wildfire applications.

**Context**: RAWS stations report hourly observations including temperature, humidity, wind, precipitation, and (at some stations) fuel moisture. Station spacing averages 50-100 km in the Western US.

**Data Access**: [MesoWest RAWS Data](https://mesowest.utah.edu)

**Related Terms**: [[fire weather]], [[fuel moisture]], [[fire danger rating]]

**See Also**: [[Section 14 - Weather Data Sources]]

---

## Modeling & Simulation {#modeling-simulation}

### Coupled Fire-Atmosphere Model
**Definition**: A simulation system in which the fire and atmosphere components interact dynamically—fire-generated heat and moisture modify the atmospheric flow, which in turn influences fire behavior.

**Context**: Examples include WRF-Fire, FIRETEC, and CAWFE. Coupled models capture fire-induced winds and extreme fire behavior that uncoupled models miss, but require significantly more computational resources.

**Related Terms**: [[WRF-Fire]], [[fire-atmosphere interaction]], [[pyroconvection]]

**See Also**: [[Section 8 - Coupled Atmosphere-Fire Models]]

---

### Ensemble Forecasting
**Definition**: Running multiple simulations with varied initial conditions or model parameters to quantify forecast uncertainty and produce probabilistic predictions.

**Context**: Ensemble approaches are standard in weather forecasting but rare in operational wildfire prediction due to computational costs. Fast surrogate models may enable ensemble fire forecasting.

**Related Terms**: [[uncertainty quantification]], [[Monte Carlo simulation]], [[probabilistic forecast]]

**See Also**: [[Section 19 - Uncertainty Quantification]]

---

### FARSITE
**Definition**: Fire Area Simulator—a deterministic fire behavior and spread model that uses spatial information on topography and fuels to compute fire growth over time.

**Context**: FARSITE implements the Rothermel surface fire model with Huygens' principle for spatial propagation. It remains the most widely used operational fire spread model in the US despite known limitations.

**Related Terms**: [[Rothermel model]], [[FlamMap]], [[fire spread simulation]]

**See Also**: [[Section 7 - Deterministic Spread Models]]

---

### Level Set Method
**Definition**: A numerical technique for tracking fire front evolution by representing the fire perimeter as the zero level set of a higher-dimensional function.

**Context**: Level set methods enable efficient computation of fire spread without explicitly tracking individual points on the fire perimeter. Used in MTT and some coupled models.

**Related Terms**: [[MTT]], [[fire spread simulation]], [[perimeter tracking]]

**See Also**: [[Section 7 - MTT and Pixel-by-Pixel Spread]]

---

### MTT (Minimum Travel Time)
**Definition**: A fire spread algorithm that computes fire arrival time at each pixel by finding the minimum time path from ignition points, using Dijkstra-like graph search methods.

**Context**: MTT is computationally efficient and can rapidly compute fire spread scenarios. It is the foundation for burn probability calculations in systems like FlamMap and FSim.

**Related Terms**: [[FARSITE]], [[burn probability]], [[level set method]]

**See Also**: [[Section 7 - Deterministic Spread Models]]

---

### Rothermel Model
**Definition**: The semi-empirical mathematical model developed by Richard Rothermel (1972) that predicts surface fire spread rate and intensity based on fuel properties, weather, and topography.

**Context**: The Rothermel model is the foundation of nearly all US operational fire behavior prediction. It was developed from laboratory experiments and calibrated with field data.

**Related Terms**: [[rate of spread]], [[fireline intensity]], [[fuel model]], [[BEHAVE]]

**See Also**: [[Section 6 - Rothermel and Related Surface/Crown Fire Models]]

---

### Surrogate Model
**Definition**: A computationally efficient approximation of a more complex simulation model, trained to reproduce the input-output relationships of the original model at reduced computational cost.

**Context**: Machine learning surrogate models (neural networks, Gaussian processes) may enable 100-1000× speedup of wildfire simulations, making ensemble forecasting and real-time prediction feasible.

**Related Terms**: [[emulator]], [[machine learning]], [[neural network]]

**See Also**: [[Section 11 - Machine Learning Surrogates and Emulators]]

---

### WRF-Fire
**Definition**: A coupled fire-atmosphere model combining the Weather Research and Forecasting (WRF) atmospheric model with a fire spread module based on level-set methods and Rothermel physics.

**Context**: WRF-Fire enables two-way coupling between fire and atmosphere at mesoscale resolutions (typically 100m-1km). It is open-source and actively developed.

**Related Terms**: [[coupled model]], [[WRF]], [[fire-atmosphere coupling]]

**Data Access**: [WRF-Fire GitHub](https://github.com/openwfm/WRF-Fire)

**See Also**: [[Section 8 - WRF-Fire/WRF-SFIRE Overview]]

---

## Infrastructure & Utilities {#infrastructure-utilities}

### Defensible Space
**Definition**: The area around a structure where vegetation and other combustible materials have been modified to reduce fire intensity and ember exposure, typically extending 30-100 feet from structures.

**Context**: Defensible space is the primary structural protection strategy in the WUI. Standards are established by state laws, insurance requirements, and community programs.

**Related Terms**: [[WUI]], [[structure ignition]], [[home hardening]]

**See Also**: [[Section 21 - Community-Level Mitigation and Defensible Space]]

---

### EPSS (Enhanced Powerline Safety Settings)
**Definition**: Utility protection settings that reduce fault energy by more rapidly de-energizing power lines when abnormal conditions are detected, reducing ignition risk from line contacts.

**Context**: EPSS is an alternative or complement to PSPS, reducing ignition risk while maintaining power delivery. Trade-offs include increased nuisance outages from momentary faults.

**Related Terms**: [[PSPS]], [[fault protection]], [[ignition risk]]

**See Also**: [[Section 24 - PSPS and Enhanced Protection]]

---

### PSPS (Public Safety Power Shutoff)
**Definition**: The intentional de-energization of power lines during high fire weather conditions to prevent utility-caused ignitions.

**Context**: PSPS programs have expanded significantly following major utility-caused fires (2017-2018 California fires). Implementation involves forecasting fire weather, identifying at-risk circuits, and coordinating customer notifications.

**Related Terms**: [[fire weather]], [[utility wildfire risk]], [[grid resilience]]

**See Also**: [[Section 24 - Public Safety Power Shutoffs]]

---

### WUI (Wildland-Urban Interface)
**Definition**: The zone where structures and other human development meet or intermingle with undeveloped wildland or vegetative fuels.

**Context**: WUI is classified as interface (development adjacent to wildland) or intermix (development scattered through wildland vegetation). WUI area in the US expanded by over 40% from 1990-2010.

**Related Terms**: [[defensible space]], [[structure ignition]], [[ember exposure]]

**See Also**: [[Section 5 - Wildland-Urban Interface Scale]]

---

## Insurance & Risk {#insurance-risk}

### Catastrophe Model (Cat Model)
**Definition**: A probabilistic model that simulates large numbers of potential disaster events to estimate the distribution of losses for insurance and reinsurance applications.

**Context**: Wildfire cat models combine hazard modules (fire occurrence and spread), vulnerability modules (damage given hazard intensity), and financial modules (loss aggregation). Major vendors include AIR, RMS, and CoreLogic.

**Related Terms**: [[burn probability]], [[vulnerability]], [[loss estimation]]

**See Also**: [[Section 27 - Structure of Wildfire Catastrophe Models]]

---

### Exposure
**Definition**: In insurance contexts, the properties, structures, or values at risk of damage from wildfire. May refer to the physical proximity to fire hazard or the insured value.

**Context**: Wildfire exposure in the US has grown dramatically with WUI expansion. Insurance companies use exposure accumulation analysis to manage portfolio concentrations in high-risk areas.

**Related Terms**: [[WUI]], [[values at risk]], [[portfolio management]]

**See Also**: [[Section 29 - Aggregation Management and Tail Risk]]

---

### Vulnerability
**Definition**: The susceptibility of a structure or asset to damage given exposure to a specific hazard intensity. In wildfire modeling, vulnerability functions relate fire hazard metrics to damage states.

**Context**: Vulnerability depends on construction materials, defensible space, structure age, and other factors. AI/ML models increasingly predict parcel-level vulnerability from imagery and building attributes.

**Related Terms**: [[exposure]], [[fragility curve]], [[damage function]]

**See Also**: [[Section 28 - Property-Level Risk Scoring]]

---

## Data & Computing {#data-computing}

### Data Assimilation
**Definition**: The process of combining observational data with model predictions to produce an improved estimate of system state. Used to update fire simulations with real-time observations.

**Context**: Wildfire data assimilation may incorporate satellite fire detections, weather observations, and perimeter data to correct and update model forecasts during active incidents.

**Related Terms**: [[Kalman filter]], [[ensemble data assimilation]], [[state estimation]]

**See Also**: [[Section 17 - Real-Time Data Ingestion]]

---

### HPC (High-Performance Computing)
**Definition**: Computing systems using parallel processing across many processors to solve computationally intensive problems. Required for physics-based fire models like WRF-Fire and FIRETEC.

**Context**: HPC requirements limit operational use of coupled fire-atmosphere models. Cloud computing and GPU acceleration are expanding access to HPC capabilities.

**Related Terms**: [[parallel computing]], [[GPU computing]], [[cloud computing]]

**See Also**: [[Section 3 - Computational Accessibility Barriers]]

---

### Neural Operator
**Definition**: A class of neural networks designed to learn mappings between function spaces, enabling resolution-independent approximation of physics simulations.

**Context**: Neural operators (Fourier Neural Operators, DeepONet) show promise for creating fast surrogate models of fire spread simulations while maintaining accuracy across different grid resolutions.

**Related Terms**: [[surrogate model]], [[machine learning]], [[physics-informed neural network]]

**See Also**: [[Section 11 - Neural Operators for Process Acceleration]]

---

### VVUQ (Verification, Validation, and Uncertainty Quantification)
**Definition**: The comprehensive framework for assessing model credibility: verification (solving equations correctly), validation (representing reality accurately), and UQ (quantifying prediction uncertainty).

**Context**: VVUQ practices in wildfire modeling lag behind other engineering domains. Improved VVUQ is essential for operational adoption of new modeling approaches.

**Related Terms**: [[model validation]], [[uncertainty quantification]], [[code verification]]

**See Also**: [[Section 19 - VVUQ Frameworks and Methodologies]]

---

## Contributing to the Glossary

This glossary is continuously updated. If you encounter a term that should be added, please contact the Rallypoint team or submit a suggestion through our GitHub repository.

---

*Last updated: November 2024*
*Part of the [Wildfire Modeling & Simulation Resource Directory](../index.qmd)*
