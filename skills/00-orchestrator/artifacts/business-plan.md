# Business Plan — Generator Template

> This is a generator template, not a final document. It tells the orchestrator HOW to compose a comprehensive Business Plan from skill outputs and internet research. Each of the 13 parts specifies: source skills, required research, content structure, and cross-references.

---

## Artifact Metadata

When generating the Business Plan, include this frontmatter:

```markdown
---
artifact: business-plan
generated_by: Orchestrator (Skills 01-12)
startup: [startup name from intake]
date: [YYYY-MM-DD generation date]
version: 1.0
research_sources: [list of URLs from WebSearch research]
---
```

## Target Specifications

- **Total length:** 15,000-25,000 words (comprehensive)
- **Audience:** Founders (internal planning), Investors (due diligence), Advisors (feedback)
- **Tone:** Professional, evidence-based, specific. Avoid vague language ("significant market opportunity") — use numbers and citations ("$4.2B market growing at 12% CAGR, per Grand View Research 2025")
- **Disclaimers required:** General + Financial + Legal + Investment (see `shared/disclaimer-templates.md`)
- **Format:** Follow `shared/artifact-format.md` for structure, headers, tables, and citations

---

## Part I: Investor One-Pager

### Purpose
Single-page executive snapshot for investors who will decide in 60 seconds whether to read further. This is the first page of the document and the most important — it must convey the full thesis in under 500 words.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Company name, tagline | Intake questionnaire |
| Problem statement | Skill 01 (Idea Validation) — validated problem in customer language |
| Solution summary | Skill 05 (Product) — core product description |
| Market size | Skill 01 (market signals) + WebSearch research |
| Traction metrics | Skill 08 (Growth & Analytics) — North Star metric, ARR, growth rate |
| Business model | Skill 02 (Business Model) — revenue model type, key unit economics |
| Team summary | Skill 09 (Operations) — founder bios, key team members |
| The Ask | Skill 03 (Fundraising) — amount, instrument, use of funds |

### Content Structure
```
[COMPANY NAME] — [Tagline]

PROBLEM: [2-3 sentences from Skill 01 validated problem statement. Use customer language, not founder language. Include a specific data point: "X% of [customer type] spend Y hours per week on Z."]

SOLUTION: [2-3 sentences from Skill 05 product description. What it does, not how it works. Focus on the outcome for the customer.]

MARKET: [TAM/SAM/SOM from WebSearch research with citation. Bottom-up calculation, not top-down estimate. "We target [SAM segment] within the $[TAM]B [industry] market."]

TRACTION: [Key metrics from Skill 08. Format: "$[X]K MRR, [Y]% MoM growth, [Z] paying customers, [W]% monthly retention." If pre-revenue: "[N] pilot customers, [M] waitlist signups, [K] LOIs signed."]

MODEL: [Revenue model from Skill 02. Format: "[Model type] with [pricing summary]. LTV:CAC [ratio]. Payback period: [months]."]

TEAM: [Founder names + one-line credibility statements from Skill 09. Format: "[Name], [role] — [relevant credential: 'previously VP Eng at [Company], scaled team from 5 to 80.'"]

THE ASK: [From Skill 03. Format: "Raising $[X] via [instrument] at $[Y] pre-money. Use of funds: [3 bullet points]. Milestone: [what this capital achieves]."]
```

### Cross-References
- Problem statement should match Part III (Company & Product) and Pitch Deck Slide 2
- Market size should match Part IV (Market Analysis) and Pitch Deck Slide 4
- Traction should match Part VI (GTM Playbook) metrics and Pitch Deck Slide 6
- Financial numbers should match Part X (Financial Model) and Pitch Deck Slide 9

---

## Part II: Executive Summary

### Purpose
800 words maximum. Distills the entire business plan into a standalone narrative that a reader could use to understand the full thesis without reading any other section. Written last, after all other parts are complete.

### Source Skills
All 12 skills (distilled). Every completed skill contributes one key insight.

### Content Structure
```
## Executive Summary

[Opening paragraph: The problem and why it matters now. 3-4 sentences drawing from Skill 01 validation evidence. End with the market timing argument — why this problem is solvable NOW when it wasn't before.]

[Company paragraph: What [Company Name] does and how. 3-4 sentences from Skill 05 product description + Skill 02 business model. Include the positioning statement from Skill 02: "For [customer] who [situation], [Company] is the [category] that [unique value]."]

[Market paragraph: Size and growth. 2-3 sentences from WebSearch research. TAM/SAM/SOM with bottom-up math. Growth drivers that make the market attractive.]

[Traction paragraph: What you have achieved so far. 2-3 sentences from Skill 08 growth metrics. Key milestones, customer count, revenue, retention. If pre-revenue, describe validation evidence from Skill 01.]

[Business model paragraph: How you make money. 2-3 sentences from Skill 02 unit economics. Revenue model, pricing, LTV:CAC, payback period. Gross margin if available from Skill 10.]

[Go-to-market paragraph: How you acquire customers. 2-3 sentences from Skills 04, 06, 07. Primary channel, sales methodology, marketing strategy. Cost of acquisition.]

[Team paragraph: Why this team wins. 2-3 sentences from Skill 09. Founder-market fit from Skill 01. Key hires and their relevant credentials.]

[Financial paragraph: The numbers. 2-3 sentences from Skill 10. Current burn, runway, 3-year revenue projection (Year 1/2/3 ranges). Path to profitability or next round.]

[The Ask paragraph: What you need. 2-3 sentences from Skill 03. Amount, instrument, use of funds, milestone this round achieves. Expected timeline.]
```

### Quality Check
- Total length must not exceed 800 words
- Every number in the executive summary must appear identically in its source Part
- No jargon without definition
- A reader with no prior context should understand the thesis after reading only this section

---

## Part III: Company & Product

### Purpose
Detailed description of the company, the product, and the problem-solution fit. This is the narrative core of the plan.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Company overview | Intake questionnaire (name, founding date, mission) |
| Problem definition | Skill 01 (Idea Validation) — validated problem, customer quotes, workarounds |
| Product description | Skill 05 (Product) — PRD summary, core features, user flow |
| Product roadmap | Skill 05 (Product) — RICE-scored roadmap, release timeline |
| Validation evidence | Skill 01 — interview insights, market signals, PMF indicators |

### Content Structure
```
## Part III: Company & Product

### Company Overview
[Company name, legal entity type (from Skill 12), founding date, mission statement, location, team size. 1 paragraph.]

### The Problem
[From Skill 01: Describe the problem using validated customer language. Include:
- Specific customer archetype experiencing the problem
- Quantified pain (hours wasted, money lost, risk created)
- Current workarounds and why they fail
- 2-3 verbatim customer quotes from interviews (if available)
- Market signals: complaint volume, search demand, competitor review gaps]

### The Solution
[From Skill 05: Describe the product.
- Core functionality (what it does, not how)
- Key differentiator (from Skill 02 positioning)
- User experience flow (3-5 step customer journey)
- Technology approach (high level — no implementation details)]

### Product Roadmap
[From Skill 05: Present the phased roadmap.
- Phase 1 (Current / MVP): features shipped or in development
- Phase 2 (Next 6 months): prioritized by RICE score
- Phase 3 (6-18 months): strategic features for market expansion
Include a table: Feature | Priority (RICE) | Status | Target Date]

### Validation Evidence
[From Skill 01: Summarize the evidence that this product should exist.
- Number of customer interviews conducted
- Key findings and patterns
- Validation scorecard result (if applicable)
- GO verdict rationale
- Founder-market fit score and assessment]
```

### Cross-References
- Problem should match Part I one-pager and Pitch Deck Slide 2
- Solution should match Pitch Deck Slide 3
- Roadmap should align with financial milestones in Part X

---

## Part IV: Market Analysis

### Purpose
Data-driven market sizing and trend analysis. This section REQUIRES internet research — do not generate it from assumptions alone.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Initial market signals | Skill 01 (Idea Validation) — search volume, complaint data |
| Market positioning | Skill 02 (Business Model) — target segment definition |
| Validated market data | WebSearch research (required) |

### Required WebSearch Queries
Run these queries and incorporate findings:
```
"[industry] market size [current_year]"
"[industry] market size forecast [current_year + 5]"
"[industry] growth rate CAGR"
"[industry] total addressable market report"
"[specific_segment] market size [current_year]"
"[industry] market trends [current_year]"
"[industry] market drivers"
"[industry] adoption rate statistics"
```

### Content Structure
```
## Part IV: Market Analysis

### Total Addressable Market (TAM)
[From WebSearch: The total revenue opportunity if the product achieved 100% market share.
- Top-down estimate with citation: "According to [Source] ([URL], accessed [date]), the global [industry] market was valued at $[X]B in [year] and is projected to reach $[Y]B by [year], growing at [Z]% CAGR."
- Bottom-up validation: "[N target customers] x [$annual contract value] = $[TAM]. Based on [source for customer count]."
- If top-down and bottom-up disagree by >50%, note the discrepancy and explain.]

### Serviceable Addressable Market (SAM)
[The portion of TAM that your product can serve given its current capabilities and go-to-market reach.
- Define the filter: geography, company size, industry segment, willingness to adopt
- Calculate: "[N customers in target segment] x [$ACV] = $[SAM]"
- SAM should be 10-30% of TAM for a focused startup.]

### Serviceable Obtainable Market (SOM)
[The realistic market share you can capture in 3-5 years.
- Calculate: "[SAM] x [realistic penetration rate — typically 1-5% in year 1, 5-15% by year 3]"
- Benchmark penetration rate against comparable companies at a similar stage]

### Market Trends
[From WebSearch: 3-5 trends driving market growth.
For each trend:
- Trend name and description
- Evidence (data point with citation)
- Impact on your business (how this trend benefits your positioning)]

### Market Timing
[Why NOW? What has changed that makes this market accessible today when it wasn't 3-5 years ago? Technology shifts, regulatory changes, behavioral changes, cost structure changes.]

### Market Risks
[2-3 risks that could shrink or eliminate the market opportunity. Be honest — investors respect founders who understand market risks.]
```

### Research Quality Rules
- Every market size number must have a citation (source, URL, date)
- Cross-reference at least 2 sources for TAM
- Clearly label estimates vs. hard data
- Flag conflicting sources: "Source A reports $X; Source B reports $Y. The discrepancy likely reflects [reason]."

### Cross-References
- TAM/SAM/SOM must match Pitch Deck Slide 4
- Market trends should align with the timing argument in Part II (Executive Summary)
- SOM should be consistent with revenue projections in Part X (Financial Model)

---

## Part V: Competitive Analysis

### Purpose
Honest assessment of the competitive landscape. Saying "we have no competitors" is a red flag — it means either no market exists or the founder has not done the research.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Competitive alternatives map | Skill 02 (Business Model) — April Dunford positioning |
| Unique capabilities | Skill 02 — structural differentiators |
| Positioning statement | Skill 02 — "For [customer] who [situation]..." |
| Competitor details | WebSearch research (required) |

### Required WebSearch Queries
```
"[competitor_name] funding round [current_year]"
"[competitor_name] revenue"
"[competitor_name] pricing"
"[competitor_name] reviews"
"[industry] startups [current_year]"
"[industry] competitive landscape analysis"
"[competitor_name] vs [other_competitor]"
"alternatives to [competitor_name]"
"[industry] market leaders"
```

### Content Structure
```
## Part V: Competitive Analysis

### Competitive Landscape Overview
[2-3 paragraph summary of the competitive environment. Categories of competitors: direct, indirect, alternatives (including "do nothing" and manual workarounds).]

### Competitor Profiles
[For each major competitor (3-5):

**[Competitor Name]**
- Founded: [year]. Funding: $[amount] ([source with URL]). Revenue: [if available]
- What they do: [1-2 sentences]
- Pricing: [$X/mo or pricing model] ([source])
- Strengths: [2-3 bullet points]
- Weaknesses: [2-3 bullet points — from customer reviews, G2, Trustpilot]
- Why we win against them: [1-2 sentences — specific, not generic]]

### Competitive Positioning Map
[From Skill 02 April Dunford positioning:
- 2x2 matrix with axes that reflect YOUR strengths (choose axes where you are differentiated)
- Place competitors on the map with brief rationale
- Explain why you chose these axes — they should reflect what the CUSTOMER cares about, not what you think is impressive]

### Positioning Statement
[From Skill 02: "For [best-fit customer] who [specific situation], [Company] is the [category] that [unique value]. Unlike [primary alternative], we [differentiating capability]."]

### Competitive Moat
[What structural advantages protect your position over time? Network effects, data advantages, switching costs, regulatory barriers, IP, brand, proprietary technology? Be specific — "better technology" is not a moat.]

### Competitive Risks
[How could competitors respond? What happens if a well-funded incumbent launches a similar product? Be honest about vulnerabilities.]
```

### Cross-References
- Positioning map should match Pitch Deck Slide 8
- Competitor pricing should inform Part X (Financial Model) pricing assumptions
- Competitive moat should align with Part III (Company & Product) differentiator

---

## Part VI: GTM Playbook

### Purpose
Comprehensive go-to-market strategy covering pre-launch through growth. Integrates outputs from three skills into a phased playbook.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Channel strategy and launch plan | Skill 04 (Go-to-Market) — channels, timeline, first-100 playbook |
| Sales methodology and pipeline | Skill 06 (Sales) — methodology, outreach, conversion metrics |
| Content and distribution | Skill 07 (Marketing & Brand) — content strategy, distribution plan |
| Growth metrics and experiments | Skill 08 (Growth & Analytics) — AARRR dashboard, experiments |

### Content Structure
```
## Part VI: GTM Playbook

### Phase 0: Pre-Launch (Month -3 to Launch)
[From Skill 04:
- Waitlist / pre-launch strategy
- Content marketing to build audience
- Product Hunt or launch event preparation
- Early access / beta program design
- Target: [N] waitlist signups before launch]

### Phase 1: Launch & First 100 Customers (Months 1-6)
[From Skills 04 + 06:
- Primary acquisition channel and rationale
- First-100-customers playbook (step by step)
- Founder-led sales approach (from Skill 06)
- Outreach sequences and messaging (from Skill 06)
- Launch event or campaign details (from Skill 04)
- Target metrics: [N] customers, $[X] MRR by month 6]

### Phase 2: Establishing Growth Loops (Months 6-18)
[From Skills 06 + 07 + 08:
- Sales process transition from founder-led to repeatable (from Skill 06)
- Content marketing engine: pillar content, distribution 80/20 (from Skill 07)
- Brand building: voice, guidelines, community (from Skill 07)
- Growth experiments framework (from Skill 08)
- North Star metric and AARRR dashboard (from Skill 08)
- Target metrics: [N] customers, $[X] MRR, [Y]% MoM growth]

### Phase 3: Scaling Acquisition (Months 18-36)
[From Skills 06 + 07 + 08:
- Paid acquisition at scale (from Skill 07 distribution plan)
- Sales team buildout (from Skill 06 transition criteria)
- Channel partnerships and integrations
- International expansion (if applicable)
- Target metrics: $[X] ARR, [Y] sales reps, [Z]% growth rate]

### Customer Acquisition Cost by Channel
[Table from Skills 02 + 06 + 07:
| Channel | CAC | Conversion Rate | Time to Close | Notes |
Use benchmark data from Skill 02 unit economics]

### Key Growth Metrics
[From Skill 08 AARRR dashboard:
- Acquisition: [metric + target]
- Activation: [metric + target]
- Retention: [metric + target]
- Revenue: [metric + target]
- Referral: [metric + target]]
```

### Cross-References
- CAC numbers must match Part X (Financial Model) assumptions
- Channel strategy should align with Part VII (Marketing & Sales Strategy)
- Traction metrics should match Pitch Deck Slide 6
- Phase timeline should align with funding milestones in Part XI

---

## Part VII: Marketing & Sales Strategy

### Purpose
Detailed marketing and sales execution plan. This part goes deeper into the HOW of customer acquisition than the phased overview in Part VI.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Sales methodology and pipeline | Skill 06 (Sales) |
| Brand voice and content strategy | Skill 07 (Marketing & Brand) |
| Distribution channels | Skill 07 (Marketing & Brand) — 80/20 rule |
| Pricing and value proposition | Skill 02 (Business Model) |

### Content Structure
```
## Part VII: Marketing & Sales Strategy

### Brand Strategy
[From Skill 07:
- Brand voice and personality (2-3 sentences)
- Brand guidelines summary (tone, language, visual identity principles)
- Key messaging: tagline, elevator pitch, value proposition]

### Content Strategy
[From Skill 07:
- Pillar content topics (3-5 themes)
- Content calendar cadence (weekly/biweekly/monthly)
- Distribution plan with 80/20 allocation:
  - 20% creation: blog, video, podcast, etc.
  - 80% distribution: social, email, partnerships, syndication, ads]

### Sales Methodology
[From Skill 06:
- Selected methodology (MEDDIC / BANT / Challenger / PLG) and rationale
- Sales process stages with definitions
- Average deal size and cycle length
- Founder-to-team transition plan and criteria]

### Sales Pipeline
[From Skill 06:
- Pipeline stages and conversion targets
| Stage | Definition | Target Conversion | Average Time |
- Outreach sequence (high-level)
- Sales collateral requirements]

### Community Building
[From Skill 07:
- Community strategy: platform, engagement model
- Community ladder: lurker → contributor → advocate → ambassador
- Events, webinars, user groups]

### PR and Communications
[From Skill 07:
- PR strategy for launch and key milestones
- Media targets and outreach approach
- Crisis communication principles]
```

### Cross-References
- Sales pipeline metrics should feed Part X revenue projections
- Brand messaging should be consistent with Part III product description
- Distribution channels should match Part VI GTM Playbook

---

## Part VIII: Operations Plan

### Purpose
Organizational structure, team, hiring plan, OKRs, and governance. How the company runs.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Org chart and hiring plan | Skill 09 (Operations) |
| OKR framework | Skill 09 (Operations) |
| Board governance | Skill 09 (Operations) |
| Team bios | Intake questionnaire + Skill 09 |

### Content Structure
```
## Part VIII: Operations Plan

### Team
[Current team with bios. For each member:
- Name, title, key responsibility
- Relevant background (focus on why they are right for THIS company)
- Full-time / part-time / advisory]

### Organizational Structure
[From Skill 09:
- Current org chart
- Planned org chart (12-month and 24-month)
- Reporting lines and functional areas]

### Hiring Plan
[From Skill 09:
| Role | Priority | Target Hire Date | Salary Range | Rationale |
- First 5 hires in priority order with justification
- Key hires tied to milestones (e.g., "hire first sales rep after $50K MRR")]

### OKR Framework
[From Skill 09:
- Company-level OKRs (3-5 objectives with key results)
- Team-level OKRs (mapped to company OKRs)
- OKR cadence: quarterly setting, monthly check-in, quarterly review]

### Governance
[From Skills 09 + 12:
- Board composition (current and planned)
- Board meeting cadence
- Investor reporting cadence and format
- Advisory board (if applicable)]

### Infrastructure
[Office/remote, tools, processes. Keep brief — 1-2 paragraphs.]
```

### Cross-References
- Hiring plan costs must match Part X headcount projections
- OKR targets should align with Part VI growth metrics
- Team bios should match Pitch Deck Slide 7

---

## Part IX: Customer Success Strategy

### Purpose
How you keep and grow the customers you acquire. Retention is the foundation of sustainable growth.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Onboarding flow | Skill 11 (Customer Success) — TTFV metrics |
| Customer health scoring | Skill 11 — dimensions and thresholds |
| Churn analysis | Skill 11 — segmented by timing |
| Expansion revenue | Skill 11 — strategy and targets |
| Product features for onboarding | Skill 05 (Product) — user flow |

### Content Structure
```
## Part IX: Customer Success Strategy

### Onboarding
[From Skill 11:
- Onboarding flow (step by step from signup to value realization)
- Time-to-First-Value (TTFV) target and how it is measured
- Onboarding success criteria (what does "activated" mean?)
- Self-serve vs. high-touch onboarding (based on ACV)]

### Customer Health Scoring
[From Skill 11:
- Health score dimensions (usage, engagement, support tickets, NPS, expansion signals)
- Score thresholds: Healthy / At-Risk / Critical
- Alert triggers and intervention playbook]

### Churn Prevention
[From Skill 11:
- Churn segmentation by timing (30-day, 90-day, 6-month, annual)
- Root causes by segment
- Prevention playbook for each segment
- Target churn rate and improvement plan]

### Expansion Revenue
[From Skill 11:
- Expansion strategy (upsell, cross-sell, seat expansion)
- Expansion triggers (usage thresholds, feature limits, team growth)
- Net revenue retention target (>100% for SaaS)]

### Support Model
[Support tiers, SLA, self-serve resources, escalation path. Brief — 1 paragraph + table.]
```

### Cross-References
- Churn rate must match Part X assumptions in financial model
- NRR target should be consistent with Part X revenue projections
- Onboarding flow should reference Part III product features

---

## Part X: Financial Model

### Purpose
Revenue model, cost structure, unit economics, 3-year projections, and scenario analysis. This section REQUIRES both skill outputs and benchmark research.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Revenue model and pricing | Skill 02 (Business Model) |
| Unit economics (LTV, CAC, payback) | Skill 02 (Business Model) |
| Burn rate and runway | Skill 10 (Finance & Accounting) |
| Cash flow forecast | Skill 10 — 13-week forecast |
| 3-year projections | Skill 10 — revenue, costs, headcount |
| Scenario analysis | Skill 10 — base, optimistic, pessimistic |
| Headcount plan costs | Skill 09 (Operations) |
| Funding amount and terms | Skill 03 (Fundraising) |

### Required WebSearch Queries
```
"[industry] gross margin benchmark"
"[industry] SaaS metrics benchmark [current_year]"
"[industry] average LTV CAC ratio"
"[industry] operating margin benchmark"
"[industry] revenue per employee benchmark"
"[industry] burn rate benchmark seed stage"
```

### Content Structure
```
## Part X: Financial Model

*Note: This section is educational. Consult a qualified accountant or financial advisor for advice specific to your situation.*

### Revenue Model
[From Skill 02:
- Revenue model type and rationale
- Pricing tiers with conversion assumptions
- Revenue stream breakdown (primary, secondary)]

### Unit Economics
[From Skill 02:
| Metric | Value | Source | Confidence |
|--------|-------|--------|------------|
| LTV | $[X] | [calculated / estimated] | [H/M/L] |
| CAC | $[X] | [calculated / estimated] | [H/M/L] |
| LTV:CAC | [X]:1 | calculated | — |
| Payback Period | [X] months | calculated | — |
| Gross Margin | [X]% | [calculated / benchmark] | [H/M/L] |
| Monthly Churn | [X]% | [measured / estimated] | [H/M/L] |

Industry benchmarks: "[Industry] average LTV:CAC is [X]:1 (source: [citation])."
Note all assumptions explicitly.]

### Cost Structure
[From Skill 10:
- Fixed costs: salaries, rent, tools, insurance
- Variable costs: hosting, payment processing, customer acquisition
- Cost breakdown by category (table)]

### 3-Year Revenue Projections
[From Skill 10:
| Metric | Year 1 | Year 2 | Year 3 |
|--------|--------|--------|--------|
| Revenue | $[range] | $[range] | $[range] |
| Customers | [range] | [range] | [range] |
| ARR | $[range] | $[range] | $[range] |
| Gross Margin | [X]% | [X]% | [X]% |
| Operating Expense | $[X] | $[X] | $[X] |
| Net Income | ($[X]) | ($[X]) | $[X] |
| Headcount | [N] | [N] | [N] |

Key assumptions driving projections:
- Customer growth rate: [X]% MoM in Year 1, [Y]% in Year 2, [Z]% in Year 3
- ARPU: $[X] (Year 1) → $[Y] (Year 3) due to [reason]
- Churn: [X]% monthly (Year 1) → [Y]% (Year 3) due to [improvement plan]
- CAC: $[X] (Year 1) → $[Y] (Year 3) due to [channel mix evolution]]

### Scenario Analysis
[From Skill 10:
| Scenario | Revenue (Y3) | Customers (Y3) | Runway | Key Assumption Changed |
|----------|-------------|----------------|--------|----------------------|
| Base | $[X] | [N] | [months] | Current trajectory |
| Optimistic | $[X] | [N] | [months] | [faster growth / lower churn] |
| Pessimistic | $[X] | [N] | [months] | [slower growth / higher CAC] |

For each scenario: explain what would need to be true and what the response plan is.]

### Cash Flow and Runway
[From Skill 10:
- Current monthly burn (gross and net)
- Current runway in months
- Post-funding runway (from Skill 03 amount)
- 13-week cash flow summary
- Break-even timeline]
```

### Research Integration
- Compare unit economics to industry benchmarks from WebSearch
- Note where the startup's metrics are above or below benchmark and explain why
- All benchmark citations must include source, URL, and date

### Cross-References
- Revenue projections must match Part II executive summary financial paragraph
- Unit economics must match Part I one-pager
- Headcount costs must match Part VIII hiring plan
- Funding amount must match Part XI
- Revenue must be consistent with Part VI GTM targets

---

## Part XI: Funding Requirements

### Purpose
Clear articulation of how much capital is needed, what it will fund, and what milestones it will achieve.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Round size, instrument, terms | Skill 03 (Fundraising) |
| Use of funds breakdown | Skill 03 — milestone-based budgeting |
| Cap table impact | Skill 03 — dilution modeling |
| Runway extension | Skill 10 (Finance & Accounting) |
| Investor strategy | Skill 03 — outreach plan |

### Content Structure
```
## Part XI: Funding Requirements

### The Ask
[From Skill 03:
- Amount: $[X]
- Instrument: [SAFE / convertible note / priced round]
- Pre-money valuation: $[X] (or valuation cap for SAFE)
- Target close date: [date]]

### Use of Funds
[From Skill 03:
| Category | Amount | % of Round | Purpose |
|----------|--------|-----------|---------|
| Product & Engineering | $[X] | [X]% | [specific deliverables] |
| Sales & Marketing | $[X] | [X]% | [specific targets] |
| Operations & Hiring | $[X] | [X]% | [specific hires] |
| Working Capital / Buffer | $[X] | [X]% | [runway buffer] |

Each category ties to a specific milestone — not general "growth."]

### Milestones This Round Achieves
[From Skill 03:
- Milestone 1: [specific, measurable] — by [date]
- Milestone 2: [specific, measurable] — by [date]
- Milestone 3: [specific, measurable] — by [date]
These milestones should position the company to raise the NEXT round at 3-5x valuation.]

### Post-Raise Runway
[From Skill 10:
- Monthly burn post-raise: $[X]
- Runway: [N] months
- Path to next round: [timeline and required traction]]

### Cap Table Summary
[From Skills 03 + 12:
| Shareholder | Pre-Round | Post-Round |
|------------|-----------|-----------|
| Founder(s) | [X]% | [X]% |
| Existing Investors | [X]% | [X]% |
| New Investors | — | [X]% |
| Option Pool | [X]% | [X]% |

Note: Full cap table with dilution modeling available in Appendix.]
```

### Cross-References
- Amount must match Part I one-pager and Pitch Deck Slide 10
- Use of funds must align with Part VIII hiring plan and Part X cost projections
- Milestones must align with Part VI GTM targets
- Cap table must match Part XII legal structure

---

## Part XII: Legal & Compliance

### Purpose
Entity structure, intellectual property, regulatory requirements, and risk management. This section handles the legal foundation.

### Source Skills
| Data Point | Source |
|-----------|--------|
| Entity structure | Skill 12 (Legal & Compliance) — type, jurisdiction |
| Cap table | Skill 12 — ownership, vesting |
| Compliance requirements | Skill 12 — by industry/jurisdiction |
| IP status | Skill 12 — assignments, filings |
| SAFE/investment terms | Skill 03 (Fundraising) |

### Required WebSearch Queries (for regulated industries)
```
"[industry] regulations [jurisdiction] [current_year]"
"[industry] compliance requirements"
"[industry] licensing requirements [jurisdiction]"
"[industry] data privacy requirements"
```

### Content Structure
```
## Part XII: Legal & Compliance

*Note: This section is educational. Consult a qualified attorney licensed in your jurisdiction for advice specific to your situation.*

### Entity Structure
[From Skill 12:
- Entity type: [LLC / C-Corp / S-Corp / etc.] and rationale
- State/jurisdiction of incorporation
- Registered agent
- EIN / tax ID status]

### Cap Table
[From Skill 12:
- Current ownership breakdown (table)
- Vesting schedules for founders and employees
- Option pool size and terms
- Outstanding SAFEs, convertible notes, or warrants]

### Intellectual Property
[From Skill 12:
- IP assignment agreements: signed / pending / not started
- Patents: filed / pending / planned / not applicable
- Trademarks: filed / pending / planned
- Trade secrets: documented / protected by NDA]

### Regulatory Compliance
[From Skill 12 + WebSearch:
- Applicable regulations by jurisdiction
- Current compliance status
- Required licenses or certifications
- Data privacy compliance (GDPR, CCPA, etc.)
- Industry-specific requirements]

### Key Agreements
[List of critical legal agreements:
- Founder agreements
- Employee/contractor agreements
- Customer contracts (template terms)
- Vendor agreements
- NDA templates]

### Legal Risks
[From Skill 12:
- Identified legal risks and mitigation plans
- Unresolved legal issues
- Recommended legal actions with priority and timeline]
```

### Cross-References
- Cap table must match Part XI
- Entity type should align with funding strategy in Part XI
- Compliance requirements may affect Part X cost projections

---

## Part XIII: Risk Analysis

### Purpose
Honest assessment of what could go wrong, organized by category, with mitigation strategies. Investors respect founders who understand their risks.

### Source Skills
All 12 skills contribute risks from their respective domains.

### Content Structure
```
## Part XIII: Risk Analysis

### Market Risks
[From Skills 01, 02 + WebSearch:
| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| Market smaller than projected | [H/M/L] | [H/M/L] | [specific action] |
| Market timing wrong (too early/late) | [H/M/L] | [H/M/L] | [specific action] |
| Regulatory change restricts market | [H/M/L] | [H/M/L] | [specific action] |]

### Execution Risks
[From Skills 04, 05, 06, 09:
| Risk | Likelihood | Impact | Mitigation |
| Product development delays | [H/M/L] | [H/M/L] | [specific action] |
| Key hire failure | [H/M/L] | [H/M/L] | [specific action] |
| GTM channel underperformance | [H/M/L] | [H/M/L] | [specific action] |]

### Financial Risks
[From Skills 03, 10:
| Risk | Likelihood | Impact | Mitigation |
| Fundraising takes longer than expected | [H/M/L] | [H/M/L] | [specific action] |
| Burn rate exceeds projections | [H/M/L] | [H/M/L] | [specific action] |
| Unit economics don't improve at scale | [H/M/L] | [H/M/L] | [specific action] |]

### Competitive Risks
[From Skill 02 + WebSearch:
| Risk | Likelihood | Impact | Mitigation |
| Well-funded competitor launches similar product | [H/M/L] | [H/M/L] | [specific action] |
| Incumbent adds competing feature | [H/M/L] | [H/M/L] | [specific action] |
| Price war in the market | [H/M/L] | [H/M/L] | [specific action] |]

### Regulatory Risks
[From Skill 12:
| Risk | Likelihood | Impact | Mitigation |
| New regulation increases compliance cost | [H/M/L] | [H/M/L] | [specific action] |
| Data privacy enforcement action | [H/M/L] | [H/M/L] | [specific action] |]

### Customer Risks
[From Skills 08, 11:
| Risk | Likelihood | Impact | Mitigation |
| Churn rate exceeds projections | [H/M/L] | [H/M/L] | [specific action] |
| Customer concentration (top customer > 20% revenue) | [H/M/L] | [H/M/L] | [specific action] |]

### Overall Risk Rating
[Summary: which risk category is highest, what is the most likely failure mode, and what is the team's plan to address it.]
```

### Cross-References
- Financial risks should reference Part X scenarios
- Market risks should reference Part IV market analysis
- Competitive risks should reference Part V competitive analysis

---

## Appendices

### Purpose
Supporting data that is too detailed for the main document but valuable for due diligence.

### Content
```
## Appendices

### Appendix A: Detailed Financial Tables
[Month-by-month projections for Year 1 from Skill 10. Quarterly for Years 2-3. Include: revenue, COGS, gross profit, operating expenses by category, EBITDA, cash balance.]

### Appendix B: Team Bios
[Full bios for all team members from Skill 09 intake. LinkedIn URLs. Relevant experience detailed.]

### Appendix C: Customer Interview Summary
[From Skill 01: anonymized interview summaries with key quotes and signal scores.]

### Appendix D: Product Screenshots / Mockups
[From Skill 05: product visuals if available.]

### Appendix E: Research Sources
[Complete list of all WebSearch sources used:
| Source | URL | Date Accessed | Data Used |
All sources cited in Parts IV, V, X, XII.]

### Appendix F: Cap Table Detail
[Full cap table with dilution modeling through Series A from Skills 03, 12.]

### Appendix G: Glossary
[Define any industry-specific terms used in the document.]
```

---

## Assembly Checklist

Before delivering the Business Plan, verify:

- [ ] All 13 parts are present and complete
- [ ] Artifact metadata (frontmatter) is filled in correctly
- [ ] All financial numbers are internally consistent across parts
- [ ] Market data is cited with source, URL, and date
- [ ] Cross-references between parts are accurate
- [ ] Pitch Deck numbers match Business Plan numbers (if both generated)
- [ ] Assumptions are explicitly listed in each section and compiled in Part X
- [ ] Disclaimers are included: General + Financial + Legal + Investment
- [ ] Next Steps section is present with actionable recommendations
- [ ] Appendices include all supporting data
- [ ] Document follows `shared/artifact-format.md` formatting guidelines
- [ ] No "[TODO]", "[INSERT]", or "[placeholder]" text remains in the final document

---

## Disclaimers

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.

> **Financial Disclaimer:** The financial projections, unit economics, and calculations in this document are estimates based on stated assumptions and industry benchmarks. They do not constitute financial advice. Actual results will vary based on market conditions, execution, and factors not captured in this model. Consult a qualified accountant or financial advisor before making financial decisions. Do not use these projections as the sole basis for investment decisions.

> **Legal Disclaimer:** This content is educational and informational only. It does not constitute legal advice and should not be relied upon as such. Laws and regulations vary by jurisdiction and change frequently. The information provided may not reflect the most current legal developments. Consult a qualified attorney licensed in your jurisdiction before making legal decisions, forming entities, signing agreements, or issuing equity.

> **Investment Disclaimer:** This document is for informational purposes only and does not constitute an offer to sell, a solicitation of an offer to buy, or a recommendation for any security or investment. Past performance is not indicative of future results. All investments involve risk, including the possible loss of principal. The information herein is based on projections and assumptions that may not materialize.
