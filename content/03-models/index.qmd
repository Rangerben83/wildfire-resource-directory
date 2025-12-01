---
title: "Part III: Model Families & Methods"
---

## Overview

This section provides comprehensive coverage of wildfire modeling approaches, from empirical spread equations to coupled atmosphere-fire systems and machine learning surrogates.

## Model Families

### [Empirical & Semi-Empirical Models](empirical/index.qmd)
Foundation models including Rothermel equations, Fire Behavior Fuel Models (FBFMs), and surface/crown fire transitions.

### [Landscape Fire Spread Systems](landscape/index.qmd)
Deterministic spread models (MTT, FARSITE) and landscape burn probability systems for planning and operations.

### [Coupled Atmosphere-Fire Models](coupled/index.qmd)
Two-way coupling of fire and atmosphere (WRF-Fire) for extreme fire behavior and pyroconvection.

### [WUI & Physics-Based CFD](wui-cfd/index.qmd)
Large eddy simulation approaches (FDS, WFDS) for structure ignition and WUI exposure analysis.

### [Ember, Spotting & Smoke Models](ember-smoke/index.qmd)
Firebrand transport, spotting distance, and plume/smoke evolution models.

### [ML, AI & Hybrid Approaches](ml-ai/index.qmd)
Surrogates, emulators, physics-informed neural networks, and neural operators for acceleration and risk scoring.

## Model Selection

::: {.callout-tip}
## Choosing the Right Model
Different applications require different modeling approaches:

- **Planning & Treatment** → Landscape spread + burn probability
- **Real-Time Operations** → Coupled models or fast surrogates
- **WUI Risk Assessment** → CFD + parcel-level analysis
- **Insurance Underwriting** → Cat models + AI risk scores
- **Research & Development** → Coupled models + validation
:::

## Comparison Framework

See our [model comparison guide](../05-validation/comparisons.qmd) for detailed evaluation of strengths, limitations, computational requirements, and validation status across model families.
