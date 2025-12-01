---
title: "Part IV: Data, Inputs & Feature Optimization"
---

## Overview

Effective wildfire modeling requires high-quality input data across fuels, weather, topography, and structures. This section provides guidance on data sources, conditioning, optimization strategies, and real-time ingestion.

## Contents

- [Input Importance Hierarchy](input-hierarchy.qmd) - Understanding which inputs matter most
- [Fuels Data](fuels/index.qmd) - Sources, conditioning, moisture, calibration
- [Weather & Climate Inputs](weather/index.qmd) - Critical variables, scenarios, real-time feeds
- [Topography & WUI Data](topography/index.qmd) - DEMs, parcel geometry, structure attributes
- [Validation Datasets](validation/index.qmd) - Historical fires, experiments, benchmarks
- [Real-Time Data Ingestion](realtime/index.qmd) - Satellite, aerial, sensors, low-latency optimization

## Key Principle

::: {.callout-important}
## Data Quality Hierarchy
Not all inputs are equally important. The fire behavior triangle guides prioritization:

1. **Fuels** - Often dominant in planning contexts
2. **Weather** - Critical for operations and extreme events
3. **Topography** - Important multiplier, generally static

Invest resources where they provide the greatest improvement in prediction quality for your specific application.
:::
