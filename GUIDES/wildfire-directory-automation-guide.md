# Wildfire Resource Directory: Content Automation & Workflow Guide

## Executive Summary

Based on my analysis of your current setup (Quarto + GitHub + Netlify + Obsidian + ChatGPT API), I've developed a comprehensive strategy to help you systematically populate your 46-section wildfire directory. This guide provides actionable recommendations for a non-technical user to automate content creation while maintaining professional quality and editorial control.

---

## Current Setup Assessment

### ✅ What's Working Well
- **Live Site**: https://rallypoint-wildfire-resources.netlify.app/ is functional with clean design
- **Tech Stack**: Quarto + GitHub + Netlify is excellent for technical documentation
- **Content Foundation**: Complete 12-part outline with 46 detailed sections
- **Reference Material**: Comprehensive source documents with 107+ citations

### ⚠️ Gaps to Address
1. **Content Population**: Most sections appear empty or minimal
2. **Automation Pipeline**: No systematic content generation workflow
3. **Template Standardization**: Need consistent formatting templates
4. **Cross-referencing**: No wiki-style backlink system implemented
5. **Bibliography Management**: No centralized citation system

---

## Recommended Workflow Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                        CONTENT GENERATION PIPELINE                          │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  1. SECTION SELECTION          2. AI GENERATION           3. EDITING       │
│  ┌─────────────────┐          ┌─────────────────┐       ┌─────────────────┐│
│  │ Chapter Tracker │    →     │ ChatGPT API     │   →   │ Obsidian        ││
│  │ (Spreadsheet)   │          │ with Prompts    │       │ (Local Edit)    ││
│  └─────────────────┘          └─────────────────┘       └─────────────────┘│
│          ↓                            ↓                         ↓          │
│                                                                             │
│  4. GITHUB SYNC               5. QUARTO BUILD           6. NETLIFY DEPLOY  │
│  ┌─────────────────┐          ┌─────────────────┐       ┌─────────────────┐│
│  │ GitHub Desktop  │    →     │ GitHub Actions  │   →   │ Auto Deploy     ││
│  │ (Push Changes)  │          │ (Build Site)    │       │ (Live Site)     ││
│  └─────────────────┘          └─────────────────┘       └─────────────────┘│
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## Phase 1: Foundation Setup (Week 1)

### 1.1 Create Chapter Tracking Spreadsheet

Create a Google Sheet or Excel file to track progress:

| Part | Section | Title | Status | Priority | Last Updated | Notes |
|------|---------|-------|--------|----------|--------------|-------|
| I | 1 | Welcome and Purpose | Draft | High | | Homepage |
| I | 2 | Quick Reference Guides | Not Started | High | | |
| I | 3 | Glossary | Not Started | Medium | | |
| II | 4 | Fire Behavior Triangle | Not Started | High | | Core content |
| II | 5 | Wildfire Scales | Not Started | High | | |
| ... | ... | ... | ... | ... | ... | ... |

**Status Options**: Not Started → In Progress → Draft → Review → Published

### 1.2 Create Master Template for Obsidian

Save this as `_templates/section-template.md` in your Obsidian vault:

```markdown
---
title: "{{title}}"
description: "{{description}}"
part: {{part_number}}
section: {{section_number}}
categories: 
  - {{category}}
tags:
  - wildfire-modeling
  - {{tag1}}
  - {{tag2}}
date: {{date}}
date-modified: {{date}}
bibliography: references.bib
---

# {{title}}

::: {.callout-note}
## Key Takeaways
- Point 1
- Point 2
- Point 3
:::

## Overview

[Introduction paragraph establishing context and importance]

## [Main Topic 1]

### [Subtopic 1.1]

[Content with proper citations [@citation_key]]

::: {.callout-tip}
## Practical Application
[Actionable insight for practitioners]
:::

### [Subtopic 1.2]

[Content]

## [Main Topic 2]

[Content with figures, tables as needed]

## Key Concepts

| Term | Definition | Related Sections |
|------|------------|------------------|
| [[Term 1]] | Definition | [[Section Link]] |
| [[Term 2]] | Definition | [[Section Link]] |

## Summary

[Concluding paragraph]

## Further Reading

- [Resource 1](url)
- [Resource 2](url)

## References

::: {#refs}
:::

---

*Last updated: {{date}}*
*Part of the [Wildfire Modeling & Simulation Resource Directory](../index.qmd)*
```

### 1.3 Set Up Obsidian Plugins

Install these essential Obsidian plugins (Community Plugins):

1. **Templater** - For template automation
2. **Dataview** - For dynamic content queries
3. **Citations** - For BibTeX integration
4. **Obsidian Git** - For GitHub sync (low-code option)
5. **Tag Wrangler** - For tag management
6. **Backlinks** - Enhanced backlink display
7. **Callout Manager** - Custom callout styles

---

## Phase 2: AI Content Generation System (Week 2)

### 2.1 ChatGPT Prompt Templates

Create these reusable prompts for consistent content generation:

#### Master Prompt Template

```markdown
You are an expert technical writer creating content for the Wildfire Modeling 
& Simulation Resource Directory by Rallypoint One LLC. This directory serves 
fire managers, utility operators, insurance professionals, researchers, and 
policymakers.

**SECTION TO WRITE:**
- Part: [PART_NUMBER] - [PART_TITLE]
- Section: [SECTION_NUMBER] - [SECTION_TITLE]
- Subsections to cover: [LIST FROM OUTLINE]

**WRITING REQUIREMENTS:**
1. Write in clear, professional technical prose
2. Include specific citations with [Author, Year] format
3. Use Quarto/Markdown formatting:
   - `::: {.callout-note}` for key insights
   - `::: {.callout-tip}` for practical applications
   - `::: {.callout-warning}` for limitations/caveats
   - `[[Term]]` wiki-links for glossary terms
4. Include tables for comparisons
5. Suggest figures/diagrams where appropriate with [FIGURE: description]
6. Target audience: technical professionals, not academics
7. Length: 2,000-4,000 words per section
8. Include "Key Takeaways" at the start
9. Include "Further Reading" section with 5-8 authoritative sources

**REFERENCE THESE SOURCES:**
[Paste relevant excerpts from your outline document]

**OUTPUT FORMAT:**
Provide the complete Markdown content with YAML frontmatter ready for Quarto.
```

#### Section-Specific Prompts

**For Model Family Sections (6-11):**
```markdown
[Master Prompt above, plus:]

**ADDITIONAL REQUIREMENTS FOR MODEL SECTIONS:**
- Include a comparison table with columns: Model Name, Type, Inputs, Outputs, 
  Computational Requirements, Availability (Open/Commercial), Best Use Cases
- Document: history/development, physics basis, validation status, limitations
- Rate each model's maturity: Research | Emerging | Operational
- Include code block examples of input/output formats where applicable
- Link to official documentation/repositories
```

**For Data Sections (12-18):**
```markdown
[Master Prompt above, plus:]

**ADDITIONAL REQUIREMENTS FOR DATA SECTIONS:**
- Include data source table: Source Name, Provider, Resolution, Update Frequency,
  Format, Access URL, Cost
- Document data quality considerations and known limitations
- Provide practical guidance on data acquisition
- Include example data schemas or API endpoints
```

### 2.2 Batch Content Generation Workflow

**Option A: Manual ChatGPT Interface (Simplest)**

1. Open ChatGPT (GPT-4 recommended)
2. Paste your Master Prompt + Section-Specific additions
3. Copy the outline section from your reference document
4. Generate content
5. Copy output to Obsidian
6. Edit and enhance manually

**Option B: Custom GPT (Recommended)**

Create a Custom GPT in ChatGPT with:
- **Name**: "Wildfire Directory Content Generator"
- **Instructions**: [Paste your Master Prompt]
- **Knowledge**: Upload your outline documents (RTF files)
- **Conversation Starters**: 
  - "Generate Section 4: Fire Behavior Triangle"
  - "Create a model comparison table for Section 6"
  - "Write the glossary entry for 'rate of spread'"

**Option C: API Automation (Advanced)**

If you want to scale with the API, here's a Python script structure:

```python
# content_generator.py
import openai
import os
from pathlib import Path

# Configuration
OPENAI_API_KEY = os.environ.get('OPENAI_API_KEY')
OUTPUT_DIR = Path('./content/')

SECTIONS = [
    {
        'part': 'II',
        'section': 4,
        'title': 'Wildfire Fundamentals and the Fire Behavior Triangle',
        'subsections': [
            'Fire behavior overview',
            'The fire behavior triangle: fuels, weather, topography',
            'WUI and structure fire dynamics',
            'Risk to society and systems'
        ]
    },
    # Add more sections...
]

def generate_section(section_info):
    """Generate content for a single section."""
    prompt = f"""
    [Your Master Prompt Here]
    
    Section: {section_info['section']} - {section_info['title']}
    Part: {section_info['part']}
    Subsections: {', '.join(section_info['subsections'])}
    """
    
    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=8000,
        temperature=0.7
    )
    
    return response.choices[0].message.content

def save_to_file(content, section_info):
    """Save generated content to Markdown file."""
    filename = f"section-{section_info['section']:02d}-{section_info['title'].lower().replace(' ', '-')}.qmd"
    filepath = OUTPUT_DIR / filename
    
    with open(filepath, 'w') as f:
        f.write(content)
    
    print(f"Saved: {filepath}")

# Main execution
if __name__ == "__main__":
    for section in SECTIONS:
        print(f"Generating: Section {section['section']}")
        content = generate_section(section)
        save_to_file(content, section)
```

---

## Phase 3: Formatting & Design Standards (Week 2-3)

### 3.1 Quarto Callout Styles

Use these consistently throughout:

```markdown
::: {.callout-note}
## Key Insight
Critical information the reader must understand.
:::

::: {.callout-tip}
## Practical Application
Actionable guidance for practitioners.
:::

::: {.callout-warning}
## Important Limitation
Caveats, constraints, or risks to be aware of.
:::

::: {.callout-important}
## Critical Safety Information
Life-safety or operational-critical information.
:::

::: {.callout-caution collapse="true"}
## Technical Details (Click to expand)
Detailed technical content for specialists.
:::
```

### 3.2 Standard Table Formats

**Model Comparison Table:**
```markdown
| Model | Type | Physics | Speed | Accuracy | Availability | Best For |
|-------|------|---------|-------|----------|--------------|----------|
| FARSITE | Empirical | Rothermel | Fast | 70-85% | Free | Planning |
| WRF-Fire | Coupled | CFD | Slow | 80-95% | Open Source | Research |
```

**Data Source Table:**
```markdown
| Source | Provider | Resolution | Frequency | Format | Access |
|--------|----------|------------|-----------|--------|--------|
| LANDFIRE | USGS | 30m | Annual | GeoTIFF | [Link](url) |
| HRRR | NOAA | 3km | Hourly | GRIB2 | [Link](url) |
```

### 3.3 Cross-Reference System

**Wiki-Style Backlinks:**
```markdown
The [[rate of spread]] depends on [[fuel moisture content]] and 
[[wind speed]]. See [[Section 6 - Empirical Models]] for details.
```

**Quarto Cross-References:**
```markdown
As discussed in @sec-fire-triangle, the relationship between 
fuels and weather is critical. See @fig-spread-diagram for 
a visual representation.
```

### 3.4 Bibliography Setup

Create `references.bib` in your project root:

```bibtex
@article{rothermel1972,
  author = {Rothermel, Richard C.},
  title = {A Mathematical Model for Predicting Fire Spread in Wildland Fuels},
  journal = {USDA Forest Service Research Paper},
  year = {1972},
  number = {INT-115}
}

@techreport{nist2023,
  author = {NIST},
  title = {Framework for Addressing the National Wildland Urban Interface Fire Problem},
  institution = {National Institute of Standards and Technology},
  year = {2023},
  url = {https://nvlpubs.nist.gov/nistpubs/technicalnotes/nist.tn.1748.pdf}
}

% Add more references as content develops
```

---

## Phase 4: Navigation & Site Structure (Week 3)

### 4.1 Recommended _quarto.yml Configuration

```yaml
project:
  type: website
  output-dir: _site

website:
  title: "Wildfire Modeling & Simulation Resource Directory"
  description: "Comprehensive guide to wildfire behavior modeling and simulation"
  
  navbar:
    logo: images/rallypoint-logo.png
    background: dark
    left:
      - text: "Home"
        href: index.qmd
      - text: "Directory"
        menu:
          - text: "Part I: Orientation"
            href: orientation/index.qmd
          - text: "Part II: Fundamentals"
            href: fundamentals/index.qmd
          - text: "Part III: Model Families"
            href: models/index.qmd
          - text: "Part IV: Data & Inputs"
            href: data/index.qmd
          - text: "Part V: VVUQ"
            href: vvuq/index.qmd
          # ... continue for all parts
      - text: "Quick Guides"
        menu:
          - text: "Land Manager"
            href: guides/land-manager.qmd
          - text: "Emergency Ops"
            href: guides/emergency-ops.qmd
          - text: "Utility Operator"
            href: guides/utility-operator.qmd
          - text: "Insurance Professional"
            href: guides/insurance.qmd
          - text: "Researcher"
            href: guides/researcher.qmd
      - text: "Glossary"
        href: glossary/index.qmd
      - text: "About"
        href: about.qmd
    right:
      - icon: github
        href: https://github.com/Rangerben83/wildfire-resource-directory
      - icon: search

  sidebar:
    - id: fundamentals
      title: "Fire Behavior Fundamentals"
      style: "floating"
      contents:
        - section: "The Fire Triangle"
          contents:
            - fundamentals/fire-behavior-triangle.qmd
            - fundamentals/fuels.qmd
            - fundamentals/weather.qmd
            - fundamentals/topography.qmd
        - section: "Wildfire Scales"
          contents:
            - fundamentals/landscape-scale.qmd
            - fundamentals/wui-scale.qmd
            - fundamentals/urban-conflagration.qmd
            - fundamentals/atmospheric-coupling.qmd
    # Add more sidebar sections...

  page-navigation: true
  reader-mode: true
  
  search:
    location: navbar
    type: overlay

format:
  html:
    theme:
      light: flatly
      dark: darkly
    css: styles.css
    toc: true
    toc-depth: 3
    toc-location: right
    number-sections: true
    code-fold: true
    code-tools: true

bibliography: references.bib
csl: apa.csl
```

### 4.2 Folder Structure

```
wildfire-resource-directory/
├── _quarto.yml
├── index.qmd                          # Homepage
├── about.qmd                          # About Rallypoint
├── references.bib                     # Master bibliography
├── styles.css                         # Custom styles
├── images/
│   ├── rallypoint-logo.png
│   ├── diagrams/
│   └── figures/
│
├── orientation/                       # Part I
│   ├── index.qmd                      # Part overview
│   ├── welcome.qmd                    # Section 1
│   ├── quick-reference.qmd            # Section 2
│   └── glossary.qmd                   # Section 3
│
├── fundamentals/                      # Part II
│   ├── index.qmd
│   ├── fire-behavior-triangle.qmd     # Section 4
│   └── wildfire-scales.qmd            # Section 5
│
├── models/                            # Part III
│   ├── index.qmd
│   ├── empirical/
│   │   ├── index.qmd                  # Section 6
│   │   ├── rothermel.qmd
│   │   └── fbfm.qmd
│   ├── landscape/                     # Section 7
│   ├── coupled/                       # Section 8
│   ├── physics-based/                 # Section 9
│   ├── ember-smoke/                   # Section 10
│   └── ml-hybrid/                     # Section 11
│
├── data/                              # Part IV (Sections 12-18)
├── vvuq/                              # Part V (Sections 19-20)
├── agencies/                          # Part VI (Sections 21-23)
├── utilities/                         # Part VII (Sections 24-26)
├── insurance/                         # Part VIII (Sections 27-31)
├── commercial/                        # Part IX (Sections 32-34)
├── workflows/                         # Part X (Sections 35-39)
├── governance/                        # Part XI (Sections 40-42)
├── case-studies/                      # Part XII (Sections 43-46)
│
└── guides/                            # Role-based quick guides
    ├── land-manager.qmd
    ├── emergency-ops.qmd
    ├── utility-operator.qmd
    ├── insurance.qmd
    └── researcher.qmd
```

---

## Phase 5: GitHub & Deployment Automation (Week 3-4)

### 5.1 Low-Code GitHub Workflow

**Option A: GitHub Desktop (Easiest)**

1. Download [GitHub Desktop](https://desktop.github.com/)
2. Clone your repository
3. Edit files in Obsidian (pointing to the cloned folder)
4. In GitHub Desktop: Stage changes → Commit → Push
5. Netlify auto-deploys

**Option B: Obsidian Git Plugin (Automated)**

1. Install "Obsidian Git" plugin
2. Configure settings:
   - Auto-pull on startup: ✓
   - Auto-push after commit: ✓
   - Commit interval: 30 minutes (or manual)
3. Use Command Palette: "Obsidian Git: Commit and push"

### 5.2 GitHub Actions for Quarto Build

Create `.github/workflows/publish.yml`:

```yaml
name: Build and Deploy Quarto Site

on:
  push:
    branches: [main]
  workflow_dispatch:

jobs:
  build-deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Quarto
        uses: quarto-dev/quarto-actions/setup@v2

      - name: Render Quarto Project
        run: quarto render

      - name: Deploy to Netlify
        uses: nwtgck/actions-netlify@v2
        with:
          publish-dir: './_site'
          production-deploy: true
        env:
          NETLIFY_AUTH_TOKEN: ${{ secrets.NETLIFY_AUTH_TOKEN }}
          NETLIFY_SITE_ID: ${{ secrets.NETLIFY_SITE_ID }}
```

### 5.3 Netlify Configuration

Create `netlify.toml` in your repository root:

```toml
[build]
  publish = "_site"
  command = "quarto render"

[build.environment]
  QUARTO_PRINT_STACK = "true"

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200
```

---

## Phase 6: Content Population Priority Order

### Recommended Section Order

**Sprint 1: Foundation (Weeks 1-2)**
1. ✅ Section 1: Welcome and Purpose (already done)
2. Section 4: Fire Behavior Triangle (core concept)
3. Section 5: Wildfire Scales (establishes framework)
4. Section 3: Glossary (start with 50 key terms)

**Sprint 2: Model Families (Weeks 3-4)**
5. Section 6: Empirical Models (Rothermel, FBFM)
6. Section 7: Landscape Fire Spread (FARSITE, MTT)
7. Section 8: Coupled Atmosphere-Fire (WRF-Fire)
8. Section 9: Physics-Based WUI (FDS, WFDS)

**Sprint 3: Data & Applications (Weeks 5-6)**
9. Section 12: Fire Behavior Triangle Inputs
10. Section 13: Fuels Data
11. Section 14: Weather Inputs
12. Section 21: Planning Workflows

**Sprint 4: Stakeholder Content (Weeks 7-8)**
13. Section 24: Electric Utilities
14. Section 27: Insurance Overview
15. Section 2: Quick Reference Guides
16. Role-based guides (Land Manager, Emergency Ops, etc.)

**Sprint 5: Advanced Topics (Weeks 9-10)**
17. Section 11: ML and Hybrid Models
18. Section 19: VVUQ Frameworks
19. Section 35: End-to-End Pipelines
20. Section 38: Digital Twin Architectures

**Sprint 6: Case Studies & Polish (Weeks 11-12)**
21. Section 43: CO-WY Case Studies
22. Section 44: WUI Disaster Studies
23. Section 45: Utility/Insurance Cases
24. Complete Glossary
25. Cross-reference audit

---

## Phase 7: Manual Enhancement Checklist

After AI generates each section, manually:

### Content Enhancement
- [ ] Verify all factual claims against sources
- [ ] Add specific CO-WY regional examples
- [ ] Include Rallypoint perspective/expertise
- [ ] Add "Why This Matters" framing for business development
- [ ] Ensure proper attribution to NIST, USFS, academic sources

### Visual Elements
- [ ] Create/source relevant diagrams (use draw.io, Mermaid)
- [ ] Add photographs (USFS image library, Unsplash with attribution)
- [ ] Design comparison tables
- [ ] Create flowcharts for workflows

### Cross-References
- [ ] Add wiki-links to glossary terms
- [ ] Link to related sections
- [ ] Add "See Also" boxes
- [ ] Verify all external URLs work

### Quality Assurance
- [ ] Spell-check and grammar review
- [ ] Ensure consistent terminology
- [ ] Verify Quarto renders correctly
- [ ] Test navigation and links
- [ ] Preview on mobile device

---

## Quick Reference: Daily Workflow

```
MORNING (30 min)
1. Check tracker spreadsheet for today's section
2. Review outline for that section
3. Generate initial content with ChatGPT

MIDDAY (60-90 min)
4. Paste content into Obsidian
5. Apply template formatting
6. Add callouts and tables
7. Insert wiki-links for glossary terms

AFTERNOON (30 min)
8. Manual review and enhancement
9. Add images/diagrams
10. Commit and push to GitHub
11. Verify Netlify deployment
12. Update tracker spreadsheet
```

---

## Tools Summary

| Tool | Purpose | Cost | Learning Curve |
|------|---------|------|----------------|
| Obsidian | Content editing | Free | Low |
| ChatGPT Plus | Content generation | $20/mo | Low |
| GitHub Desktop | Version control | Free | Low |
| Netlify | Hosting | Free tier | None (auto) |
| Quarto | Site generation | Free | Medium |
| draw.io | Diagrams | Free | Low |
| Zotero | Bibliography | Free | Medium |

---

## Support Resources

- **Quarto Documentation**: https://quarto.org/docs/
- **Obsidian Help**: https://help.obsidian.md/
- **GitHub Guides**: https://guides.github.com/
- **ChatGPT Best Practices**: https://platform.openai.com/docs/guides/prompt-engineering

---

*Document prepared for Rallypoint One LLC*
*Last updated: November 2024*
