# RICE Scoring Roadmap Template

> Use this template to score your feature backlog and produce a prioritized roadmap. RICE prevents "whoever shouts loudest wins" prioritization by grounding decisions in data.

---

## RICE Formula Reference

```
RICE Score = (Reach × Impact × Confidence) / Effort
```

Higher score = higher priority.

### Component Definitions and Scales

#### Reach — How many users will this affect per quarter?

Use ABSOLUTE numbers, not percentages. Source from analytics.

| Reach Value | Meaning | Example |
|-------------|---------|---------|
| 1000+ | Affects nearly all active users | Core navigation change |
| 500–999 | Affects majority of users | New notification type |
| 200–499 | Affects a significant segment | Power user feature |
| 50–199 | Affects a niche segment | Enterprise admin only |
| < 50 | Affects very few users | Edge case fix |

**How to estimate Reach:**
- Check analytics: unique users who touch the relevant workflow per month × 3
- Count customers who have requested this feature or reported the problem
- Estimate based on segment size × adoption rate (use lower bound)

#### Impact — How much will this move the key metric per person?

| Impact Score | Meaning |
|--------------|---------|
| 3 | Massive — changes the core value loop or removes a critical blocker |
| 2 | High — significantly improves the user experience or conversion |
| 1 | Medium — noticeable improvement, moderate effect |
| 0.5 | Low — minor improvement, incremental |
| 0.25 | Minimal — marginal improvement, mostly polish |

**Impact calibration rule:** Only one or two features per quarter should score 3 (massive). If you're rating everything 2 or 3, recalibrate.

#### Confidence — How confident are you in the Reach and Impact estimates?

| Confidence | Score | When to use |
|------------|-------|-------------|
| High | 100% | Have data (analytics + customer interviews + A/B test) |
| Medium | 80% | Have qualitative signal (interviews + tickets, no A/B) |
| Low | 50% | Inferred from proxies or analogous features |
| Very Low | 25% | Gut feel, no data |

**Confidence rule:** If Confidence is 25% (very low), do customer research before prioritizing. Don't build blind.

#### Effort — How many person-months will this take?

Include design + engineering + QA. Use minimum 0.25 (about 1 week for one person).

| Effort | Meaning |
|--------|---------|
| 0.25 | ~1 week (1 person) |
| 0.5 | ~2 weeks (1 person) or ~1 week (2 people) |
| 1.0 | ~1 month (1 person) |
| 2.0 | ~1 month (2 people) or 2 months (1 person) |
| 3.0+ | Large effort — consider decomposing |

---

## Calibration Session Guide

Run this as a 60-minute team meeting before finalizing scores. Bring product, engineering, and design leads.

### Step 1: Anchor on Reach (15 min)

Pick your largest active user cohort and your smallest. Define what each "level" of Reach means in your product's numbers. Write these down before scoring anything.

```
Our Reach calibration:
- 1000+ = [______] users
- 500–999 = [______] users
- 200–499 = [______] users
- 50–199 = [______] users
- < 50 = [______] users
```

### Step 2: Anchor on Impact (10 min)

What is our primary metric this quarter? ___________________________

What would "massive impact" on that metric look like? (Impact = 3): ___________________________

What would "minimal impact" look like? (Impact = 0.25): ___________________________

### Step 3: Align on Effort (15 min)

What is our team's velocity? [Story points or features per sprint]: ___________________________

Baseline: 1 person-month = [______] story points or [______] features

### Step 4: Score Together (20 min)

Everyone scores independently on sticky notes, then compare. For any score where individuals diverge by more than 1 level, discuss and align.

---

## RICE Scoring Spreadsheet

Fill in the table below for all candidate items. Sort by RICE Score descending when complete.

### Scoring Rubric Summary (for quick reference while filling in table)

```
Reach: Absolute users/quarter (use your calibrated anchors above)
Impact: 3=massive / 2=high / 1=medium / 0.5=low / 0.25=minimal
Confidence: 100%=data / 80%=interviews / 50%=inferred / 25%=gut
Effort: Person-months (design + eng + QA)
Score: (Reach × Impact × Confidence) / Effort
```

### Backlog Scoring Table

| # | Feature / Item | Description | Reach | Impact | Conf | Effort | RICE Score | Roadmap Bucket |
|---|----------------|-------------|-------|--------|------|--------|------------|----------------|
| 1 | [Feature name] | [1-line description] | [#] | [3/2/1/0.5/0.25] | [100/80/50/25%] | [#] | **[calculated]** | Now/Next/Later |
| 2 | [Feature name] | [1-line description] | | | | | | |
| 3 | [Feature name] | [1-line description] | | | | | | |
| 4 | [Feature name] | [1-line description] | | | | | | |
| 5 | [Feature name] | [1-line description] | | | | | | |
| 6 | [Feature name] | [1-line description] | | | | | | |
| 7 | [Feature name] | [1-line description] | | | | | | |
| 8 | [Feature name] | [1-line description] | | | | | | |
| 9 | [Feature name] | [1-line description] | | | | | | |
| 10 | [Feature name] | [1-line description] | | | | | | |

**Score calculation:**
For each row: `RICE = (Reach × Impact × (Confidence/100)) / Effort`

---

## Worked Example

| # | Feature | Description | Reach | Impact | Conf | Effort | RICE Score | Bucket |
|---|---------|-------------|-------|--------|------|--------|------------|--------|
| 1 | Scheduled CSV exports | Automate weekly reports for power users | 200 | 1 | 80% | 0.5 | **320** | Now |
| 2 | SSO (SAML) login | Enterprise authentication requirement | 80 | 2 | 100% | 2.0 | **80** | Next |
| 3 | Mobile app push notifications | Re-engage inactive mobile users | 1200 | 0.5 | 50% | 1.5 | **200** | Now |
| 4 | AI-generated summaries | Experimental AI feature | 150 | 3 | 25% | 3.0 | **37.5** | Later |
| 5 | Dark mode | UI parity with competitor | 800 | 0.25 | 100% | 1.0 | **200** | Next |
| 6 | Bulk user import | Remove onboarding blocker for enterprise | 60 | 2 | 80% | 0.75 | **128** | Next |

**Interpretation:**
- Scheduled exports (RICE 320) is highest priority — moves quickly, high confidence
- Mobile push notifications (RICE 200) and dark mode (RICE 200) are tied — tiebreaker: strategic fit
- SSO (RICE 80) scores lower despite importance because it's high effort — schedule when enterprise pipeline justifies it
- AI summaries (RICE 37.5) — park in Later until confidence improves through research

---

## Roadmap Output

### Now (This Quarter)

Items with RICE > [your threshold — typically 200+] that are dependency-free:

| Rank | Feature | RICE Score | Effort | Owner | Target Sprint |
|------|---------|------------|--------|-------|--------------|
| 1 | [Feature] | [Score] | [months] | [Name] | Sprint [#] |
| 2 | [Feature] | [Score] | [months] | [Name] | Sprint [#] |
| 3 | [Feature] | [Score] | [months] | [Name] | Sprint [#] |

**Capacity check:** Total effort = [sum] person-months. Team capacity this quarter = [available] person-months. [Buffer: leave 20–30% unallocated for bugs and unplanned work]

### Next (Following Quarter)

| Rank | Feature | RICE Score | Why Deferred |
|------|---------|------------|-------------|
| 1 | [Feature] | [Score] | [Dependency on Now items / Lower priority / Needs more research] |
| 2 | [Feature] | [Score] | |

### Later (Backlog)

| Feature | RICE Score | Why Parked | Revisit When |
|---------|------------|-----------|-------------|
| [Feature] | [Score] | [Low confidence / Low priority / Future strategy] | [Trigger or date] |

---

## Score Threshold Guide

| RICE Score | Action |
|-----------|--------|
| > 500 | Prioritize immediately — move to PRD phase |
| 200–500 | High priority — include in current or next quarter |
| 50–200 | Medium — schedule based on capacity and strategy |
| < 50 | Low — park in Later; reassess in 6 months |

**Override rules** (document when you deviate from RICE ranking):
1. **Strategic mandate:** Explicitly required by company strategy or investor commitment — document the commitment
2. **Dependency unlock:** Low-RICE item unlocks multiple high-RICE items — score the unlocked items' potential
3. **Competitive threat:** Competitor launched something that creates immediate churn risk — treat as emergency, track separately

---

## Monthly RICE Review Checklist

- [ ] Have any Reach estimates changed based on new analytics data?
- [ ] Have any features shipped whose Reach estimate proved wrong? Recalibrate.
- [ ] Are any features still at 25% Confidence? Have you done the research to increase it?
- [ ] Have new feature requests appeared that should enter the backlog?
- [ ] Are any "Now" items blocked? Should they be deferred to "Next"?
- [ ] Does the roadmap still reflect company priorities, or has strategy shifted?

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
