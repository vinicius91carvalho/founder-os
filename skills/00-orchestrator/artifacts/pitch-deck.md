# Pitch Deck — Generator Template

> This is a generator template, not a final document. It tells the orchestrator HOW to compose a 10-slide Sequoia/YC hybrid pitch deck from skill outputs and internet research. Each slide specifies: source skills, content prompts, research queries, and cross-references to the Business Plan.

---

## Artifact Metadata

When generating the Pitch Deck, include this frontmatter:

```markdown
---
artifact: pitch-deck
generated_by: Orchestrator (Skills 01, 02, 03, 05, 08, 09, 10)
startup: [startup name from intake]
date: [YYYY-MM-DD generation date]
version: 1.0
research_sources: [list of URLs from WebSearch research]
---
```

## Target Specifications

- **Total length:** 2,000-4,000 words (concise, presentation-ready)
- **Slides:** 10 slides, each with a single purpose
- **Audience:** Investors in first and second meetings
- **Tone:** Confident, specific, evidence-based. Every slide earns the right to advance to the next slide
- **Disclaimers required:** General + Financial + Investment (see `shared/disclaimer-templates.md`)
- **Format:** Follow `shared/artifact-format.md` for structure, headers, tables, and citations

## Design Principles

1. **One idea per slide.** If a slide makes two points, split it or cut the weaker one
2. **Show, don't tell.** Screenshots > descriptions. Numbers > adjectives. Customer quotes > claims
3. **Answer the investor's mental question.** Each slide answers a specific question the investor is asking silently (noted below)
4. **Build narrative momentum.** Problem → Solution → Proof → Ask. Each slide makes the next slide more compelling
5. **Specific > generic.** "We grew 22% MoM for 6 consecutive months" beats "We're experiencing rapid growth"

---

## Slide 1: Title

### Investor's Mental Question
"What is this company and should I pay attention?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Company name | Intake questionnaire |
| Tagline | Intake questionnaire / Skill 07 (Marketing & Brand) brand messaging |
| Founder name(s) | Intake questionnaire |
| Contact information | Intake questionnaire |
| Round information | Skill 03 (Fundraising) — stage and amount |

### Content Prompts
```
[COMPANY NAME]

[Tagline — one sentence that captures what the company does. Not a mission statement. Not jargon. A stranger should understand it in 5 seconds.]

[Founder Name(s)] | [Stage: Pre-Seed / Seed / Series A]
[Contact email] | [Website]
```

### Guidelines
- Tagline test: Can someone outside your industry understand it? If not, simplify
- Do not include: mission statement, vision, values, or founding story. Those are for the pitch narrative, not the slide
- Format: Clean, uncluttered. Company name is the largest text element

### Cross-References
- Tagline should match Business Plan Part I (Investor One-Pager)
- Round stage should match Business Plan Part XI

---

## Slide 2: Problem

### Investor's Mental Question
"Is this a real problem that enough people have?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Validated problem statement | Skill 01 (Idea Validation) — problem in customer language |
| Customer quotes | Skill 01 — verbatim from interviews |
| Pain quantification | Skill 01 — market signals, complaint volume, workaround evidence |
| Founder-market fit context | Skill 01 — why this founder understands this problem |

### Content Prompts
```
## The Problem

[Specific customer + specific pain. Not "the market is inefficient." Instead: "Operations managers at mid-market SaaS companies spend 10+ hours per week manually reconciling vendor invoices. It's the #1 complaint in finance ops communities."]

[Evidence that the problem is real — choose the strongest 2-3 from Skill 01:]
- Customer quote: "[Verbatim quote from interview]" — [Name/title, anonymized if needed]
- Quantified impact: [Hours wasted / money lost / risk created per customer per year]
- Market signal: [complaint volume, search demand, workaround prevalence]

[Current workaround and why it fails: "Today, teams use [specific workaround]. This breaks because [specific failure mode]."]
```

### Guidelines
- Make the pain visceral. One specific story beats five statistics
- The problem must feel urgent — a "nice to solve" problem does not warrant investor attention
- Use customer language, not founder language. "Invoice reconciliation is painful" (customer) vs. "Our platform leverages AI to optimize financial workflows" (founder jargon)
- If no customer interviews exist (pre-validation), use market signals from Skill 01 desk research: Reddit complaints, bad reviews, search volume

### Cross-References
- Problem statement should match Business Plan Part III (Company & Product)
- Pain quantification should be consistent with Business Plan Part IV (Market Analysis) market sizing

---

## Slide 3: Solution

### Investor's Mental Question
"How does this product solve the problem, and is the approach compelling?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Product description | Skill 05 (Product) — PRD core features, user flow |
| Key differentiator | Skill 02 (Business Model) — positioning unique capability |
| Product screenshot or mockup | Skill 05 (Product) — if available |

### Content Prompts
```
## The Solution

[One-sentence product description: "[Company] [does what] for [whom]."]

[Show the product — screenshot, mockup, or 3-step user flow diagram. Visuals earn more attention than text.]

[Core benefit (not feature): "Reduces month-end close from 5 days to 1 day" — not "automated reconciliation engine."]

[How it works — 3 steps maximum:
1. [User does X] → 2. [Product does Y] → 3. [Customer gets Z outcome]]

[Key insight or technology advantage — 1 sentence: "Our approach works because [specific insight that competitors missed]."]
```

### Guidelines
- Show the product working, not a description of the product
- Focus on the OUTCOME for the customer, not the features of the product
- The "how it works" section should be simple enough that a non-technical investor understands it
- If no product exists yet, show mockups or wireframes from Skill 05

### Cross-References
- Product description should match Business Plan Part III (Company & Product)
- Differentiator should match Business Plan Part V (Competitive Analysis) positioning

---

## Slide 4: Market

### Investor's Mental Question
"Is this market big enough to build a billion-dollar company?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Initial market signals | Skill 01 (Idea Validation) — search volume, market indicators |
| Target segment | Skill 02 (Business Model) — best-fit customer definition |
| Market research | WebSearch research (required for this slide) |

### Required WebSearch Queries
```
"[industry] market size [current_year]"
"[industry] total addressable market"
"[industry] growth rate CAGR forecast"
"[specific_segment] market size"
"[industry] market trends [current_year]"
```

### Content Prompts
```
## Market Opportunity

TAM: $[X]B — [Industry] market ([Source], [year])
SAM: $[X]B — [Specific segment you can serve]
SOM: $[X]M — [Realistic capture in 3-5 years]

[Bottom-up math — this is what investors trust:
"[N target customers] x $[annual contract value] = $[SAM]"
"Based on [source for customer count]."]

[1-2 key market trends that create tailwinds:
- "[Trend 1]" — [data point with citation]
- "[Trend 2]" — [data point with citation]]

[Why NOW? What changed that makes this market accessible today?]
```

### Guidelines
- Bottom-up math is mandatory. Top-down TAM alone ("$50B market") is a red flag — every investor has seen this trick
- TAM must be > $1B for VC relevance. If SAM < $500M, the market may be too small for venture returns
- Cite every number. "According to [Source] ([URL], [date])..." — uncited market numbers destroy credibility
- "Why now" is the most underrated part of this slide. Timing is what separates a good idea from a fundable company

### Research Quality Rules
- At least 2 independent sources for TAM
- Market data within last 2 years
- If sources conflict, note the range: "$X-$Y depending on definition"
- Flag when using proxies: "Direct market data unavailable; using [proxy] as estimate"

### Cross-References
- TAM/SAM/SOM must match Business Plan Part IV (Market Analysis) exactly
- Market trends should align with Part IV market trends section
- SOM should be consistent with Part X (Financial Model) Year 3 revenue projection

---

## Slide 5: Business Model

### Investor's Mental Question
"How does this company make money, and are the economics attractive?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Revenue model type | Skill 02 (Business Model) — model selection |
| Pricing structure | Skill 02 — tiers, prices, upgrade triggers |
| Unit economics | Skill 02 — LTV, CAC, payback period, LTV:CAC |
| Gross margin | Skill 10 (Finance & Accounting) — if available |

### Content Prompts
```
## Business Model

[Revenue model in one sentence: "Subscription SaaS with per-seat pricing."]

[Pricing table — keep simple:
| Tier | Price | Target Customer |
| Starter | $[X]/mo | [segment] |
| Growth | $[X]/mo | [segment] |
| Enterprise | $[X]/mo | [segment] |]

[Unit Economics:
- LTV: $[X] ([actual / estimated])
- CAC: $[X] ([actual / estimated])
- LTV:CAC: [X]:1 (benchmark: 3:1 minimum)
- Payback: [X] months
- Gross Margin: [X]%]

[Expansion path: how revenue per customer grows over time — seat expansion, upsell, usage growth.]
```

### Guidelines
- One revenue model, clearly explained. Multiple revenue streams at seed stage = red flag
- Show unit economics even if estimated. Investors expect founders to know their economics
- If LTV:CAC < 3:1, explain the path to improvement — don't hide it
- Expansion revenue is a bonus: "Customers start at $99/mo and expand to $500/mo within 12 months" is compelling

### Cross-References
- Pricing must match Business Plan Part X (Financial Model) revenue assumptions
- Unit economics must match Part X unit economics table
- Revenue model must match Part VII (Marketing & Sales Strategy) sales methodology

---

## Slide 6: Traction

### Investor's Mental Question
"Is this working? Is it growing?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Growth metrics | Skill 08 (Growth & Analytics) — North Star, ARR, MoM growth |
| Customer count and retention | Skill 08 — AARRR dashboard, cohort data |
| Key milestones | Skill 08 — experiment results, inflection points |
| Sales pipeline data | Skill 06 (Sales) — conversion metrics |
| Pre-revenue validation | Skill 01 (Idea Validation) — if no revenue yet |

### Content Prompts

**If the startup has revenue:**
```
## Traction

[Hero metric — the single most impressive number, displayed prominently:
"$[X]K MRR" or "[Y]% MoM growth" or "[Z] paying customers"]

[Growth chart — monthly revenue or customer count over time. The curve matters more than the absolute number. Up and to the right.]

[Key metrics table:
| Metric | Current | 3 Months Ago | Trend |
| MRR/ARR | $[X] | $[Y] | [growth %] |
| Paying Customers | [N] | [N] | [growth %] |
| MoM Growth | [X]% | — | [consistency] |
| Monthly Retention | [X]% | — | — |
| NPS | [X] | — | — |]

[2-3 milestone achievements:
- "[Month]: Launched product"
- "[Month]: Hit $[X]K MRR"
- "[Month]: Signed first enterprise customer"]
```

**If the startup is pre-revenue:**
```
## Traction & Validation

[Lead with the strongest validation signal from Skill 01:
- "[N] customer interviews, [X]% described the problem unprompted"
- "[N] waitlist signups in [timeframe]"
- "[N] LOIs signed, representing $[X]K in committed revenue"
- "[N] pilot customers actively using MVP"]

[Engagement metrics if MVP exists:
- DAU/MAU: [ratio]
- Feature adoption: [key feature usage]
- User feedback: [NPS or qualitative signal]]

[Key milestones:
- "[Month]: Completed customer discovery — [N] interviews"
- "[Month]: Launched MVP to [N] beta users"
- "[Month]: Secured [N] LOIs / design partners"]
```

### Guidelines
- This is the most important slide for companies with traction. Investors decide here
- Show rate of change, not just absolute numbers. $50K MRR growing 25% MoM is more exciting than $500K MRR growing 2% MoM
- Do not use vanity metrics: total signups (without active users), total revenue (without MRR breakdown), total users (without retention)
- If pre-revenue, lead with the strongest validation evidence — customer commitment > waitlist > interviews
- Be honest about what the numbers are. Labeling an estimate as actual data will surface in diligence

### Cross-References
- Revenue metrics must match Business Plan Part X (Financial Model) current period
- Growth rate should align with Part VI (GTM Playbook) targets
- Pre-revenue validation should match Part III (Company & Product) validation evidence

---

## Slide 7: Team

### Investor's Mental Question
"Are these the right people to build this specific company?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Founder bios and credentials | Skill 09 (Operations) — team bios |
| Founder-market fit | Skill 01 (Idea Validation) — founder-market fit assessment |
| Key hires planned | Skill 09 (Operations) — hiring plan |
| Advisor network | Intake questionnaire |

### Content Prompts
```
## Team

[For each founder/key team member (2-4 people max on this slide):

**[Name], [Title]**
[1 sentence: What they did before that is directly relevant to THIS company.]
[1 sentence: Specific achievement that demonstrates capability — "Scaled [Company X] from $0 to $5M ARR" or "Built the data infrastructure at [Company Y] used by 10M users."]
[If applicable: domain expertise signal — "[N] years in [industry]" or "Previously [role] at [relevant company]"]
]

[Founder-market fit statement — from Skill 01:
"Why us: [1-2 sentences explaining the unique insight or experience that makes this team non-replicable for this problem.]"]

[Key hires planned — from Skill 09:
"Next hires: [Role 1] (Q[X]), [Role 2] (Q[Y])"]

[Notable advisors — if applicable:
"Advisors: [Name] ([credential]), [Name] ([credential])"]
```

### Guidelines
- Answer "Why are THESE people right for THIS problem?" — not "look at our impressive resumes"
- Domain expertise > pedigree. "10 years in healthcare compliance" > "ex-Google"
- If the team has a gap (e.g., no technical co-founder), acknowledge it and show the plan: "Hiring CTO in Q2 — 3 candidates in pipeline"
- Keep to 2-4 people. Listing 8 team members dilutes the signal

### Cross-References
- Team bios should match Business Plan Part VIII (Operations Plan) team section
- Founder-market fit should match Part III (Company & Product) validation evidence
- Hiring plan should match Part VIII hiring plan and Part X headcount projections

---

## Slide 8: Competition

### Investor's Mental Question
"Why will you win against existing and future competitors?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Competitive positioning map | Skill 02 (Business Model) — April Dunford positioning |
| Unique capabilities | Skill 02 — structural differentiators |
| Competitor details | WebSearch research (required) |

### Required WebSearch Queries
```
"[competitor_name] funding"
"[competitor_name] pricing"
"[competitor_name] reviews"
"[industry] competitive landscape [current_year]"
"alternatives to [main_competitor]"
```

### Content Prompts
```
## Competition

[2x2 positioning map with axes that reflect YOUR strengths:
- X-axis: [dimension where you are differentiated — e.g., "Ease of Use" vs. "Configuration Complexity"]
- Y-axis: [dimension where you are differentiated — e.g., "SMB Focus" vs. "Enterprise Only"]
- Place 4-6 competitors + your company on the map
- You should be in the top-right (or whichever quadrant represents "best")]

[Why we win — 2-3 structural advantages:
1. "[Advantage 1]" — [1 sentence explanation. Must be structural, not "better UI"]
2. "[Advantage 2]" — [1 sentence explanation]
3. "[Advantage 3]" — [1 sentence explanation]]

[Key competitor context — from WebSearch:
"[Competitor A] raised $[X]M and focuses on [segment]. Our differentiation: [specific]."
"[Competitor B] has [X] reviews on G2 with consistent complaints about [weakness]."]
```

### Guidelines
- Never say "we have no competitors." It means either no market or no research
- Choose 2x2 axes that your TARGET CUSTOMER cares about, not axes that make you look good by definition
- Name specific competitors. Vague categories ("incumbents," "legacy solutions") signal you have not done the work
- Include "do nothing" and manual workarounds as competitive alternatives — these are often the real competitor
- Research competitors' funding and traction to demonstrate you understand the landscape

### Cross-References
- Positioning map must match Business Plan Part V (Competitive Analysis) positioning map
- Competitor data should be consistent between Part V and this slide
- Advantages should align with Part III product differentiator

---

## Slide 9: Financials

### Investor's Mental Question
"Do the numbers work, and is this founder financially literate?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| 3-year projections | Skill 10 (Finance & Accounting) — revenue, costs, headcount |
| Unit economics | Skill 02 (Business Model) — LTV, CAC, payback, margins |
| Current financial status | Skill 10 — burn rate, runway |
| Key assumptions | Skill 10 — growth rate, churn, pricing evolution |

### Content Prompts
```
## Financials

[3-Year Projection Summary:
| | Year 1 | Year 2 | Year 3 |
|---|--------|--------|--------|
| Revenue | $[range] | $[range] | $[range] |
| Customers | [range] | [range] | [range] |
| Gross Margin | [X]% | [X]% | [X]% |
| Burn Rate | $[X]/mo | $[X]/mo | $[X]/mo |
| Team Size | [N] | [N] | [N] |]

[Key assumptions — be transparent:
- Customer growth: [X]% MoM Year 1, decelerating to [Y]% Year 3
- Churn: [X]% monthly (based on [estimate / actual data])
- ACV: $[X] → $[Y] driven by [expansion mechanism]
- CAC: $[X] blended across [channels]]

[Path to profitability or next round:
"At current trajectory, we reach cash-flow positive in [month/year]" OR
"This round funds us to [milestone], positioning us to raise Series [X] at $[Y] valuation."]
```

### Guidelines
- Use ranges, not false-precision single numbers. "$2.1M-$3.2M" is more credible than "$2,847,500"
- Keep to Year 1 (monthly) and Years 2-3 (annual). Projecting beyond 3 years is fiction at early stage
- Make key assumptions visible. Investors will ask about them — showing them proactively signals financial literacy
- Do not project profitability unless the path is clear and funded. Premature profitability claims are a red flag
- If early stage with no revenue, focus on the path: "With $[X] funding, we project [Y] customers generating $[Z] MRR by month 18"

### Cross-References
- All numbers must match Business Plan Part X (Financial Model) exactly
- Unit economics must match Slide 5 (Business Model) and Part X
- Headcount must match Part VIII (Operations Plan) and Slide 7 (Team) hiring plan
- Revenue projections must be consistent with Slide 6 (Traction) growth trajectory

---

## Slide 10: The Ask

### Investor's Mental Question
"How much do they need, what will they do with it, and will it get them to a fundable milestone?"

### Source Skills
| Data Point | Source |
|-----------|--------|
| Round size and instrument | Skill 03 (Fundraising) — amount, SAFE/equity, valuation |
| Use of funds | Skill 03 — milestone-based budgeting |
| Milestones | Skill 03 — what this capital achieves |
| Runway extension | Skill 10 (Finance & Accounting) — post-raise runway |
| Cap table impact | Skill 03 — dilution modeling |

### Content Prompts
```
## The Ask

Raising $[amount] via [SAFE at $X cap / Series [X] at $Y pre-money]

Use of Funds:
- [X]% Product & Engineering — [specific deliverable: "Ship v2.0 with [feature]"]
- [X]% Sales & Marketing — [specific target: "Hire 2 AEs, reach $[X]K MRR"]
- [X]% Operations — [specific hires: "Hire [Role] and [Role]"]
- [X]% Buffer — [runway cushion: "[N] months additional runway"]

Milestones This Round Achieves:
1. [Specific, measurable milestone] — by [date]
2. [Specific, measurable milestone] — by [date]
3. [Specific, measurable milestone] — by [date]

[These milestones position us to raise [next round] at [X-Y]x valuation.]

Runway: [N] months at projected burn rate of $[X]/month
```

### Guidelines
- Be specific about the amount. "We're raising a seed round" is vague. "$2.5M at a $10M post-money cap via SAFE" is specific
- Use of funds must tie to milestones, not categories. "$1M for engineering" means nothing. "$1M for engineering to ship [Feature X] and achieve [Metric Y]" is a plan
- Milestones must be fundable-milestone quality: they should make the company 3-5x more valuable and position it for the next round
- Do not hide the valuation. Investors will ask. Showing it signals confidence and saves time
- If you do not have a valuation target, state what you are optimizing for: "Targeting [X-Y] range based on [comparable raises in our space]"

### Cross-References
- Amount must match Business Plan Part I (One-Pager) and Part XI (Funding Requirements)
- Use of funds must match Part XI use of funds table
- Milestones must match Part XI milestones and Part VI GTM timeline
- Runway must match Part X (Financial Model) post-raise calculation

---

## Assembly Checklist

Before delivering the Pitch Deck, verify:

- [ ] All 10 slides are present and complete
- [ ] Artifact metadata (frontmatter) is filled in correctly
- [ ] Each slide makes exactly one point
- [ ] Financial numbers are internally consistent across slides (Slide 5, 6, 9, 10)
- [ ] Financial numbers match the Business Plan (if both generated)
- [ ] Market data on Slide 4 is cited with source, URL, and date
- [ ] Competitor data on Slide 8 is cited with source
- [ ] No slide exceeds its purpose (one idea per slide)
- [ ] Traction slide (6) uses real metrics, not vanity metrics
- [ ] The Ask (Slide 10) is specific: amount, instrument, use, milestones
- [ ] Disclaimers are included: General + Financial + Investment
- [ ] Next Steps section recommends how to use this deck
- [ ] No "[TODO]", "[INSERT]", or "[placeholder]" text remains

---

## Assumptions & Limitations

When delivering the Pitch Deck, include this section:

```
## Assumptions & Limitations

- This pitch deck is generated from structured skill outputs and internet research
- Financial projections are estimates — see Business Plan Part X for detailed assumptions
- Market data is sourced from public research (see Research Sources) and may not reflect the most current figures
- This deck is Version 1.0 — iterate based on investor feedback from live meetings
- Deck content should be adapted to presentation format (Google Slides, Keynote, PDF) with appropriate visual design

## Next Steps

- [ ] Convert this content to a visual presentation format (Google Slides / Keynote)
- [ ] Practice the pitch narrative — the deck supports the story, it does not replace it
- [ ] Run through with 2-3 advisors for feedback before investor meetings
- [ ] Schedule Tier 2 investor meetings first for practice (see Skill 03 outreach strategy)
- [ ] After 5 meetings, update the deck based on common investor questions
- [ ] Prepare a separate appendix deck with detailed financials for follow-up requests

## Related Artifacts

- See Business Plan for comprehensive detail behind every slide
- See Business Plan Part IV for detailed market analysis (Slide 4 detail)
- See Business Plan Part V for complete competitive analysis (Slide 8 detail)
- See Business Plan Part X for full financial model (Slide 9 detail)
- See Business Plan Part XI for complete funding requirements (Slide 10 detail)
```

---

## Disclaimers

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.

> **Financial Disclaimer:** The financial projections, unit economics, and calculations in this document are estimates based on stated assumptions and industry benchmarks. They do not constitute financial advice. Actual results will vary based on market conditions, execution, and factors not captured in this model. Consult a qualified accountant or financial advisor before making financial decisions. Do not use these projections as the sole basis for investment decisions.

> **Investment Disclaimer:** This document is for informational purposes only and does not constitute an offer to sell, a solicitation of an offer to buy, or a recommendation for any security or investment. Past performance is not indicative of future results. All investments involve risk, including the possible loss of principal. The information herein is based on projections and assumptions that may not materialize.
