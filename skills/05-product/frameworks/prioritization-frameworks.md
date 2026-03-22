# Prioritization Frameworks Comparison

> Four frameworks for deciding what to build next. Each has different strengths. Use this guide to pick the right one for your situation.

---

## Framework Comparison Matrix

| Framework | Best for | Data required | Team size | Time to score | Weakness |
|-----------|---------|--------------|-----------|--------------|---------|
| **RICE** | Large backlogs, data-rich teams | Analytics + estimates | 5–50 | 15 min/item | Calibration takes time; scores can be gamed |
| **ICE** | Fast triage, early-stage | Intuition + some data | 1–10 | 5 min/item | Too subjective; scores drift without calibration |
| **MoSCoW** | Release scoping, stakeholder alignment | Requirements list | Any | 2 min/item | No relative ranking; everything becomes "Must" |
| **Kano** | Understanding customer delight vs. basics | Customer surveys | 5–20 | Survey + analysis | Requires dedicated research time |

---

## 1. RICE Scoring

**Source:** Intercom (Sean McBride, 2016)
**Best for:** Mid-to-large backlogs where you need a defensible, data-backed ranking

### Formula

```
RICE = (Reach × Impact × Confidence) / Effort
```

### Scales

| Component | Scale |
|-----------|-------|
| Reach | Absolute number of users affected per quarter |
| Impact | 3=massive / 2=high / 1=medium / 0.5=low / 0.25=minimal |
| Confidence | 100% / 80% / 50% / 25% |
| Effort | Person-months (design + eng + QA) |

### When RICE Works Best

- You have analytics data to ground Reach estimates
- Your team debates priorities regularly
- You need to communicate prioritization logic to engineers and stakeholders
- You're managing 10+ items in the backlog

### When RICE Breaks Down

- No analytics data — Reach becomes a guess
- Team inflates scores to justify predetermined decisions (RICE theater)
- One-person team where overhead isn't worth it

### Calibration Requirement

Run a calibration session quarterly:
1. Pick your highest and lowest expected Reach items — agree on the numbers
2. Agree on what Impact = 3 looks like for your product's primary metric
3. Have engineers calibrate Effort with a reference item (e.g., "Feature X took 1 person-month; score accordingly")

See `templates/roadmap-rice.md` for full scoring template.

---

## 2. ICE Scoring

**Source:** Sean Ellis (GrowthHackers, 2012) — originally for growth experiments
**Best for:** Early-stage teams, growth experiments, fast triage of many ideas

### Formula

```
ICE = Impact + Confidence + Ease
```
Each component scored 1–10. Total = sum (max 30).

### Scales

| Component | 1–3 | 4–6 | 7–10 |
|-----------|-----|-----|------|
| **Impact** | Minimal improvement | Moderate improvement | Game-changing improvement |
| **Confidence** | Gut feel, no data | Some signals (interviews/tickets) | Strong data (analytics + tests) |
| **Ease** | Months of eng work | Weeks | Days |

### ICE vs. RICE Key Differences

| Dimension | ICE | RICE |
|-----------|-----|------|
| Formula | Additive (sum) | Multiplicative with division |
| Effort treatment | "Ease" goes up the scale (easier = higher score) | "Effort" divides the score (more effort = lower score) |
| Precision | Low — 1–10 scales are subjective | Medium — Reach and Effort are absolute |
| Speed | Very fast | Slower but more rigorous |
| Best fit | Hypothesis triage, growth experiments | Product roadmap prioritization |

### When to Use ICE

- You need to rank 20+ experiment ideas quickly
- You don't have solid analytics data yet
- You're evaluating growth experiments, not core product features
- You need a "good enough" ranking fast

### ICE Limitations

- Scores drift over time without calibration
- Two people scoring the same item will give very different numbers
- "Impact" is entirely subjective — no anchor to actual metrics
- Tends to favor easy, low-impact tasks (Ease score dominates)

---

## 3. MoSCoW Method

**Source:** Dai Clegg, Oracle UK (1994); popularized in DSDM agile framework
**Best for:** Release scoping, defining MVP, stakeholder alignment meetings

### Categories

| Category | Definition | Rule of thumb |
|----------|-----------|---------------|
| **M**ust Have | Non-negotiable — without this, the release fails or is useless | Max 60% of items |
| **S**hould Have | Important but not critical — high value, could work without | ~20% of items |
| **C**ould Have | Nice to have — enhances experience but not needed for core value | ~20% of items |
| **W**on't Have | Explicitly excluded from this release — may be in future | No limit |

### MoSCoW Process

1. List all features/requirements for the release
2. Have each stakeholder assign M/S/C/W independently
3. Reveal assignments — discuss where there's disagreement
4. Enforce the rule: Musts must be less than 60% of capacity
5. Everything that becomes "Must" must be defended against: "What breaks if this isn't in v1?"

### The Must Inflation Problem

The #1 failure mode of MoSCoW is every stakeholder labeling their favorite feature as "Must." Counter-tactics:
- Ask: "Would you delay the launch for this?" If no, it's not a Must.
- Enforce capacity constraint: "We have capacity for 5 items. Which 5 are truly non-negotiable?"
- Use time pressure: "If we had to ship tomorrow with what we have, would this be missing?"

### When MoSCoW Works Best

- Defining scope for a specific release or milestone
- Aligning multiple stakeholders on what's in/out
- When you need a quick verbal/qualitative ranking, not a numerical score
- MVP scoping exercises

### When MoSCoW Breaks Down

- Everything becomes a Must (no discipline on the label)
- Cannot rank within a category (all Musts treated equally)
- Doesn't account for effort — a Must that takes 6 months vs. 1 day is treated the same

---

## 4. Kano Model

**Source:** Noriaki Kano (1984), Tokyo University of Science
**Best for:** Understanding which features create delight vs. which are basic expectations

### Feature Categories

| Category | Description | Customer reaction if present | Customer reaction if absent |
|----------|-------------|------------------------------|----------------------------|
| **Basic (Must-be)** | Expected features — not having them causes dissatisfaction | Neutral (expected) | Very dissatisfied |
| **Performance (Linear)** | More is better — directly proportional to satisfaction | Proportionally satisfied | Proportionally dissatisfied |
| **Delight (Attractive)** | Unexpected features — surprise and delight | Very satisfied | Neutral (didn't know to want it) |
| **Indifferent** | Users don't care either way | Neutral | Neutral |
| **Reverse** | Having this feature makes things worse for some users | Dissatisfied | Satisfied |

### Kano Survey Questions

For each feature, ask two questions:

1. **Functional question:** "If this feature IS present, how do you feel?"
   - I like it / I expect it / I'm neutral / I can tolerate it / I dislike it

2. **Dysfunctional question:** "If this feature is NOT present, how do you feel?"
   - I like it / I expect it / I'm neutral / I can tolerate it / I dislike it

**Kano Category Matrix:**

| Dysfunctional → | Like | Expect | Neutral | Tolerate | Dislike |
|----------------|------|--------|---------|----------|---------|
| **Functional ↓** | | | | | |
| Like | Questionable | Delight | Delight | Delight | Performance |
| Expect | Reverse | Indifferent | Indifferent | Indifferent | Basic |
| Neutral | Reverse | Indifferent | Indifferent | Indifferent | Basic |
| Tolerate | Reverse | Indifferent | Indifferent | Indifferent | Basic |
| Dislike | Reverse | Reverse | Reverse | Reverse | Questionable |

### Kano Strategy

- **Basic features:** Must have — fix them immediately, but don't differentiate on them
- **Performance features:** The more the better — invest here to beat competitors
- **Delight features:** Use sparingly — they're your differentiation, but become basic over time
- **Indifferent:** Don't build — no one cares
- **Reverse:** Dangerous — may be loved by one segment, hated by another; proceed with caution

### When to Use Kano

- You're deciding where to invest for competitive differentiation
- You need to understand which "missing" features are actually blocking adoption
- You have the ability to run a customer survey (50+ responses minimum)
- You're debating whether a feature is "nice to have" or "table stakes"

### Kano Limitations

- Requires survey infrastructure and customer access
- Categories shift over time — delight features become basic expectations
- Small sample sizes produce unreliable results
- Complex to run without a dedicated researcher

---

## Choosing the Right Framework

### Decision Guide

```
Do you have analytics data to ground estimates?
├─ YES → RICE (most rigorous, defensible)
└─ NO
    ├─ Need to rank experiments quickly? → ICE
    ├─ Need to scope a specific release? → MoSCoW
    └─ Need to understand what customers actually value? → Kano (requires survey)
```

### Combining Frameworks

The frameworks are not mutually exclusive:

1. **MoSCoW first, then RICE:** Use MoSCoW to split the backlog into Must/Should/Could, then use RICE to rank within each category.

2. **Kano to calibrate RICE Impact:** Run a Kano survey to understand which features are delight vs. basic, then use that to calibrate RICE Impact scores (delight = 2–3, basic fix = 0.5–1).

3. **ICE for triage, RICE for commitment:** Use ICE to quickly eliminate obvious low-priority items, then run full RICE on the remaining candidates before committing to the roadmap.

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
