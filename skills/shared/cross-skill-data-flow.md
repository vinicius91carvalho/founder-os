# Cross-Skill Data Flow

This document defines exactly what each skill produces and consumes. When building or modifying a skill, reference this to ensure interconnections are correct.

---

## Data Flow Table

| # | Skill | Produces | Consumed By |
|---|-------|----------|-------------|
| 01 | Idea Validation | Validation verdict (GO/PIVOT/KILL), market signals (complaints count, market size, search volume, competitor gaps), founder-market fit assessment, customer interview insights, PMF signal strength | 02 (model selection input), 03 (pitch proof points, market evidence), 04 (target customer profile), 05 (problem validation for PRD) |
| 02 | Business Model | Revenue model type and rationale, unit economics (LTV, CAC, payback period, LTV:CAC), pricing strategy, competitive positioning map (April Dunford), revenue stream breakdown | 03 (financials for pitch deck, business model slide), 04 (pricing for GTM), 06 (value proposition for sales), 10 (revenue model for financial projections) |
| 03 | Fundraising | Funding strategy (amount, instrument, timeline), investor target list and outreach plan, pitch deck content, SAFE/note terms, cap table impact, dilution modeling | 10 (runway with new capital, cap table), 12 (SAFE terms, legal structure) |
| 04 | Go-to-Market | Channel strategy (selected channels with rationale), launch timeline and tactics, first 100 customers playbook, pre-launch waitlist plan, Product Hunt strategy | 06 (sales pipeline channels), 07 (distribution channels, launch timing) |
| 05 | Product | PRD (problem, solution, non-goals, metrics), roadmap with RICE scores, user stories with INVEST criteria, feature prioritization | 04 (feature sequencing for launch), 06 (product demo script for sales), 11 (onboarding flow based on features) |
| 06 | Sales | Pipeline structure and stages, selected methodology (MEDDIC/BANT/Challenger), outreach sequences, conversion metrics, founder-to-team transition criteria | 07 (sales messaging alignment), 08 (conversion funnel metrics) |
| 07 | Marketing & Brand | Brand voice and guidelines, content strategy and calendar, distribution plan (80/20), PR templates, community building plan | 04 (channel amplification), 06 (sales collateral and messaging) |
| 08 | Growth & Analytics | North Star metric, AARRR dashboard, cohort retention curves, A/B test results, KPIs by stage | 03 (metrics for fundraising deck/updates), 09 (OKR targets from metrics) |
| 09 | Operations | Org chart and hiring plan, OKRs (company/team/individual), interview process, board deck template, investor update template | 03 (team slide for pitch deck), 10 (headcount plan for financial model) |
| 10 | Finance & Accounting | Burn rate (gross/net), runway (months), cash flow forecast (13-week), monthly close status, 3-year projections, scenario analysis | 03 (financial model for fundraising), 09 (budget for OKR planning) |
| 11 | Customer Success | Onboarding flow and TTFV metrics, customer health scores, churn analysis (segmented by timing), NPS/CSAT scores, expansion revenue data | 05 (product feedback and feature requests), 08 (retention metrics for growth) |
| 12 | Legal & Compliance | Entity structure (type, jurisdiction), cap table (ownership, dilution), vesting schedules, compliance requirements by industry, IP assignment status | 03 (legal terms for fundraising), 09 (governance structure) |

---

## Data Flow Diagram

```
Stage 1: Ideation
┌─────────────────────┐     ┌─────────────────────┐
│ 01 Idea Validation   │────▶│ 02 Business Model    │
│ verdict, market data │     │ revenue, unit econ   │
└────────┬────────────┘     └────────┬────────────┘
         │                           │
         ▼                           ▼
Stage 2: Pre-Launch
┌─────────────────────┐  ┌──────────────────┐  ┌─────────────────────┐
│ 03 Fundraising       │  │ 04 Go-to-Market  │  │ 05 Product           │
│ pitch, terms, cap    │  │ channels, launch │  │ PRD, roadmap         │
└────────┬────────────┘  └────────┬─────────┘  └────────┬────────────┘
         │                        │                      │
         ▼                        ▼                      ▼
Stage 3: Launch
┌─────────────────────┐     ┌─────────────────────────┐
│ 06 Sales             │◀──▶│ 07 Marketing & Brand     │
│ pipeline, method     │     │ voice, content, distrib  │
└────────┬────────────┘     └────────┬────────────────┘
         │                           │
         ▼                           ▼
Stage 4: Growth
┌─────────────────────────┐     ┌─────────────────────┐
│ 08 Growth & Analytics    │────▶│ 09 Operations        │
│ metrics, cohorts, tests  │     │ team, OKRs, board    │
└────────┬────────────────┘     └────────┬────────────┘
         │                               │
         ▼                               ▼
Stage 5: Scale
┌──────────────────────────┐  ┌───────────────────────┐  ┌──────────────────────────┐
│ 10 Finance & Accounting   │  │ 11 Customer Success   │  │ 12 Legal & Compliance     │
│ burn, runway, projections │  │ churn, health, NPS    │  │ entity, cap table, comply │
└──────────────────────────┘  └───────────────────────┘  └──────────────────────────┘
```

---

## Artifact Assembly

The orchestrator's artifact generators pull from multiple skills:

### Business Plan Sources

| Business Plan Section | Primary Skill Sources |
|----------------------|----------------------|
| Investor One-Pager | 01 (problem), 02 (model), 08 (traction), 09 (team), 03 (ask) |
| Executive Summary | All skills (distilled) |
| Company & Product | 01 (validation), 05 (PRD/features) |
| Market Analysis | 01 (market signals) + WebSearch research |
| Competitive Analysis | 02 (positioning) + WebSearch research |
| GTM Playbook | 04 (launch plan), 06 (sales), 07 (marketing) |
| Marketing & Sales Strategy | 06 (sales method), 07 (brand/content) |
| Operations Plan | 09 (org, OKRs, hires) |
| Customer Success Strategy | 11 (onboarding, churn, health) |
| Financial Model | 02 (unit economics), 10 (projections/runway) |
| Funding Requirements | 03 (amount, terms, milestones) |
| Legal & Compliance | 12 (entity, cap table, compliance) |
| Risk Analysis | All skills (risks synthesized) |

### Pitch Deck Sources

| Slide | Primary Source |
|-------|---------------|
| 1. Title | Intake (company name, tagline) |
| 2. Problem | 01 (validated pain, evidence) |
| 3. Solution | 05 (product, features) |
| 4. Market | 01 (market size) + WebSearch |
| 5. Business Model | 02 (revenue model, pricing) |
| 6. Traction | 08 (metrics, milestones) |
| 7. Team | 09 (org, founder-market fit from 01) |
| 8. Competition | 02 (positioning map) + WebSearch |
| 9. Financials | 10 (projections, unit economics from 02) |
| 10. Ask | 03 (amount, use of funds, milestones) |

---

## Context Passing Protocol

When a skill completes, it adds its outputs to the **journey context** — a structured data object the orchestrator maintains. Format:

```
## Skill [##] Output Summary
- **Verdict/Decision:** [primary output]
- **Key Data Points:** [list of specific, reusable data]
- **For Downstream Skills:** [what the next skill needs to know]
- **Artifacts Generated:** [list of artifacts produced]
- **Open Questions:** [anything unresolved that later skills should address]
```

The orchestrator passes ONLY the relevant subset of context to each skill — not the entire journey history. See `founder-journey-map.md` for which skills consume which outputs.
