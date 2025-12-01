---
title: "Rothermel Fire Spread Model"
description: "The foundational mathematical model for predicting wildfire rate of spread and intensity"
date: last-modified
categories: [models, empirical, surface-fire, rothermel]
---

## Overview

The Rothermel surface fire spread model, published in 1972, stands as the most widely used tool for wildfire behavior modeling not only in the United States but throughout the world . The model is embedded in dozens of computerized fire behavior systems used for fire management planning, training, and operational predictions .

After 50 years of operational use, the Rothermel model remains the foundation of wildfire prediction despite dramatic advances in computing and observational technology.

## Historical Development

### Origins at Missoula Fire Lab

The development of the Rothermel model and associated research was conducted in the 1960s and 1970s at the Missoula Fire Sciences Laboratory . The initial work used fuel arrays composed of uniform size particles, including 0.026-inch-square cut excelsior, 1/4-inch sticks, and 1/2-inch sticks, tested over a wide range of bulk densities .

### Publication and Immediate Adoption

Rothermel's 1972 paper "A Mathematical Model for Predicting Fire Spread in Wildland Fuels" presented a mathematical fire model for predicting rate of spread and intensity applicable to a wide range of wildland fuels and environments . The model was implemented immediately in 1972 for the new National Fire Danger Rating System (NFDRS) for determining indices of potential fire activity and behavior, and it remains used in this capacity today .

### Recognition and Legacy

In November 2022, Rothermel was honored with an award for "outstanding contribution to fire science" at the International Conference for Forest Fire Research in Coimbra, Portugal , commemorating the 50th anniversary of this groundbreaking work.

## Model Structure and Approach

### Conceptual Foundation

Rothermel's paper detailed the structure and function of a quasi-empirical model for calculating the steady state spread rate and intensity of a wildland surface fire . The model balances heat generation from combustion with heat required to ignite adjacent fuel particles.

### Key Simplifications

With wildfire predictions restricted to the steady state spread of a linear heading fire, the complexity of fuel and environmental conditions could be greatly simplified . This pragmatic approach enabled operational use while maintaining reasonable accuracy.

### Input Requirements

Rothermel defined a fire behavior fuel model as "a complete set of [fuel] inputs for the mathematical fire spread model" . Fuel models are often used to define fuel input parameters, and dynamic fuel models use equations for live fuel curing .

## Fuel Models

### Original Fuel Model Set

Hypothetical models for use in the National Fire-Danger Rating System were developed from the original model (intended for dead fuels) to represent 11 fuel types in temperate regions of the USA . Rothermel's 1972 paper included a list of 11 fuel models representing typical field situations containing a complete set of inputs for the mathematical fire spread model .

### Expanded Fuel Model Sets

Standard fire behavior fuel models represent a comprehensive set for use with Rothermel's surface fire spread model . These fuel models have been expanded and refined over the decades to represent a wider range of fuel conditions.

## Model Components and Associated Developments

### Fire Spread Equation

The core Rothermel spread equation predicts rate of spread based on:
- Fuel characteristics (loading, surface area, heat content)
- Fuel moisture content
- Wind speed and direction
- Slope steepness
- Environmental modifiers

### Fireline Intensity and Flame Length

The Rothermel model is generally used with other models including fireline intensity and flame length . These associated equations translate rate of spread into operationally relevant metrics for firefighter safety and suppression difficulty.

### Adjustments by Albini

The Rothermel surface fire spread model, with some adjustments by Frank A. Albini in 1976, has been used in fire and fuels management systems since 1972 .

### Extensions and Enhancements

Models have been developed for the effect of cross-slope wind and for fire spread in directions other than head fire , extending the original formulation to more complex spread scenarios.

## Applications and Operational Systems

### Current Uses

A wider range of uses for this revolutionary model were envisioned in those early days, including localized fire behavior prediction, large-scale simulation of wildfires, and planning for fuel treatments and prescribed burning . Applications for all of these needs have come into operational use.

### Embedded in Decision Support Systems

The Rothermel model forms the computational core of numerous fire behavior prediction systems:

- **BEHAVE**: Fire behavior prediction and fuel modeling system
- **FARSITE**: Fire Area Simulator for spatial fire growth
- **FlamMap**: Landscape fire behavior mapping
- **IFTDSS**: Interagency Fuel Treatment Decision Support System
- **NFDRS**: National Fire Danger Rating System
- **BehavePlus**: Desktop fire behavior modeling

## Strengths and Advantages

### Practical Input Requirements

The broad and continuing success of the Rothermel Model is partly due to the practical input requirements and the reasonable predictions that are robust to uncertainties .

### Computational Efficiency

The model's algebraic formulation enables rapid calculation, supporting real-time predictions and large-scale spatial simulations across entire landscapes.

### Empirical Validation

Decades of operational use and comparison with observed fire behavior have validated the model's predictions across diverse fuel types and environmental conditions.

## Limitations and Assumptions

### Steady-State Spread

The model assumes steady-state conditions - fire has reached equilibrium spread rate. This may not hold during:
- Initial fire growth phase
- Transitions between fuel types
- Rapidly changing weather conditions
- Complex topographic features

### Surface Fire Focus

The original Rothermel model addresses surface fire spread. Crown fire dynamics require additional models (e.g., Van Wagner crown fire initiation, Rothermel crown fire spread).

### Uniform Fuel Beds

The model assumes relatively uniform fuel characteristics across the area of interest. Spatial heterogeneity in fuels requires fuel model mapping and may introduce uncertainty.

### Fuel Model Selection

Accuracy depends critically on appropriate fuel model selection, which requires field expertise and can be subjective for complex fuel conditions.

## Comparison with National Fire Danger Rating System

While the spread model is used in the U.S. National Fire Danger Rating System (NFDRS), there are significant differences . The NFDRS uses modified equations and specialized fuel models optimized for fire danger rating rather than precise spread prediction.

## Continuing Relevance

### Enduring Foundation

Despite enjoying immense advantages in technology, the enduring difficulties of wildfire science and associated development of practical tools routinely reminds us of the significance of achievements by Rothermel and his team in producing the spread model over 50 years ago .

### Future Challenges

Looking forward to the next half-century, escalating challenges in managing wildfires and their impacts will be faced, with a large and growing worldwide research community continuing to pursue both improved knowledge of fire physics and practical advances in fire modeling .

## Technical References

::: {.callout-note icon=false}
## Primary References

- **Rothermel, R.C. 1972**. "A mathematical model for predicting fire spread in wildland fuels." USDA Forest Service Research Paper INT-115.

- **Andrews, P.L. 2018**. "The Rothermel surface fire spread model and associated developments: A comprehensive explanation." Gen. Tech. Rep. RMRS-GTR-371. Fort Collins, CO: U.S. Department of Agriculture, Forest Service.

- **Scott, J.H. and Burgan, R.E. 2005**. "Standard fire behavior fuel models: a comprehensive set for use with Rothermel's surface fire spread model." Gen. Tech. Rep. RMRS-GTR-153.
:::

## Related Content

- [Fire Behavior Fuel Models (FBFMs)](fbfm.qmd)
- [Landscape Fire Spread Systems](../landscape/index.qmd)
- [Fuels Data and Optimization](../../04-data/fuels/index.qmd)

---

*This content is part of the Wildfire Modeling & Simulation Resource Directory, developed by Rallypoint One LLC.*
