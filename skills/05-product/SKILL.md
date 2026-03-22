# Skill 05: Product

> Transform validated problems into shippable software — from feature ideation through PRD writing, roadmap sequencing, RICE prioritization, and story decomposition — without building the wrong thing at the wrong time.

---

## Diagnostic

Before giving advice, assess the founder's current state in product management. Ask these questions to route to the right workflow:

### State Assessment

| State | Description | Route To |
|-------|-------------|----------|
| **Feature Ideation** | No structured way to capture or evaluate feature ideas; building based on gut feel or loudest customer voice | Workflow A |
| **PRD Writing** | Has features in mind but no structured way to communicate them to engineers; sprint planning is chaotic | Workflow B |
| **Roadmap** | Individual features defined but no prioritization system; roadmap is a wishlist rather than a plan | Workflow C |
| **Scaling Product Org** | Roadmap exists but team has grown; need process to maintain alignment across PM/eng/design/stakeholders | Workflow D |

### Diagnostic Questions

1. Do you have a written, shared definition of what problem each feature solves and why it matters now vs. later?
2. When engineers ask why a feature is prioritized, can you cite a specific metric or customer segment it will move?
3. Does your roadmap have explicit non-goals — things you are deliberately NOT building this quarter?
4. How many user stories do you have that an engineer could pick up and build without asking any clarifying questions?

### Routing Logic

```
IF no written product docs exist → Route to Workflow A (Feature Ideation)
ELIF PRDs exist but roadmap lacks scoring → Route to Workflow B (PRD Writing)
ELIF roadmap exists but prioritization is ad hoc → Route to Workflow C (Roadmap & Prioritization)
ELSE (team growing, cross-functional alignment needed) → Route to Workflow D (Scaling Product Org)
```

---

## Workflows

### Workflow A: Feature Ideation — Structured Idea Capture

**Objective:** Move from "we have ideas" to a scored backlog of features with validated problem statements.

**Steps:**

1. **Establish a single capture system**
   - Action: Create one source of truth for feature ideas (Notion, Linear, or even a spreadsheet). Every idea gets: source (customer/internal/competitor), problem it solves, who asked, and date.
   - Output: Idea backlog with metadata
   - Decision point: Ideas with 3+ independent customer requests surface as candidates for PRD

2. **Write a problem statement before any solution**
   - Action: For each candidate idea, write: "We have observed [specific behavior/complaint]. This affects [segment] [frequency]. If we solve it, we expect [measurable outcome]."
   - Output: Problem statement (2–4 sentences per idea)
   - Checkpoint: Can you name at least 3 customers who have this problem right now?

3. **Run a lightweight RICE pre-screen**
   - Action: Score each candidate on RICE (see Frameworks section) before investing in a full PRD. Takes 15 minutes per idea.
   - Output: Ideas ranked by RICE score; top quartile gets full PRD treatment
   - Next: Take top-scored ideas into Workflow B (PRD Writing)

### Workflow B: PRD Writing — Communicating Intent to Engineers

**Objective:** Produce a PRD that engineers can build from without constant clarification, and that PMs can defend in prioritization meetings.

**Steps:**

1. **Complete the Square/Kevin Yien PRD template**
   - Action: Fill every section of `templates/prd-square-template.md`. Do not skip non-goals — they are as important as goals.
   - Output: Draft PRD
   - Decision point: Can you articulate success in a metric that will change within 90 days?

2. **Review non-goals explicitly**
   - Action: List at least 3 things this feature will NOT do. Share with engineers before they start. Non-goals prevent scope creep and protect launch dates.
   - Output: Non-goals section of PRD
   - Checkpoint: Engineers should be able to say "we don't need to solve X" with confidence.

3. **Decompose into user stories using INVEST**
   - Action: Break the PRD into individual user stories. Validate each against INVEST criteria (see Frameworks). Stories failing INVEST get rewritten before entering sprint planning.
   - Output: User story list linked to parent PRD
   - Next: Stories enter sprint planning; PRD feeds Roadmap in Workflow C

4. **Define acceptance criteria for each story**
   - Action: Write Given/When/Then acceptance criteria for every story. These become the QA checklist.
   - Output: Acceptance criteria per story
   - Next: QA uses these; engineers use them as definition of done

### Workflow C: Roadmap & Prioritization — Sequencing What Gets Built

**Objective:** Convert a backlog of PRDs into a time-sequenced roadmap that stakeholders trust and engineers can execute against.

**Steps:**

1. **Choose roadmap type**
   - Action: Select roadmap format based on company stage (see Frameworks — Roadmap Types). Pre-Series A: Now/Next/Later. Series A+: Theme-based. Series B+: Time-based quarterly.
   - Output: Roadmap format decision
   - Decision point: If investors or board need visibility, time-based is required regardless of stage

2. **Score all candidate items with RICE**
   - Action: Use `templates/roadmap-rice.md` to score every item in the backlog. Calibrate scores across the team — everyone must use the same scale for Reach and Impact.
   - Output: RICE-scored backlog
   - Checkpoint: Top-scored items should match intuition. If not, investigate why scores diverge from gut feel — either calibrate the formula or surface a hidden assumption.

3. **Sequence by dependency, then RICE**
   - Action: Map dependencies between items. Items with no dependencies and high RICE go first. Items that unlock other items (foundational work) get sequenced even if RICE is lower.
   - Output: Sequenced roadmap
   - Next: Share roadmap with engineering leads for feasibility review; share with stakeholders for alignment

4. **Set explicit quarterly non-goals at roadmap level**
   - Action: Publish a list of things you will not build this quarter. Discuss with stakeholders. Get written acknowledgment.
   - Output: Roadmap non-goals list
   - Next: Review RICE scores and roadmap monthly; adjust based on new data from Skill 08 (Growth & Analytics)

### Workflow D: Scaling Product Org — Process for Growing Teams

**Objective:** Maintain product quality and alignment as the team grows beyond founder-built products.

**Steps:**

1. **Define product principles**
   - Action: Write 5–8 product principles that guide trade-off decisions. Examples: "We optimize for power users over casual visitors." "Default to simplicity; add complexity only when data demands it."
   - Output: Product principles document
   - Decision point: Principles must be specific enough to resolve real debates; generic principles like "build for users" are useless

2. **Establish PRD review cadence**
   - Action: Weekly PRD review meeting where PMs present new PRDs. Engineering leads, design, and relevant stakeholders must sign off before sprint planning.
   - Output: PRD review meeting structure
   - Checkpoint: Every PRD reviewed has a named owner and a target launch date

3. **Instrument features at launch**
   - Action: Every feature launch includes event tracking aligned to the success metric in the PRD. Partner with Skill 08 (Growth & Analytics) to instrument before shipping.
   - Output: Feature instrumentation plan
   - Next: Measure feature impact post-launch; feed results back into RICE calibration

---

## Frameworks

### RICE Scoring

**Source:** Intercom (product prioritization methodology)
**When to use:** Prioritizing features against each other in a backlog; useful when team members disagree on priority

**Formula:** `RICE Score = (Reach × Impact × Confidence) / Effort`

**Component Definitions:**

| Component | Definition | Scale |
|-----------|-----------|-------|
| **Reach** | How many users/customers will this affect per quarter? | Absolute number (e.g., 500 users) |
| **Impact** | How much will it move the key metric per person? | 3=massive, 2=high, 1=medium, 0.5=low, 0.25=minimal |
| **Confidence** | How confident are you in the Reach and Impact estimates? | 100%=high, 80%=medium, 50%=low |
| **Effort** | How many person-months will this take? | Absolute number (e.g., 2.0 person-months) |

**RICE Calibration Rules:**
- Reach must be estimated from data (analytics, customer count), not guesswork
- Impact 3 (massive) should be reserved for features that change the core value loop
- Confidence below 50% means you need more customer research before prioritizing
- Effort must include design, engineering, AND QA time
- Re-calibrate scores quarterly — old RICE scores expire

**Example application:**
> Feature: CSV export for reports
> - Reach: 200 users/quarter (from support ticket analysis)
> - Impact: 1 (medium — improves workflow but not core value)
> - Confidence: 80% (heard from multiple customers, pattern is clear)
> - Effort: 0.5 person-months
> - RICE = (200 × 1 × 0.80) / 0.5 = **320**

### INVEST Criteria for User Stories

**Source:** Bill Wake (2003, XP123)
**When to use:** Validating user stories before sprint planning; catching stories that are too large, ambiguous, or untestable

**Criteria:**

| Letter | Criterion | What to check |
|--------|-----------|---------------|
| **I** | Independent | Can this story be built and shipped without requiring another story to be completed first? |
| **N** | Negotiable | Is the implementation approach flexible, or is it locked to a specific technical solution? |
| **V** | Valuable | Does this story deliver value to the end user — not just to the engineering team? |
| **E** | Estimable | Can engineers give a rough estimate? If not, the story is too vague or too large. |
| **S** | Small | Can this be completed in a single sprint (1–2 weeks)? If not, decompose it. |
| **T** | Testable | Are there clear acceptance criteria that confirm "done"? |

**Failure modes:**
- Stories failing I: Create a dependency map and resequence
- Stories failing N: Strip implementation details from the story; leave "how" to engineers
- Stories failing E or S: Break into 2–4 smaller stories
- Stories failing T: Write Given/When/Then before accepting the story into sprint

**Example application:**
> Bad story: "Build a better dashboard" — fails I, E, S, T
> Good story: "As a power user, I want to filter the dashboard by date range so I can compare weekly performance. Given I am on the dashboard, when I select a date range, then the data refreshes to show only that period." — passes all INVEST criteria

### Roadmap Types

**Source:** Synthesized from Product School, Gibson Biddle, Melissa Perri
**When to use:** Choosing the right roadmap format for your company stage and audience

#### Now/Next/Later (Pre-Series A)

**Best for:** Teams of 1–5, early-stage, high uncertainty
**Structure:**
- **Now:** What we are building this sprint/month (committed, in-progress)
- **Next:** What comes after (planned but not started, may change)
- **Later:** Longer-term ideas (not committed, may never happen)
**Advantage:** Honest about uncertainty. Doesn't imply false precision on dates.

#### Theme-Based (Series A)

**Best for:** Teams of 5–15, product-market fit achieved, multiple workstreams
**Structure:** Roadmap organized by strategic themes (e.g., "Retention," "Enterprise," "Mobile") rather than features
**Advantage:** Communicates strategy, not just tactics. Works well with OKRs from Skill 09.

#### Time-Based Quarterly (Series B+)

**Best for:** Larger teams, board reporting required, coordinated go-to-market
**Structure:** Q1/Q2/Q3/Q4 with specific deliverables per quarter
**Advantage:** Stakeholder alignment; enables marketing and sales to plan around launches
**Caution:** Creates false precision. Buffer 20–30% capacity per quarter for unplanned work.

### Non-Goals Methodology

**Source:** Internal (Square/Google product management practice)
**When to use:** Every PRD; critical when scope creep is a pattern

**Why non-goals matter:**
Non-goals are the features, user segments, and use cases you are explicitly excluding from this version. Without them, every stakeholder fills the gap with their own assumptions — and scope creep begins before the sprint starts.

**How to write a non-goal:**
- Format: "This version will NOT [specific capability/segment/use case]. Rationale: [why it's excluded now]."
- Each non-goal should be contestable — if it's so obvious nobody would argue, it's not worth writing

**Non-goal checklist:**
1. At least one non-goal per stakeholder group that wanted something you're not building
2. At least one non-goal about the user segment you're NOT targeting with this feature
3. At least one technical non-goal (what the system won't handle — scale, edge case, integration)

---

## Templates

| Template | File | Purpose |
|----------|------|---------|
| Square/Kevin Yien PRD | `templates/prd-square-template.md` | Write PRDs that engineers can build from and stakeholders can approve |
| RICE Scoring Roadmap | `templates/roadmap-rice.md` | Score and sequence your backlog with calibrated RICE prioritization |
| User Stories with INVEST | `templates/user-stories-invest.md` | Decompose PRDs into sprint-ready stories with acceptance criteria |
| Prioritization Framework Comparison | `frameworks/prioritization-frameworks.md` | Compare RICE, ICE, MoSCoW, and Kano to choose the right method |

---

## Decision Trees

### Decision 1: Which Roadmap Type Should I Use?

```
START: What is your current company stage?
│
├─ Pre-Series A (< $3M raised, < 10 people) →
│   └─ Do you have a board requiring quarterly deliverables?
│       ├─ YES → Use time-based quarterly, but publish internally only
│       └─ NO → Use Now/Next/Later
│
├─ Series A ($3M–$15M, 10–40 people) →
│   └─ Do you have multiple parallel workstreams?
│       ├─ YES → Use theme-based roadmap
│       └─ NO → Use Now/Next/Later until workstreams diverge
│
└─ Series B+ (>$15M, 40+ people) →
    └─ Use time-based quarterly with buffer
        └─ Note: Reserve 20–30% capacity for unplanned work
```

### Decision 2: Should I Write a Full PRD or Just a Story?

```
START: How large and cross-functional is this change?
│
├─ Affects 1 engineer, < 1 week, self-contained →
│   └─ Write a user story only (INVEST check required)
│
├─ Affects 2–5 engineers, 1–4 weeks, some design work →
│   └─ Write a lightweight PRD (problem + solution + non-goals + 1 metric + stories)
│
└─ Affects multiple teams, > 1 month, new capability →
    └─ Write a full PRD (all sections of Square template)
        └─ Requires stakeholder sign-off before work begins
```

### Decision 3: Is This Feature Worth Prioritizing Now?

```
START: What is the RICE score?
│
├─ RICE > 500 →
│   └─ High priority. Move to PRD phase immediately.
│
├─ RICE 200–500 →
│   └─ Is there a strategic reason to prioritize above score?
│       ├─ YES (founder commitment, competitive threat, enterprise deal) →
│           Prioritize with explicit rationale documented
│       └─ NO → Queue for next planning cycle
│
├─ RICE 50–200 →
│   └─ Is this a table-stakes feature (competitors have it, customers expect it)?
│       ├─ YES → Prioritize, but timebox engineering effort
│       └─ NO → Park in Later bucket
│
└─ RICE < 50 →
    └─ Kill or table for 6+ months. Check assumptions.
```

### Decision 4: Is This User Story Ready for Sprint?

```
START: Run INVEST check
│
├─ Passes all 6 INVEST criteria →
│   └─ Story is sprint-ready
│
├─ Fails I (not independent) →
│   └─ Map dependencies. Can the blocker be resolved in the same sprint?
│       ├─ YES → Add dependency to sprint as separate story
│       └─ NO → Hold story until blocker ships
│
├─ Fails E or S (not estimable or not small) →
│   └─ Break into 2–4 smaller stories. Re-run INVEST on each.
│
└─ Fails T (not testable) →
    └─ Write Given/When/Then acceptance criteria. Re-run INVEST.
```

---

## Anti-Patterns

### 1. Building Without a Written Problem Statement

- **What it looks like:** Engineers sprint toward a feature because "the CEO said so" or "a customer asked for it" — no written problem, no metric.
- **Why founders do it:** Writing PRDs feels slow; there's pressure to ship.
- **Why it's harmful:** Engineers build the wrong solution. Scope creep sets in. Feature ships and nobody knows if it worked.
- **What to do instead:** Every item entering a sprint must have a 2-sentence problem statement and one measurable success metric. This takes 15 minutes — not a day.

### 2. Roadmap as a Promise List

- **What it looks like:** Roadmap shared externally with specific dates; every line item treated as a commitment. When timelines slip, trust erodes.
- **Why founders do it:** Sales wants to share roadmap with prospects. Investors want to see plans.
- **Why it's harmful:** Engineers feel locked; can't adapt to new information. Customer relationships are damaged when features are late.
- **What to do instead:** Keep two roadmaps: an internal RICE-scored backlog (the real plan) and an external theme-based narrative (the story). Never share dates externally unless they are contractual.

### 3. RICE Theater

- **What it looks like:** Team uses RICE scoring but inflates numbers to justify pre-determined decisions. Impact is always rated 2 or 3. Confidence is always 80%.
- **Why founders do it:** Wants the appearance of rigor without the discipline.
- **Why it's harmful:** RICE becomes noise. The team stops trusting the scores and goes back to gut-feel prioritization.
- **What to do instead:** Calibrate scores. At least one item per cycle must have Confidence ≤ 50% (it means you don't have enough data — go get it). No two features should have the same Reach unless they truly affect the same user count.

### 4. Skipping Non-Goals

- **What it looks like:** PRD defines what will be built but not what won't. Engineers interpret gaps as permission; stakeholders interpret gaps as promises.
- **Why founders do it:** Feels awkward to say "we're not building X" when X is what someone asked for.
- **Why it's harmful:** Scope creep on every feature. Engineering time balloons 50–100% beyond estimate. Launch is delayed.
- **What to do instead:** Non-goals are mandatory in every PRD. Frame them as strategic choices: "We're not building this in v1 so we can ship faster and learn from real usage."

### 5. User Stories Without Acceptance Criteria

- **What it looks like:** Stories like "As a user, I want better search." No Given/When/Then. Engineers interpret "better" differently. QA has nothing to test against.
- **Why founders do it:** Writing acceptance criteria feels like extra work before the sprint starts.
- **Why it's harmful:** Feature ships but no one agrees if it's done. Definition of done becomes "when the engineer says so."
- **What to do instead:** Every story must have at least one Given/When/Then acceptance criterion before it enters sprint planning. No exceptions.

### 6. Feature Factory Mentality

- **What it looks like:** Team ships features at high velocity but never measures impact. Success is defined by shipping, not by outcomes.
- **Why founders do it:** Shipping feels like progress. Measuring impact requires slowing down and setting up instrumentation.
- **Why it's harmful:** Codebase grows, product becomes complex, yet key metrics don't move. Team burns out shipping things that don't matter.
- **What to do instead:** Every PRD has a success metric. Every feature launch includes event tracking (see Skill 08). 4 weeks after launch, review whether the metric moved. If not, either iterate or kill the feature.

### 7. Competitor-Driven Roadmap

- **What it looks like:** 50%+ of roadmap items are "competitor X has this feature, we need it too."
- **Why founders do it:** Fear of falling behind; investors ask "how do you compare to X?"
- **Why it's harmful:** You end up with a copycat product that's always one step behind the category leader. Your differentiation disappears.
- **What to do instead:** Competitor features belong in the "table stakes" bucket only. Run them through RICE. If a competitor feature scores below 200, it probably doesn't matter. Spend 70%+ of roadmap on your unique insight about where the market is going.

---

## Interconnections

### Inputs (what this skill receives from other skills)

| From Skill | Data Received | How It's Used |
|------------|---------------|---------------|
| Skill 01 (Idea Validation) | Problem validation, customer interview insights, PMF signal strength | Problem statement in PRD is grounded in validated pain; ensures PRD solves real problems, not invented ones |
| Skill 04 (Go-to-Market) | Feature sequencing requirements for launch | Determines which features must be in v1 vs. post-launch; aligns roadmap to GTM launch timeline |
| Skill 08 (Growth & Analytics) | Feature impact metrics, retention data, A/B test results | Feeds RICE Reach and Impact estimates; validates post-launch success metrics; informs roadmap adjustments |
| Skill 11 (Customer Success) | Product feedback, feature requests, churn analysis | Surfaces high-priority fixes and improvements; feeds idea backlog with real customer signals |

### Outputs (what this skill produces for other skills)

| To Skill | Data Produced | Format |
|----------|---------------|--------|
| Skill 04 (Go-to-Market) | Feature sequencing for launch | Ordered list of features by launch phase (MVP, v1.1, v2) with dates |
| Skill 06 (Sales) | Product demo script, feature-benefit mapping | Feature list with customer-facing value propositions for each capability |
| Skill 11 (Customer Success) | Onboarding flow based on shipped features | Feature list per release + user story acceptance criteria for onboarding design |

### Context Passing

When this skill completes, pass the following to the orchestrator:
- Prioritized RICE-scored roadmap with Now/Next/Later or quarterly breakdown
- PRD documents for top 3–5 features (linked, not inlined)
- Non-goals list for current quarter
- Success metrics per feature (to be instrumented in Skill 08)
- User stories in sprint-ready format (INVEST-validated with acceptance criteria)

---

## Artifacts

### Product Roadmap Artifact

- **Type:** Prioritized plan
- **Generated when:** Workflow C Step 3 completes
- **Format:** Follow `shared/artifact-format.md`
- **Sections:** Executive summary, roadmap by period, RICE scoring rationale, non-goals, dependency map, success metrics per item
- **Disclaimer:** General Disclaimer (all artifacts)

### PRD Artifact

- **Type:** Specification document
- **Generated when:** Workflow B Step 1–4 completes
- **Format:** Follow `templates/prd-square-template.md`
- **Sections:** Problem, solution, non-goals, success metrics, user stories, technical considerations, open questions
- **Disclaimer:** General Disclaimer

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
