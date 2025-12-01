# ChatGPT Prompt Library for Wildfire Resource Directory

## How to Use These Prompts

1. Copy the relevant prompt template
2. Fill in the bracketed placeholders [LIKE THIS]
3. Paste into ChatGPT (GPT-4 recommended)
4. Review and refine the output
5. Copy to Obsidian for final editing

---

## PROMPT 1: General Section Content

Use for: Most directory sections

```
You are an expert technical writer creating content for the Wildfire Modeling & Simulation Resource Directory by Rallypoint One LLC, developed under the NSF CO-WY ASCEND Engine initiative. This directory serves fire managers, utility operators, insurance professionals, researchers, and policymakers.

## SECTION TO WRITE
- **Part**: [PART_NUMBER] - [PART_TITLE]
- **Section**: [SECTION_NUMBER]
- **Title**: [SECTION_TITLE]
- **Subsections to cover**:
  [LIST EACH SUBSECTION FROM THE OUTLINE]

## CONTENT REQUIREMENTS

### Structure
1. Start with YAML frontmatter (see format below)
2. Begin with a "Key Takeaways" callout (3-5 bullet points)
3. Include an Overview paragraph (100-150 words)
4. Cover each subsection with appropriate depth
5. End with "Further Reading" section (5-8 authoritative sources)

### Formatting (Quarto Markdown)
- Use `::: {.callout-note}` for key insights
- Use `::: {.callout-tip}` for practical applications  
- Use `::: {.callout-warning}` for limitations/caveats
- Use `[[Term]]` wiki-links for glossary terms (e.g., [[rate of spread]])
- Include comparison tables where appropriate
- Mark figure suggestions as: `[FIGURE: Description of needed figure]`

### Writing Style
- Professional technical prose, not academic
- Explain concepts clearly for practitioners
- Include specific, actionable information
- Use citations in [Author, Year] or [Organization, Year] format
- Target length: 2,500-4,000 words

### Audience Context
Primary readers are:
- Fire behavior analysts and incident commanders
- Utility wildfire risk managers
- Insurance catastrophe modelers
- Academic researchers in fire science
- State/federal land management professionals

## OUTPUT FORMAT

```markdown
---
title: "[Section Title]"
description: "[One-sentence description]"
part: [number]
section: [number]
categories: 
  - [category1]
  - [category2]
tags:
  - wildfire-modeling
  - [tag1]
  - [tag2]
date: 2024-11-30
date-modified: 2024-11-30
bibliography: references.bib
---

# [Title]

::: {.callout-note}
## Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]
:::

## Overview

[Content...]

[Continue with full section content...]
```

## REFERENCE MATERIAL
[Paste relevant section from your outline document here]

Please generate the complete section content now.
```

---

## PROMPT 2: Wildfire Model Profile

Use for: Sections 6-11 (Model Families)

```
You are an expert technical writer creating a comprehensive model profile for the Wildfire Modeling & Simulation Resource Directory.

## MODEL TO DOCUMENT
- **Model Name**: [MODEL_NAME]
- **Model Type**: [Empirical/Semi-empirical/Physics-based/Coupled/ML-hybrid]
- **Category**: [Landscape Spread/WUI/Coupled Atmosphere/Ember-Smoke/Data-driven]

## REQUIRED SECTIONS

### 1. Overview & Purpose (200-300 words)
- What the model does
- Primary use cases
- Target users

### 2. History & Development
- Original development (when, where, by whom)
- Key milestones and versions
- Current maintainer/organization
- Funding sources

### 3. Scientific Basis
- Underlying physics/empirical relationships
- Key equations or algorithms (describe, don't derive)
- Assumptions and simplifications

### 4. Technical Specifications Table

| Attribute | Value |
|-----------|-------|
| **Spatial Resolution** | [e.g., 30m - 1km] |
| **Temporal Resolution** | [e.g., 1-hour timesteps] |
| **Domain Size** | [e.g., up to 100km x 100km] |
| **Runtime** | [e.g., 20-60 min for 24hr forecast] |
| **Hardware Requirements** | [e.g., Desktop, HPC, GPU] |
| **Operating System** | [Windows/Linux/Mac] |

### 5. Inputs & Outputs

**Required Inputs:**
- List each input with format/source

**Optional Inputs:**
- List optional/advanced inputs

**Outputs:**
- List all output types and formats

### 6. Validation Status
- Published validation studies
- Accuracy metrics (if available)
- Known performance in different conditions

### 7. Strengths & Limitations

::: {.callout-tip}
## Strengths
- [Strength 1]
- [Strength 2]
:::

::: {.callout-warning}
## Limitations
- [Limitation 1]
- [Limitation 2]
:::

### 8. Availability & Access
- Open source or proprietary
- License type
- Download/access URL
- Cost (if applicable)
- Training/support available

### 9. Related Models
- Links to [[related models]] in the directory

### 10. References
- 5-10 key papers/reports

## REFERENCE MATERIAL
[Paste any available documentation about this model]

Generate the complete model profile now.
```

---

## PROMPT 3: Data Source Profile

Use for: Sections 12-18 (Data & Inputs)

```
You are creating a data source profile for the Wildfire Modeling & Simulation Resource Directory.

## DATA SOURCE TO DOCUMENT
- **Name**: [DATA_SOURCE_NAME]
- **Category**: [Fuels/Weather/Topography/Infrastructure/Observations]
- **Provider**: [ORGANIZATION]

## REQUIRED SECTIONS

### 1. Overview (150 words)
What this data represents and why it matters for wildfire modeling

### 2. Data Specifications Table

| Attribute | Value |
|-----------|-------|
| **Provider** | [Organization] |
| **Coverage** | [Geographic extent] |
| **Spatial Resolution** | [e.g., 30m, 3km] |
| **Temporal Resolution** | [Update frequency] |
| **Format(s)** | [GeoTIFF, NetCDF, etc.] |
| **Coordinate System** | [e.g., WGS84, NAD83] |
| **File Size** | [Typical size] |
| **Access Method** | [Download, API, WMS] |
| **Cost** | [Free/Subscription/Cost] |
| **Last Updated** | [Date or frequency] |

### 3. Variables Included
List all variables with units and descriptions

### 4. Access Instructions
Step-by-step guide to obtaining the data

### 5. Quality Considerations
::: {.callout-warning}
## Data Limitations
- Known accuracy issues
- Spatial/temporal gaps
- Processing considerations
:::

### 6. Integration with Models
Which models commonly use this data and how

### 7. Alternative Sources
Similar data from other providers

### 8. CO-WY Region Specifics
Any regional considerations or known issues

### 9. References
- Official documentation
- Relevant papers

Generate the complete data source profile now.
```

---

## PROMPT 4: Glossary Entry Batch Generator

Use for: Section 3 (Glossary)

```
You are creating glossary entries for the Wildfire Modeling & Simulation Resource Directory. Generate entries for the following terms.

## TERMS TO DEFINE
[LIST 10-20 TERMS]

## FORMAT FOR EACH ENTRY

```markdown
### [Term]
**Definition**: [Clear, precise definition in 1-3 sentences]

**Context**: [Where/how this term is used in wildfire modeling]

**Related Terms**: [[term1]], [[term2]], [[term3]]

**See Also**: [[Section Name]] for detailed discussion

---
```

## REQUIREMENTS
- Definitions should be accessible to non-specialists
- Include units of measurement where applicable
- Distinguish between similar/related terms
- Use consistent formatting throughout
- Include pronunciation guide for technical terms if non-obvious

## EXAMPLE OUTPUT

### Rate of Spread (ROS)
**Definition**: The speed at which a fire front advances, typically measured in meters per minute (m/min) or chains per hour (ch/hr). In the US fire management community, 1 chain = 66 feet = 20.1 meters.

**Context**: ROS is a fundamental output of fire behavior models and varies dramatically based on fuel type, wind speed, slope, and fuel moisture. Values range from <1 m/min for backing fires to >100 m/min for crown fires in extreme conditions.

**Related Terms**: [[fireline intensity]], [[flame length]], [[head fire]], [[flanking fire]]

**See Also**: [[Section 4 - Fire Behavior Triangle]], [[Section 6 - Empirical Models]]

---

Generate glossary entries for the listed terms now.
```

---

## PROMPT 5: Role-Based Quick Guide

Use for: Role-based navigation pages

```
You are creating a role-based quick start guide for the Wildfire Modeling & Simulation Resource Directory.

## ROLE
[LAND MANAGER / EMERGENCY MANAGER / UTILITY OPERATOR / INSURANCE PROFESSIONAL / RESEARCHER]

## GUIDE REQUIREMENTS

### 1. Role Overview (100 words)
Describe this user's typical responsibilities and decisions related to wildfire

### 2. Key Questions This Directory Answers
List 5-7 questions this user type commonly asks

### 3. Priority Reading Path
Ordered list of sections to read, with brief explanation of relevance:

| Priority | Section | Why It Matters |
|----------|---------|----------------|
| 1 | [[Section Name]] | [Relevance explanation] |
| 2 | [[Section Name]] | [Relevance explanation] |
| ... | ... | ... |

### 4. Quick Reference Table
Role-specific summary of most relevant models/tools:

| Tool/Model | Best For | Your Use Case |
|------------|----------|---------------|
| [Name] | [Purpose] | [Specific application] |

### 5. Data Sources You Need
List of most relevant data sources with access links

### 6. Workflows
Link to relevant workflow sections with brief descriptions

### 7. Case Studies
Link to relevant case studies

### 8. External Resources
- Professional associations
- Training programs
- Key publications for this role

Generate the complete guide for [ROLE] now.
```

---

## PROMPT 6: Case Study Template

Use for: Sections 43-45 (Case Studies)

```
You are documenting a wildfire case study for the Wildfire Modeling & Simulation Resource Directory.

## FIRE EVENT
- **Name**: [FIRE NAME]
- **Location**: [Location, State]
- **Date(s)**: [Start - Containment dates]
- **Type**: [Landscape/WUI/Urban Conflagration]

## REQUIRED SECTIONS

### 1. Event Summary
- Size (acres burned)
- Structures destroyed/damaged
- Casualties (if any)
- Suppression costs
- Key distinguishing factors

### 2. Fire Behavior Analysis
- Ignition cause and location
- Weather conditions (including any extreme events)
- Fuel types involved
- Terrain influences
- Fire spread patterns
- Critical moments/transitions

### 3. Modeling Applications
- Models used during incident (if known)
- Post-fire modeling analyses
- Model performance assessment
- Lessons for model development

### 4. Data Availability
What observational data exists:
- [ ] Perimeter progression data
- [ ] Weather station records
- [ ] Satellite detections
- [ ] Structure damage surveys
- [ ] Post-fire imagery

### 5. Key Lessons
::: {.callout-important}
## Lessons Learned
1. [Lesson 1]
2. [Lesson 2]
3. [Lesson 3]
:::

### 6. Relevance to Directory Topics
Links to relevant sections this case illustrates

### 7. References
- Official incident reports
- Academic analyses
- Media coverage
- Available datasets

Generate the complete case study now.
```

---

## PROMPT 7: Cross-Reference and Link Generator

Use for: Adding links between sections after initial content is created

```
Review the following section content and identify:

1. **Glossary Terms**: Words/phrases that should link to the glossary
   - Format as: [[term]]

2. **Section Cross-References**: Concepts discussed elsewhere
   - Format as: See [[Section X - Title]] for more detail

3. **External Links Needed**: Topics that need authoritative external sources
   - List the topic and suggest search terms

4. **Related Content Boxes**: Suggest "See Also" items for the end

## CONTENT TO REVIEW
[PASTE SECTION CONTENT]

## OUTPUT FORMAT

### Glossary Links to Add
| Original Text | Link Format |
|---------------|-------------|
| "rate of spread" | [[rate of spread]] |
| ... | ... |

### Section Cross-References
| Context | Link to Add |
|---------|-------------|
| "As discussed in the empirical models section..." | [[Section 6 - Empirical Models]] |
| ... | ... |

### External Sources Needed
| Topic | Suggested Sources |
|-------|-------------------|
| [Topic] | [Organization/URL suggestion] |

### See Also Box Content
```markdown
::: {.callout-note}
## See Also
- [[Related Section 1]]
- [[Related Section 2]]
- [[Related Section 3]]
:::
```
```

---

## Tips for Better Results

1. **Be Specific**: The more context you provide, the better the output
2. **Iterate**: Don't expect perfect output on first try; refine prompts
3. **Chunk Large Sections**: Break into smaller requests if needed
4. **Verify Facts**: Always fact-check AI-generated content
5. **Maintain Voice**: Edit output to match Rallypoint's professional tone
6. **Update Prompts**: Refine prompts as you learn what works
