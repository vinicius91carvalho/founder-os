# FounderOS

A complete system of 12 interconnected AI skills + 1 orchestrator covering the entire founder journey from idea validation through board management. Works with any AI assistant that can read markdown — Claude, Gemini, GPT-4+, Cursor, Windsurf, Copilot, Codex, and more.

## What This Is

When given a startup idea, the system:
1. Diagnoses the founder's stage (Ideation → Scale)
2. Routes through relevant skills with domain-expert frameworks
3. Produces institutional-quality artifacts (Business Plan, Pitch Deck) with live internet research

Each skill encodes battle-tested frameworks from practitioners (Kevin Hale, April Dunford, Lenny Rachitsky, YC) — not generic advice.

## Quick Start

### Full Business Plan Generation

```
Invoke the orchestrator: "I have a startup idea and need a complete business plan."
→ The system runs all 12 skills in order, conducts market research, and produces
  a comprehensive Business Plan + Pitch Deck.
```

### Single Skill

```
"Help me validate my startup idea."
→ Routes to Skill 01 (Idea Validation) — Mom Test, 60-min validation, GO/PIVOT/KILL.
```

### Stage-Based

```
"I've validated my idea and need to prepare for fundraising."
→ Routes to Stage 2 (Pre-Launch): Skills 03, 04, 05.
```

## Skills Index

| # | Skill | Stage | Key Frameworks |
|---|-------|-------|----------------|
| 00 | [Orchestrator](00-orchestrator/SKILL.md) | All | Journey routing, artifact generation |
| 01 | [Idea Validation](01-idea-validation/SKILL.md) | Ideation | Kevin Hale/YC, Mom Test, 60-min validation |
| 02 | [Business Model](02-business-model/SKILL.md) | Ideation | 55 patterns, April Dunford positioning, unit economics |
| 03 | [Fundraising](03-fundraising/SKILL.md) | Pre-Launch | Sequoia/YC pitch deck, VC criteria, SAFE mechanics |
| 04 | [Go-to-Market](04-go-to-market/SKILL.md) | Pre-Launch | Lenny Rachitsky, Racecar Growth, Product Hunt |
| 05 | [Product](05-product/SKILL.md) | Pre-Launch | Square PRD, RICE scoring, INVEST criteria |
| 06 | [Sales](06-sales/SKILL.md) | Launch | MEDDIC, BANT, Challenger Sale |
| 07 | [Marketing & Brand](07-marketing-brand/SKILL.md) | Launch | 80/20 distribution, community building |
| 08 | [Growth & Analytics](08-growth-analytics/SKILL.md) | Growth | AARRR metrics, A/B testing, cohort analysis |
| 09 | [Operations](09-operations/SKILL.md) | Growth | OKRs (Liz Wessel/Google), structured hiring |
| 10 | [Finance & Accounting](10-finance-accounting/SKILL.md) | Scale | Burn rate, runway, 13-week forecast |
| 11 | [Customer Success](11-customer-success/SKILL.md) | Scale | TTFV, churn segmentation, health scoring |
| 12 | [Legal & Compliance](12-legal-compliance/SKILL.md) | Scale | Entity selection, cap tables, vesting |

## Architecture

```
skills/
├── README.md                    ← You are here
├── SKILL-TEMPLATE.md            ← Template all skills follow
├── shared/
│   ├── founder-journey-map.md   ← 5-stage journey with routing
│   ├── cross-skill-data-flow.md ← What each skill produces/consumes
│   ├── artifact-format.md       ← Standard artifact output format
│   └── disclaimer-templates.md  ← Legal/financial/general disclaimers
├── 00-orchestrator/
│   ├── SKILL.md                 ← Routing, context passing, research protocols
│   ├── templates/
│   │   └── intake-questionnaire.md
│   └── artifacts/
│       ├── business-plan.md     ← 13-part comprehensive plan generator
│       └── pitch-deck.md        ← 10-slide Sequoia/YC hybrid generator
├── 01-idea-validation/
│   ├── SKILL.md
│   ├── templates/
│   └── frameworks/
├── 02-business-model/
│   ├── SKILL.md
│   ├── templates/
│   └── frameworks/
... (same structure for skills 03-12)
```

## Artifacts Generated

### 1. Comprehensive Business Plan
13 integrated parts including:
- Investor One-Pager, Executive Summary
- Market Analysis (with live web research)
- Competitive Analysis (with web research)
- Financial Model & Projections
- GTM Playbook, Operations, Legal
- And more — see `00-orchestrator/artifacts/business-plan.md`

### 2. Pitch Deck
10-slide Sequoia/YC hybrid format with data from all relevant skills. Each slide cites the Business Plan section with detailed backup.

## How Skills Connect

Skills are interconnected — outputs from early skills feed into later ones:
- Validation evidence → pitch deck proof points
- Business model → financial projections
- Competitive positioning → GTM strategy
- Regulatory assessment → compliance plan

See `shared/cross-skill-data-flow.md` for the complete data flow map.

## Important Notes

- **Not a replacement for professionals.** Legal, financial, and tax guidance is educational. Consult qualified professionals for decisions in these domains.
- **Web access optional** for market research. Business Plan and Pitch Deck quality improves with web search (available on most AI platforms), but all skills work fully without it.
- **Iterative, not final.** All artifacts are Version 1.0. Iterate based on real-world feedback from customers, investors, and advisors.
