# FounderOS — Orchestrator

> Route founders through 12 interconnected skills based on their stage, goals, and constraints — then generate comprehensive artifacts (Business Plan, Pitch Deck) with live internet research. This is the hub of the system: it diagnoses, routes, passes context, triggers research, and assembles final deliverables.

---

## Diagnostic Intake

### Philosophy: Conversation, Not Form

The intake is a conversation. Do not dump a questionnaire on the founder. Start with one open question, listen to the response, then ask follow-up questions that fill gaps. The goal is to understand three things in this order:

1. **What they are building** (problem, solution, customer)
2. **Where they are in the journey** (stage detection)
3. **What they need right now** (routing to specific skills)

Most founders will reveal enough in 3-5 exchanges to route accurately. Some will need 8-10. Never more than that — if you cannot route after 10 exchanges, you are asking the wrong questions.

### Opening Prompt

> "Tell me about your startup — what problem are you solving, and where are you in the journey?"

This single question is deliberately broad. It lets the founder frame their own situation, which reveals both their stage and their priorities. Listen for:

- **Problem clarity** — Can they name the specific customer and specific pain? (Stage 1 signal)
- **Validation evidence** — Do they reference customer conversations, data, or traction? (Stage 2-3 signal)
- **Operational language** — Do they mention team, metrics, churn, runway? (Stage 4-5 signal)
- **Explicit request** — "I need a business plan" or "help me prepare to raise" (Direct routing)

### Intake Question Sequence

Ask questions in this priority order. Stop as soon as you can confidently detect stage and route.

**Priority 1 — The Idea (always ask)**

| Question | What It Reveals | Routing Signal |
|----------|----------------|----------------|
| "What problem are you solving, and for whom specifically?" | Problem clarity, customer specificity | Vague answer → Stage 1. Specific customer + pain → Stage 2+ |
| "How did you discover this problem?" | Founder-market fit, insight source | Personal experience + domain expertise → stronger foundation |
| "What does the customer do today to solve this?" | Competitive landscape, workaround evidence | "Nothing" → weak pain signal. Specific workarounds → strong signal |

**Priority 2 — Validation Status (ask if not already clear)**

| Question | What It Reveals | Routing Signal |
|----------|----------------|----------------|
| "Have you talked to potential customers about this problem — not your idea, but the problem itself?" | Interview status | No interviews → Skill 01. Has interviews → Stage 2+ |
| "Do you have a product? Customers? Revenue?" | Progress level | No product → Pre-Launch. Product + customers → Launch/Growth |
| "What evidence do you have that people want this?" | Validation quality | Opinions → weak. Behavior (signups, payments, retention) → strong |

**Priority 3 — Team and Capabilities (ask when relevant)**

| Question | What It Reveals | Routing Signal |
|----------|----------------|----------------|
| "Are you a solo founder or do you have a team?" | Resource constraints | Solo → prioritize highest-leverage skills. Team → broader run |
| "What's your background — technical, domain, business?" | Skill gaps | Technical founder → may skip product detail, need sales/GTM help |
| "Who else is involved — co-founders, advisors, early employees?" | Team strength | Strong team → Team slide for pitch. No team → Skill 09 priority |

**Priority 4 — Funding and Resources (ask when relevant)**

| Question | What It Reveals | Routing Signal |
|----------|----------------|----------------|
| "Are you bootstrapping or planning to raise capital?" | Funding path | Bootstrap → skip Skill 03 specifics. Raising → Skill 03 priority |
| "How much runway do you have?" | Urgency | < 6 months → urgent, prioritize revenue/raise. 12+ months → can be methodical |
| "Have you raised money before? If so, what terms?" | Funding history | Previous round → cap table context for Skill 03, 10, 12 |

**Priority 5 — Industry and Constraints (ask when relevant)**

| Question | What It Reveals | Routing Signal |
|----------|----------------|----------------|
| "What industry or vertical are you in?" | Domain context | Regulated industry → Skill 12 early. SaaS → standard path |
| "What's your geographic focus?" | Market scope, regulatory context | Multi-jurisdiction → Skill 12 complexity. Single market → simpler |
| "What constraints should I know about — time, budget, regulatory, technical?" | Limitations | Regulatory constraints → Skill 12 early. Budget constraints → prioritize |

**Priority 6 — Immediate Goals (ask to confirm routing)**

| Question | What It Reveals | Routing Signal |
|----------|----------------|----------------|
| "If I could help you with one thing right now, what would it be?" | Top priority | Direct routing signal — strongest single question for routing |
| "What's the most important decision you need to make in the next 30 days?" | Time-sensitive need | Raising → Skill 03. Launching → Skill 04. Hiring → Skill 09 |
| "Do you want help with a specific area, or a comprehensive business plan?" | Scope | Specific → single skill or partial run. Comprehensive → full run |

### Stage Detection Algorithm

Based on intake responses, classify the founder into one of 5 journey stages. Use the signal matrix below — the stage with the most matching signals wins. When signals are ambiguous across two stages, select the earlier stage (it is safer to validate before advancing).

```
FUNCTION detect_stage(intake_responses):

  signals = extract_signals(intake_responses)
  stage_scores = {ideation: 0, pre_launch: 0, launch: 0, growth: 0, scale: 0}

  # Ideation signals
  IF no_customer_interviews: stage_scores.ideation += 3
  IF cannot_name_specific_customer: stage_scores.ideation += 2
  IF no_product_exists: stage_scores.ideation += 2
  IF problem_framed_as_opinion_not_evidence: stage_scores.ideation += 2
  IF uses_phrases("I think", "I believe", "people would"): stage_scores.ideation += 1

  # Pre-Launch signals
  IF has_validated_problem_with_evidence: stage_scores.pre_launch += 3
  IF no_product_or_mvp_only: stage_scores.pre_launch += 2
  IF discussing_fundraising_preparation: stage_scores.pre_launch += 2
  IF has_hypothesis_but_no_revenue: stage_scores.pre_launch += 2
  IF uses_phrases("planning to launch", "building MVP", "preparing to raise"): stage_scores.pre_launch += 1

  # Launch signals
  IF has_product_in_market: stage_scores.launch += 3
  IF has_some_customers_but_few: stage_scores.launch += 2
  IF no_systematic_sales_process: stage_scores.launch += 2
  IF no_established_brand_or_marketing: stage_scores.launch += 2
  IF uses_phrases("we launched", "first customers", "need more users"): stage_scores.launch += 1

  # Growth signals
  IF has_revenue_and_customers: stage_scores.growth += 3
  IF no_metrics_framework: stage_scores.growth += 2
  IF founder_is_bottleneck: stage_scores.growth += 2
  IF needs_to_hire: stage_scores.growth += 2
  IF uses_phrases("scaling", "need systems", "can't do it all myself"): stage_scores.growth += 1

  # Scale signals
  IF meaningful_revenue_and_team: stage_scores.scale += 3
  IF financial_complexity_increasing: stage_scores.scale += 2
  IF churn_is_a_concern: stage_scores.scale += 2
  IF legal_compliance_needs: stage_scores.scale += 2
  IF uses_phrases("professionalize", "next round", "board reporting"): stage_scores.scale += 1

  detected_stage = max(stage_scores)

  # Tie-breaking: earlier stage wins (safer to validate before advancing)
  IF multiple stages tied:
    RETURN earliest_stage among tied

  RETURN detected_stage
```

### Stage-to-Skills Mapping

| Stage | Primary Skills | Secondary Skills | Typical Duration |
|-------|---------------|-----------------|-----------------|
| **1. Ideation** | 01 Idea Validation, 02 Business Model | 12 Legal (if regulated industry) | 60-90 min |
| **2. Pre-Launch** | 03 Fundraising, 04 Go-to-Market, 05 Product | 02 Business Model (if not done), 12 Legal (entity setup) | 90-150 min |
| **3. Launch** | 06 Sales, 07 Marketing & Brand | 04 Go-to-Market (if not done) | 60-90 min |
| **4. Growth** | 08 Growth & Analytics, 09 Operations | 03 Fundraising (if raising next round) | 60-90 min |
| **5. Scale** | 10 Finance & Accounting, 11 Customer Success, 12 Legal & Compliance | 03 Fundraising (Series A/B), 09 Operations (if not done) | 90-120 min |

---

## Full Routing Engine

### Skill Routing Table

| # | Skill | Stage | Hard Prerequisites | Soft Prerequisites (improves output) | Typical Run Time |
|---|-------|-------|--------------------|--------------------------------------|-----------------|
| 01 | Idea Validation | Ideation | None | None | 20-40 min |
| 02 | Business Model | Ideation | None (best after 01) | 01 validation verdict, customer archetype | 30-45 min |
| 03 | Fundraising | Pre-Launch | None | 01 (proof points), 02 (unit economics), 08 (traction metrics), 09 (team) | 30-60 min |
| 04 | Go-to-Market | Pre-Launch | None | 02 (pricing, positioning), 05 (product features for launch) | 30-45 min |
| 05 | Product | Pre-Launch | None | 01 (validated problem for PRD) | 30-45 min |
| 06 | Sales | Launch | None | 02 (value proposition), 04 (channel strategy) | 20-40 min |
| 07 | Marketing & Brand | Launch | None | 02 (positioning), 04 (distribution channels) | 30-45 min |
| 08 | Growth & Analytics | Growth | None | 06 (conversion data), 07 (acquisition data) | 30-45 min |
| 09 | Operations | Growth | None | 08 (OKR targets from metrics) | 30-45 min |
| 10 | Finance & Accounting | Scale | None | 02 (revenue model), 09 (headcount plan) | 30-45 min |
| 11 | Customer Success | Scale | None | 05 (product features for onboarding), 08 (retention metrics) | 20-40 min |
| 12 | Legal & Compliance | Scale | None | 03 (SAFE terms), 09 (governance structure) | 20-40 min |

**Note on prerequisites:** No skill has a hard prerequisite — every skill can run standalone with founder-provided context. Soft prerequisites improve output quality because upstream skills produce structured data that downstream skills consume. When skipping prerequisites, the skill's diagnostic will gather the missing context directly from the founder.

### Routing Logic (Full Implementation)

```
FUNCTION route_founder(intake_responses, explicit_goal):

  # Step 1: Check for explicit goal override
  IF explicit_goal == "full_business_plan":
    RETURN full_system_run()  # All 12 skills → Business Plan + Pitch Deck

  IF explicit_goal == "pitch_deck_only":
    RETURN partial_run([01, 02, 03, 05, 08])  # Minimum for pitch deck

  IF explicit_goal == "specific_skill":
    RETURN single_skill_run(requested_skill)

  IF explicit_goal == "prepare_to_raise":
    RETURN fundraising_track()  # 01 → 02 → 03 → 05 → 10

  IF explicit_goal == "just_validate":
    RETURN validation_track()  # 01 → 02 (if GO)

  IF explicit_goal == "launch_ready":
    RETURN launch_track()  # 04 → 05 → 06 → 07

  # Step 2: Stage-based routing
  stage = detect_stage(intake_responses)

  IF stage == "ideation":
    RUN Skill 01 (Idea Validation)
    AWAIT verdict
    IF verdict == GO:
      RUN Skill 02 (Business Model)
      SUGGEST: "Your idea is validated. Next: define your product (Skill 05) or prepare to raise (Skill 03)?"
    ELIF verdict == PIVOT:
      REPORT pivot reasons
      OFFER: "Want to reformulate the hypothesis and re-validate?"
      IF yes: LOOP to Skill 01 with revised hypothesis
    ELIF verdict == KILL:
      REPORT kill evidence with empathy
      OFFER: "Want to explore adjacent ideas or a different problem space?"

  ELIF stage == "pre_launch":
    # Determine which pre-launch skills are needed
    needs = assess_pre_launch_needs(intake_responses)
    IF needs.funding:
      RUN Skill 02 (Business Model) if not already done
      RUN Skill 03 (Fundraising)
    IF needs.product_definition:
      RUN Skill 05 (Product)
    IF needs.launch_plan:
      RUN Skill 04 (Go-to-Market)
    IF needs.entity_setup:
      RUN Skill 12 (Legal & Compliance)

  ELIF stage == "launch":
    needs = assess_launch_needs(intake_responses)
    IF needs.sales_process:
      RUN Skill 06 (Sales)
    IF needs.brand_marketing:
      RUN Skill 07 (Marketing & Brand)
    IF needs.gtm_refinement:
      RUN Skill 04 (Go-to-Market) — focus on optimization, not initial plan

  ELIF stage == "growth":
    needs = assess_growth_needs(intake_responses)
    IF needs.metrics_analytics:
      RUN Skill 08 (Growth & Analytics)
    IF needs.team_operations:
      RUN Skill 09 (Operations)
    IF needs.next_round:
      RUN Skill 03 (Fundraising) — Series A/B context

  ELIF stage == "scale":
    needs = assess_scale_needs(intake_responses)
    IF needs.financial_systems:
      RUN Skill 10 (Finance & Accounting)
    IF needs.churn_retention:
      RUN Skill 11 (Customer Success)
    IF needs.legal_compliance:
      RUN Skill 12 (Legal & Compliance)
    IF needs.next_round:
      RUN Skill 03 (Fundraising) — Series B+ context
```

### Smart Skip Logic

Not every founder needs every skill in their stage. Apply these skip rules to avoid unnecessary work:

| Founder Profile | Skip | Reason |
|----------------|------|--------|
| Technical founder with validated idea and existing customers | Skill 01 (Validation) | Already validated by market evidence — go directly to Skill 02 or 05 |
| Previously raised seed, clean cap table | Skill 12 (Legal setup) | Entity and cap table already established — run only if new legal needs |
| Strong brand already established (agency founder pivoting to SaaS) | Skill 07 (Brand section) | Brand voice exists — focus on distribution and content strategy only |
| Domain expert with industry network | Skill 06 (Sales basics) | Founder already knows how to sell in this market — focus on scaling sales |
| Has existing financial model from accelerator | Skill 10 (Model building) | Model exists — focus on review, stress-testing, and scenario analysis |
| Post-Series A with board | Skill 09 (Board setup) | Governance exists — focus on OKR refinement and hiring process |
| B2C product with PLG motion | Skill 06 (Outbound sales) | PLG replaces outbound — focus on activation and conversion optimization |

**Skip validation rule:** Before skipping a skill, confirm with the founder: "It sounds like you've already [handled X]. Is that right, or would a review be valuable?" Never skip silently — the founder may have gaps they are not aware of.

### Partial Run Patterns

Common skill combinations that founders request. Each pattern includes the optimal run order.

| Pattern Name | When Requested | Skills (in order) | Artifacts Generated |
|-------------|----------------|-------------------|-------------------|
| **Just Validate** | "I just have an idea" | 01 → 02 (if GO) | Validation Report |
| **Prepare to Raise** | "I need to fundraise" | 01 → 02 → 03 → 05 → 10 | Pitch Deck |
| **Launch Ready** | "I'm about to launch" | 04 → 05 → 06 → 07 | GTM Playbook |
| **Growth Audit** | "We're growing but messy" | 08 → 09 → 11 | Growth Dashboard, OKR Framework |
| **Professionalize** | "We need real operations" | 09 → 10 → 11 → 12 | Operations Manual |
| **Full Business Plan** | "I need a complete plan" | All 12 in order | Business Plan + Pitch Deck |
| **Pitch Deck Only** | "I need a pitch deck" | 01 → 02 → 03 → 05 → 08 | Pitch Deck |
| **Investor Ready** | "Getting ready for Series A" | 02 → 03 → 08 → 09 → 10 → 12 | Pitch Deck + Financial Model |
| **Post-Launch Fix** | "Launched but not growing" | 06 → 07 → 08 → 11 | Growth Plan |
| **Legal Cleanup** | "Need to get legal right" | 12 → 10 (cap table only) | Compliance Checklist, Cap Table |

### Edge Case Handling

**Founder at multiple stages:** A founder may have a validated B2B product (Stage 3) but no financial model (Stage 5 gap). Route to the primary stage (Stage 3: Launch) but flag the gap: "Your primary focus should be sales and marketing, but I noticed you don't have financial projections — we should address that after your launch skills."

**Returning founder with prior session context:** If the founder has already completed some skills in a prior session, check the journey progress checklist (see Progress Tracking). Resume from the last completed skill, passing accumulated context.

**Founder who disagrees with stage detection:** If the founder says "I'm past validation" but their responses show no evidence of customer conversations, explain the signal: "Based on what you've described, I don't see evidence of customer validation yet. Running Skill 01 would either confirm your instinct or surface risks early. Want to do a quick validation pass?" Defer to the founder if they insist, but note the skip in the journey context.

**Founder with a pivoting company:** If the founder is pivoting from a launched product to a new market, treat the new market as Stage 1 (Ideation) but carry over operational maturity from the existing company. Skip Skill 09 (Operations) and Skill 12 (Legal) unless the pivot changes the entity structure.

---

## Workflows

### Workflow A: Single Skill Run

**When:** Founder needs help with one specific domain.

**Process:**

1. Run the diagnostic for the target skill to assess internal state
2. Execute the skill's workflow based on state assessment
3. Produce skill-specific outputs and artifacts
4. Suggest related skills based on the interconnections section of the completed skill
5. Update the journey progress checklist

**Context:** Pass the founder's intake summary + any prior skill outputs that are soft prerequisites for the target skill. If prerequisite data is missing, the skill's diagnostic will gather it directly.

### Workflow B: Stage-Based Run

**When:** Founder is at a specific stage and needs all relevant skills for that stage.

**Process:**

1. Complete intake to determine stage
2. Identify all skills mapped to that stage (see Stage-to-Skills Mapping)
3. Apply Smart Skip Logic to eliminate unnecessary skills
4. Run remaining skills in dependency order within the stage
5. Pass context between skills using the Context Passing Protocol
6. Produce stage-appropriate outputs
7. Suggest the next stage when current stage exit criteria are met (see `shared/founder-journey-map.md`)
8. Update the journey progress checklist

### Workflow C: Full System Run (Business Plan + Pitch Deck)

**When:** Founder wants a comprehensive business plan and/or pitch deck.

**Process:**

1. Complete the full intake questionnaire (`templates/intake-questionnaire.md`)
2. Run skills in dependency order: 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10 → 11 → 12
3. At each skill, pass accumulated journey context (only the relevant subset — see Context Passing Protocol)
4. After all skills complete, conduct deep internet research (see Deep Research Protocol)
5. Generate the Business Plan artifact using `artifacts/business-plan.md` as the generator template
6. Generate the Pitch Deck artifact using `artifacts/pitch-deck.md` as the generator template
7. Cross-reference both artifacts for consistency
8. Present final artifacts with the appropriate disclaimers
9. Update the journey progress checklist to show all items complete

**Duration estimate:** Full system run takes 4-8 hours of focused work, depending on industry complexity and research depth. Consider breaking across sessions at natural stage boundaries.

### Workflow D: Partial Run

**When:** Founder wants specific skills or a specific pattern, regardless of stage.

**Process:**

1. Accept the founder's requested skills or match to a Partial Run Pattern
2. Check dependency order — run prerequisite skills first if the founder hasn't done them
3. Warn if skipping dependencies would reduce output quality: "Skill 03 (Fundraising) produces a stronger pitch deck when Skill 01 (Validation) and Skill 02 (Business Model) run first. Want to include those, or proceed with what you have?"
4. Run requested skills in optimal order
5. Generate applicable artifacts based on which skills were completed
6. Update the journey progress checklist

### Workflow E: Artifact-Only Generation

**When:** Founder has already completed skills (in prior sessions or manually) and wants artifacts generated from existing data.

**Process:**

1. Gather the skill outputs the founder already has — ask them to provide key data points for each completed skill (using the Context Passing format)
2. Identify gaps — which skill outputs are missing or incomplete?
3. For missing data, either run the skill or ask the founder to provide the information manually
4. Conduct deep internet research for market and competitive data
5. Generate artifacts using the generator templates
6. Present with disclaimers

---

## Context Passing Protocol

### How It Works

When a skill completes, it produces a structured output summary. The orchestrator captures this summary and adds it to the **journey context** — a cumulative data object that grows as skills complete.

Downstream skills receive ONLY the relevant subset of the journey context — not the full history. This keeps each skill focused and prevents information overload.

### Output Summary Format

Every skill produces this when it completes:

```markdown
## Skill [##]: [Skill Name] — Output Summary

- **Verdict/Decision:** [primary output — GO/PIVOT/KILL for validation, subscription model for business model, $2.5M seed for fundraising, etc.]
- **Key Data Points:**
  - [Specific, reusable data point 1 — e.g., TAM: $4.2B]
  - [Specific, reusable data point 2 — e.g., LTV:CAC ratio: 4.2:1]
  - [Specific, reusable data point 3 — e.g., monthly churn: 3.5%]
- **For Downstream Skills:**
  - [What the next skill needs — e.g., "Customer archetype: ops managers at 10-50 person SaaS companies"]
  - [Specific input for the next skill — e.g., "Pricing: $99/mo Starter, $299/mo Growth, $799/mo Enterprise"]
- **Artifacts Generated:** [list with descriptions]
- **Open Questions:** [unresolved assumptions that downstream skills should address]
- **Confidence Level:** [HIGH / MEDIUM / LOW — based on data quality]
```

### Journey Context Accumulation

The journey context grows as skills complete. Full structure:

```
Journey Context = {
  # Metadata
  founder_name: from intake,
  startup_name: from intake,
  industry: from intake,
  stage_detected: from stage detection algorithm,
  date_started: session start date,

  # Skill Outputs (populated as skills complete)
  skill_01_validation: {
    verdict: GO/PIVOT/KILL,
    customer_archetype: "specific segment definition",
    validated_problem: "problem in customer language",
    market_size_evidence: [data points],
    pmf_signals: [signal inventory],
    founder_market_fit: N/5,
    open_questions: [list]
  },

  skill_02_business_model: {
    revenue_model: "model type + rationale",
    pricing_structure: {tiers, prices, triggers},
    unit_economics: {ltv, cac, payback, ltv_cac_ratio},
    positioning_statement: "April Dunford format",
    best_fit_customer: "segment",
    open_questions: [list]
  },

  skill_03_fundraising: {
    funding_status: "amount, instrument, valuation",
    investor_names: [list],
    cap_table_summary: {founder_pct, investor_pct, pool_pct},
    runway_months: N,
    milestones_funded: [list],
    open_questions: [list]
  },

  skill_04_gtm: {
    channel_strategy: [selected channels + rationale],
    launch_timeline: {phases, dates, tactics},
    first_100_playbook: "summary",
    pre_launch_plan: "summary",
    open_questions: [list]
  },

  skill_05_product: {
    prd_summary: "problem, solution, non-goals, metrics",
    roadmap: [features with RICE scores],
    user_stories: [prioritized list],
    open_questions: [list]
  },

  skill_06_sales: {
    pipeline_structure: "stages and definitions",
    methodology: "MEDDIC/BANT/Challenger + rationale",
    outreach_sequences: "summary",
    conversion_metrics: {targets by stage},
    open_questions: [list]
  },

  skill_07_marketing: {
    brand_voice: "guidelines summary",
    content_strategy: "pillar topics + calendar",
    distribution_plan: "channels + 80/20 allocation",
    community_plan: "ladder + engagement strategy",
    open_questions: [list]
  },

  skill_08_growth: {
    north_star_metric: "metric + target",
    aarrr_dashboard: {acquisition, activation, retention, revenue, referral},
    cohort_data: "retention curve shape + key findings",
    experiments: [active tests + results],
    open_questions: [list]
  },

  skill_09_operations: {
    org_chart: "current + planned structure",
    hiring_plan: [roles, priority, timeline],
    okrs: {company, team, individual},
    board_deck_template: "summary",
    open_questions: [list]
  },

  skill_10_finance: {
    burn_rate: {gross, net},
    runway_months: N,
    cash_flow_forecast: "13-week summary",
    three_year_projections: {year1, year2, year3},
    scenario_analysis: {base, optimistic, pessimistic},
    open_questions: [list]
  },

  skill_11_customer_success: {
    onboarding_flow: "stages + TTFV target",
    health_scoring: "dimensions + thresholds",
    churn_analysis: "segmented findings",
    expansion_revenue: "strategy + targets",
    open_questions: [list]
  },

  skill_12_legal: {
    entity_structure: "type + jurisdiction",
    cap_table: "ownership summary",
    vesting_schedules: "terms",
    compliance_requirements: [by industry/jurisdiction],
    ip_status: "assignments, filings",
    open_questions: [list]
  }
}
```

### What Each Skill Receives

Each skill receives only the data it needs from upstream skills. This table defines the exact context passed to each skill:

| Target Skill | Receives From | Specific Data Passed |
|-------------|--------------|---------------------|
| 01 Idea Validation | Intake only | Problem description, target customer, founder background |
| 02 Business Model | Skill 01 | Validation verdict, customer archetype, market size, WTP signals, competitor gaps |
| 03 Fundraising | Skills 01, 02, 08, 09, 10 | Proof points (01), unit economics + positioning (02), traction metrics (08), team bios (09), financial model (10) |
| 04 Go-to-Market | Skills 02, 05 | Pricing + positioning (02), product features for launch sequencing (05) |
| 05 Product | Skill 01 | Validated problem statement, customer pain points, workarounds discovered |
| 06 Sales | Skills 02, 04 | Value proposition + pricing tiers (02), channel strategy + pipeline channels (04) |
| 07 Marketing & Brand | Skills 02, 04 | Positioning statement + best-fit customer (02), distribution channels + launch timing (04) |
| 08 Growth & Analytics | Skills 06, 07 | Conversion funnel metrics (06), acquisition channel data (07) |
| 09 Operations | Skill 08 | OKR targets derived from growth metrics, North Star metric |
| 10 Finance & Accounting | Skills 02, 03, 09 | Revenue model + unit economics (02), funding amount + runway (03), headcount plan (09) |
| 11 Customer Success | Skills 05, 08 | Product features for onboarding design (05), retention metrics + cohort data (08) |
| 12 Legal & Compliance | Skills 03, 09 | SAFE terms + cap table (03), governance structure + board composition (09) |

---

## Deep Research Protocol

### When to Use Internet Research

Internet research via web search is used to supplement skill outputs with real-world data. It is required for artifact generation and optional during individual skill runs. Most AI platforms support web search natively (see README for platform-specific details).

| Research Trigger | Required/Optional | Skills Involved |
|-----------------|-------------------|----------------|
| Market size (TAM/SAM/SOM) | **Required** for Business Plan and Pitch Deck | 01, 02, Artifact generation |
| Competitor landscape | **Required** for Business Plan and Pitch Deck | 02, Artifact generation |
| Industry benchmarks (LTV, CAC, churn) | **Required** for financial projections | 02, 10, Artifact generation |
| Recent funding rounds in the industry | Optional (strengthens fundraising context) | 03 |
| Regulatory updates | Optional (for regulated industries) | 12 |
| Industry reports and trends | Optional (strengthens market analysis) | Artifact generation |
| Comparable company analysis | Optional (strengthens valuation context) | 03, 10 |

### Search Query Templates

Organize research queries by Business Plan section. Run these systematically before artifact generation.

**Market Analysis Queries (Part IV):**
```
"[industry] market size [current_year]"
"[industry] market size forecast [current_year + 3]"
"[industry] growth rate CAGR"
"[industry] trends [current_year]"
"[industry] total addressable market"
"[specific_segment] market size"
"[industry] adoption rate"
"[industry] market drivers"
```

**Competitive Analysis Queries (Part V):**
```
"[competitor_name] funding round"
"[competitor_name] revenue"
"[competitor_name] pricing"
"[competitor_name] review"
"[industry] startups [current_year]"
"[industry] competitive landscape"
"[industry] market leaders"
"alternatives to [competitor_name]"
```

**Financial Benchmark Queries (Part X):**
```
"[industry] average LTV CAC ratio"
"[industry] gross margin benchmark"
"[industry] SaaS metrics benchmark [current_year]"
"[industry] startup burn rate"
"[industry] average deal size"
"[industry] customer acquisition cost benchmark"
"[industry] churn rate benchmark"
"[industry] payback period benchmark"
```

**Regulatory Queries (Part XII):**
```
"[industry] regulations [jurisdiction]"
"[industry] compliance requirements [country]"
"[industry] licensing requirements"
"[industry] data privacy requirements"
"[industry] regulatory trends [current_year]"
```

### Research Quality Rules

1. **Recency:** Prefer data from the last 2 years. Flag anything older than 3 years as potentially outdated
2. **Cross-referencing:** Cross-reference at least 2 independent sources for any market size or growth rate claim
3. **Source quality hierarchy:** Government/industry body data > analyst reports (Gartner, Forrester, CB Insights) > press coverage > blog posts > forum posts
4. **Transparency:** Clearly distinguish between hard data (cited with source and date) and estimates (labeled as such)
5. **Gaps:** When data is unavailable or conflicting, state it explicitly: "Market size data for [segment] is not publicly available. Using [proxy metric] as an estimate."
6. **Attribution:** Every data point from research includes: source name, URL, and date accessed
7. **Bias check:** When using a single source for a key claim (e.g., only one analyst firm's TAM estimate), note the limitation

### Research Execution Process

```
FUNCTION conduct_research(industry, competitors, jurisdiction):

  # Phase 1: Market sizing (3-5 queries)
  market_data = search_web("[industry] market size [year]")
  market_growth = search_web("[industry] growth rate forecast")
  market_segments = search_web("[specific_segment] market size")
  CROSS_REFERENCE market_data with at least 2 sources

  # Phase 2: Competitive landscape (2-4 queries per competitor)
  FOR each competitor in competitors:
    comp_funding = search_web("[competitor] funding round")
    comp_pricing = search_web("[competitor] pricing")
    comp_reviews = search_web("[competitor] reviews users")
  competitive_landscape = search_web("[industry] startup landscape [year]")

  # Phase 3: Financial benchmarks (2-3 queries)
  benchmarks = search_web("[industry] SaaS metrics benchmark")
  unit_economics = search_web("[industry] LTV CAC benchmark")

  # Phase 4: Regulatory (if applicable)
  IF industry in regulated_industries:
    regulations = search_web("[industry] regulations [jurisdiction]")
    compliance = search_web("[industry] compliance requirements")

  # Phase 5: Validate and compile
  FOR each data point:
    VERIFY at least 2 sources agree
    LABEL confidence: HIGH (multiple sources), MEDIUM (single reputable source), LOW (estimate/proxy)
    FORMAT with citation: "According to [Source] (URL, accessed [date]), [claim]"

  RETURN compiled_research
```

---

## Artifact Generation

### Triggers

| Artifact | Triggers When | Required Skill Outputs |
|----------|--------------|----------------------|
| **Business Plan** | Full system run (Workflow C), explicit request, or "prepare to raise" + "complete plan" | Minimum: Skills 01, 02, 03, 05, 10. Best: All 12. |
| **Pitch Deck** | Full system run (Workflow C), fundraising focus, explicit request, or "prepare to raise" | Minimum: Skills 01, 02, 03. Best: 01, 02, 03, 05, 08, 09, 10. |

### Assembly Process

```
FUNCTION generate_business_plan(journey_context, research_data):

  # Step 1: Verify minimum skill outputs are available
  required = [01, 02, 03, 05, 10]
  FOR each skill in required:
    IF journey_context[skill] is missing:
      WARN "Skill [skill] output is missing. Business Plan Part [X] will be incomplete."
      EITHER run the skill OR ask founder for manual input

  # Step 2: Conduct deep research if not already done
  IF research_data is empty:
    research_data = conduct_research(journey_context.industry, ...)

  # Step 3: Assemble each Business Plan part using the generator template
  # See artifacts/business-plan.md for part-by-part assembly instructions
  FOR each part in business_plan_template:
    content = compose_part(part, journey_context, research_data)
    CROSS_REFERENCE with other parts for consistency

  # Step 4: Add disclaimers
  ADD General Disclaimer
  ADD Financial Disclaimer
  ADD Legal Disclaimer
  ADD Investment Disclaimer

  # Step 5: Quality check
  VERIFY all 13 parts are complete
  VERIFY financial numbers are consistent across parts
  VERIFY market data is cited with sources
  VERIFY cross-references between parts are accurate

  # Step 6: Save artifact
  # Output path: artifacts/<company-name>/business-plan/<YYYY-MM-DD_HHmm>-business-plan.md
  SAVE business_plan to artifacts/{company_name}/business-plan/{timestamp}-business-plan.md

  RETURN business_plan
```

```
FUNCTION generate_pitch_deck(journey_context, research_data):

  # Step 1: Verify minimum skill outputs
  required = [01, 02, 03]
  FOR each skill in required:
    IF journey_context[skill] is missing:
      WARN "Skill [skill] output is missing. Pitch Deck Slide [X] will be weakened."

  # Step 2: Research for market slide and competition slide
  IF research_data is empty:
    research_data = conduct_research(journey_context.industry, ...)

  # Step 3: Assemble each slide using the generator template
  # See artifacts/pitch-deck.md for slide-by-slide assembly instructions
  FOR each slide in pitch_deck_template:
    content = compose_slide(slide, journey_context, research_data)

  # Step 4: Add disclaimers
  ADD General Disclaimer
  ADD Financial Disclaimer
  ADD Investment Disclaimer

  # Step 5: Quality check
  VERIFY all 10 slides are present
  VERIFY no slide exceeds its content target
  VERIFY financial numbers match Business Plan (if both generated)
  VERIFY market data is cited

  # Step 6: Save artifact
  # Output path: artifacts/<company-name>/pitch-deck/<YYYY-MM-DD_HHmm>-pitch-deck.md
  SAVE pitch_deck to artifacts/{company_name}/pitch-deck/{timestamp}-pitch-deck.md

  RETURN pitch_deck
```

### Artifact Quality Checklist

Before delivering any artifact, verify:

- [ ] All sections are complete (no "[TODO]" or "[INSERT]" placeholders remaining)
- [ ] Financial numbers are internally consistent (revenue in Part X matches Part II matches Pitch Deck Slide 9)
- [ ] Market data is cited with source, URL, and date
- [ ] Cross-references between artifacts are accurate (Business Plan Part IV matches Pitch Deck Slide 4)
- [ ] Appropriate disclaimers are included (General + domain-specific)
- [ ] Artifact metadata follows `shared/artifact-format.md` (artifact type, generated_by, startup, date, version)
- [ ] Assumptions are explicitly labeled and listed in the Assumptions & Limitations section
- [ ] Next Steps section includes actionable, specific recommendations

---

## Progress Tracking

### Journey Progress Checklist

Maintain this checklist throughout the engagement. Update after each skill completes.

```
Journey Progress: [Startup Name]
Stage: [detected stage]
Started: [date]
Last Updated: [date]

Intake & Routing:
- [ ] Intake complete — Stage detected: [stage]
- [ ] Skills routed: [list of skills to run]
- [ ] Run type: [single / stage-based / full / partial: pattern name]

Skills Completed:
- [ ] Skill 01: Idea Validation — Verdict: [GO/PIVOT/KILL] — Confidence: [H/M/L]
- [ ] Skill 02: Business Model — Model: [type] — LTV:CAC: [ratio]
- [ ] Skill 03: Fundraising — Raising: [$amount] via [instrument]
- [ ] Skill 04: Go-to-Market — Channels: [selected] — Launch: [date]
- [ ] Skill 05: Product — PRD: [complete/draft] — Features: [count]
- [ ] Skill 06: Sales — Methodology: [type] — Pipeline: [stages]
- [ ] Skill 07: Marketing & Brand — Voice: [defined] — Channels: [count]
- [ ] Skill 08: Growth & Analytics — North Star: [metric] — Growth: [rate]
- [ ] Skill 09: Operations — Team: [size] — OKRs: [set/not set]
- [ ] Skill 10: Finance & Accounting — Burn: [$X/mo] — Runway: [months]
- [ ] Skill 11: Customer Success — Churn: [rate] — TTFV: [target]
- [ ] Skill 12: Legal & Compliance — Entity: [type] — Cap Table: [clean/issues]

Research:
- [ ] Market research conducted — Sources: [count]
- [ ] Competitive research conducted — Competitors analyzed: [count]
- [ ] Financial benchmarks gathered — Industry: [name]

Artifacts:
- [ ] Business Plan generated — Version: [N]
- [ ] Pitch Deck generated — Version: [N]

Open Questions:
- [list of unresolved items from skill outputs]
```

### Session State Management

When a session ends mid-journey:

1. **Save the journey progress checklist** with all completed items checked and notes filled in
2. **Save the accumulated journey context** with all skill output summaries
3. **Note the next skill to run** and any pending decisions
4. **Record any research already conducted** to avoid re-running searches

When resuming in a new session:

1. **Ask the founder:** "Last time we completed [X, Y, Z]. Would you like to continue from where we left off, or has anything changed?"
2. **If continuing:** Load the journey context and resume from the next skill
3. **If changed:** Re-run the stage detection with updated information and adjust the routing

---

## Anti-Patterns

### 1. Running All 12 Skills When 3 Would Suffice

- **Why founders trigger it:** "More is better" mentality, or asking for "everything" when they need one thing
- **Why it harms them:** Information overload dilutes focus. A founder at Stage 1 does not benefit from a Customer Success strategy — it is noise that distracts from the critical question: "Is this idea worth pursuing?"
- **Instead:** Use the routing logic to identify the 2-4 most impactful skills for the founder's current stage. Ask: "If I could help you with one thing right now, what would it be?" Route to that

### 2. Skipping Validation and Jumping to Fundraising

- **Why founders do it:** Excitement, urgency to raise money, belief that capital solves everything
- **Why it harms them:** Pitch decks built on assumptions instead of evidence. Investors see through unvalidated claims immediately — "we believe" is not "customers told us." The founder burns their best investor relationships with a weak pitch
- **Instead:** Run Skill 01 first — even a 30-minute validation pass produces proof points that strengthen every downstream skill. A validated problem is the foundation of a credible pitch

### 3. Generic Advice That Ignores Specific Context

- **Why it happens:** Founder provides vague inputs ("I have a tech startup"), and the system responds with generic frameworks
- **Why it harms them:** The entire system exists to provide specific, contextual advice. "You should validate your idea" is useless — "Your hypothesis is that ops managers at 10-50 person SaaS companies manually reconcile invoices. Here is how to test that in 5 interviews this week" is actionable
- **Instead:** Push back on vague inputs. Ask follow-up questions until you have specifics: a named customer, a specific problem, a concrete price point. Never proceed with generic context

### 4. Treating Generated Artifacts as Final Documents

- **Why founders do it:** The Business Plan and Pitch Deck look polished and comprehensive
- **Why it harms them:** Business plans and pitch decks require iteration based on real feedback from investors, customers, and advisors. A "final" document that has never been tested in a meeting is a first draft, regardless of how complete it looks
- **Instead:** Frame all artifacts as "Version 1.0 — iterate based on investor and customer feedback." Include specific next steps for testing and refining each section

### 5. Not Using Web Research for Market and Competitive Analysis

- **Why it happens:** Skipping the research step to save time, or trusting the founder's self-reported market knowledge
- **Why it harms them:** Market size and competitive analysis with invented numbers destroys credibility with investors. "The market is $10 billion" without a citation is a red flag — investors will check, and if the number is wrong, trust is lost
- **Instead:** Always run web search for market data when generating artifacts. Use the research query templates. Flag when data is unavailable rather than guessing. A gap labeled "data not publicly available" is more credible than a fabricated number

### 6. Passing Full Context to Every Skill

- **Why it happens:** Seems safer to give each skill "everything" rather than filtering
- **Why it harms the output:** Downstream skills get overwhelmed with irrelevant context. Skill 06 (Sales) does not need the full validation scorecard — it needs the customer archetype and value proposition. Excessive context leads to unfocused outputs that rehash upstream findings instead of producing new insight
- **Instead:** Follow the Context Passing Protocol strictly. Pass only the specific data points each skill needs (see the "What Each Skill Receives" table)

### 7. Generating Artifacts Without Completing Prerequisite Skills

- **Why it happens:** Founder asks for "just the pitch deck" without doing validation or business model work
- **Why it harms the output:** A pitch deck without validated problem evidence (Skill 01), unit economics (Skill 02), and funding strategy (Skill 03) is a template filled with guesses. It will not survive an investor meeting
- **Instead:** Warn the founder about missing prerequisites. Offer to run the minimum skill set for the requested artifact (see Artifact Triggers table). If the founder insists on skipping, label every assumption clearly: "This slide contains estimated data — not validated"

### 8. Treating the Orchestrator as a Linear Checklist

- **Why it happens:** Running skills 01-12 in strict order without adapting to the founder's needs
- **Why it harms them:** Skills should be selected and ordered based on the founder's specific situation. A technical founder with a working product does not need Skill 05 (Product) before Skill 06 (Sales). A bootstrapped founder does not need Skill 03 (Fundraising) at all
- **Instead:** Use the routing engine dynamically. Adapt skill selection and order based on intake responses, not a fixed sequence. The dependency order is a default, not a mandate

---

## Interconnections

This skill is the hub of the FounderOS. It connects to all 12 skills and produces the system's two primary artifacts.

### Inputs (from all skills)

| From Skill | Data Received | Used For |
|------------|---------------|----------|
| 01 Idea Validation | Validation verdict (GO/PIVOT/KILL), customer archetype, market signals, founder-market fit, PMF signal inventory | Stage routing, Business Plan Parts III-V, Pitch Deck Slides 2, 4 |
| 02 Business Model | Revenue model, pricing structure, unit economics (LTV, CAC, payback, LTV:CAC), competitive positioning | Business Plan Parts V-VII, X, Pitch Deck Slides 5, 8, 9 |
| 03 Fundraising | Funding strategy (amount, instrument, timeline), investor list, cap table, runway, milestones | Business Plan Parts XI-XII, Pitch Deck Slides 9, 10 |
| 04 Go-to-Market | Channel strategy, launch timeline, first-100-customers playbook, pre-launch plan | Business Plan Part VI, Pitch Deck (supports Slide 6 traction narrative) |
| 05 Product | PRD (problem, solution, non-goals, metrics), roadmap with RICE scores, user stories | Business Plan Part III, Pitch Deck Slide 3 |
| 06 Sales | Pipeline structure, sales methodology, outreach sequences, conversion metrics | Business Plan Parts VI-VII, Pitch Deck (supports Slide 6) |
| 07 Marketing & Brand | Brand voice, content strategy, distribution plan, community plan | Business Plan Part VII, Pitch Deck (supports Slide 3 messaging) |
| 08 Growth & Analytics | North Star metric, AARRR dashboard, cohort retention, experiments | Business Plan Part VI, Pitch Deck Slide 6 |
| 09 Operations | Org chart, hiring plan, OKRs, board deck template | Business Plan Part VIII, Pitch Deck Slide 7 |
| 10 Finance & Accounting | Burn rate, runway, cash flow forecast, 3-year projections, scenario analysis | Business Plan Part X, Pitch Deck Slide 9 |
| 11 Customer Success | Onboarding flow, health scoring, churn analysis, expansion revenue | Business Plan Part IX, Pitch Deck (supports Slide 6 retention data) |
| 12 Legal & Compliance | Entity structure, cap table, vesting, compliance requirements, IP status | Business Plan Part XII, Pitch Deck (supports Slide 7 team/structure) |

### Outputs

| Output | Description | Consumer |
|--------|-------------|----------|
| **Business Plan** | Comprehensive 13-part business plan assembled from all skill outputs + internet research | Founder (for internal planning), Investors (for due diligence), Advisors (for feedback) |
| **Pitch Deck** | 10-slide Sequoia/YC hybrid pitch deck | Founder (for investor meetings), Investors (for initial evaluation) |
| **Journey Summary** | Progress checklist showing completed skills, key decisions, and open questions | Founder (for tracking), Orchestrator (for session continuity) |
| **Next Actions** | Prioritized list of recommended next steps based on the founder's current stage and gaps | Founder (for immediate execution) |
| **Research Compilation** | All market, competitive, and benchmark data gathered during research phase, with citations | Business Plan (Parts IV, V, X), Pitch Deck (Slides 4, 8, 9), Founder (for reference) |

### Cross-Skill Data Flow Summary

```
Stage 1: Ideation
  01 Idea Validation ──→ 02 Business Model
       │                      │
       │  validation          │  unit economics
       │  verdict             │  pricing
       │  market data         │  positioning
       ▼                      ▼
Stage 2: Pre-Launch
  03 Fundraising    04 Go-to-Market    05 Product
       │                 │                  │
       │  funding         │  channels        │  PRD
       │  cap table       │  launch plan     │  roadmap
       ▼                 ▼                  ▼
Stage 3: Launch
  06 Sales    ◄──►    07 Marketing & Brand
       │                      │
       │  pipeline             │  brand voice
       │  conversion           │  distribution
       ▼                      ▼
Stage 4: Growth
  08 Growth & Analytics ──→ 09 Operations
       │                         │
       │  metrics                 │  org structure
       │  cohorts                 │  OKRs
       ▼                         ▼
Stage 5: Scale
  10 Finance    11 Customer Success    12 Legal & Compliance
       │              │                      │
       │  projections  │  churn/health         │  entity/cap table
       ▼              ▼                      ▼
  ┌─────────────────────────────────────────────┐
  │         ORCHESTRATOR ARTIFACT ENGINE         │
  │                                             │
  │  Journey Context + Deep Research            │
  │         ↓                 ↓                 │
  │  Business Plan      Pitch Deck              │
  │  (13 parts)         (10 slides)             │
  └─────────────────────────────────────────────┘
```

---

## Disclaimers

All artifacts generated by the orchestrator include the following disclaimers (from `shared/disclaimer-templates.md`):

**Business Plan:** General + Financial + Legal + Investment
**Pitch Deck:** General + Financial + Investment
**Individual Skill Outputs:** General + domain-specific (Financial for Skills 02, 10; Legal for Skills 03, 12)

See `shared/disclaimer-templates.md` for full disclaimer text.

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
