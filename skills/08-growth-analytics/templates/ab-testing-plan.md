# A/B Testing Plan Template

> A/B test design with power analysis and sample size calculation. Complete this BEFORE running any test. Tests without pre-planned sample sizes produce unreliable results.

---

## Why Pre-Planning Matters

**The peeking problem:** Looking at test results before reaching the planned sample size inflates your false positive rate. A test "stopped early" because it "looks significant" has an actual false positive rate of 15–30%, not the intended 5%. Pre-plan. Stick to the plan.

**The sample size problem:** Without pre-calculating the sample size, you don't know when to call the test. You'll either call it too early (noise as signal) or too late (wasted time).

**The rule:** No A/B test without a pre-written plan including hypothesis, metric, sample size, and end date.

---

## Experiment Log Index

Track all experiments in a central log:

| Test ID | Feature / Page | Hypothesis | Start Date | End Date | Sample Size | Result | Status |
|---------|---------------|-----------|------------|----------|-------------|--------|--------|
| T-001 | [Feature] | [Brief hypothesis] | [Date] | [Date] | [n per variant] | [+X% / NS] | [Running / Complete] |
| T-002 | | | | | | | |

---

## A/B Test Plan — Single Experiment

### Experiment ID: T-[###]

**Date written:** [YYYY-MM-DD]
**Written by:** [Name]
**Engineer implementing:** [Name]

---

## Section 1: Hypothesis

**The change we're making:**
> [Describe the specific change in one sentence. Be precise — "make the button larger" not "improve the CTA."]

**Hypothesis statement:**
> "We believe that [specific change] will [increase/decrease] [specific metric] because [specific evidence-based reasoning]. We expect to see a [X%] improvement."

**Evidence for the hypothesis:**
- [Source 1: e.g., "Heatmap shows 40% of users click below the fold where the CTA is not visible"]
- [Source 2: e.g., "Session recordings show users hovering on CTA without clicking — possible low contrast or unclear copy"]
- [Source 3: e.g., "UserTesting feedback: 3/5 users said they weren't sure what to do on the page"]

**What we are NOT testing:**
> [List any changes that are explicitly excluded from this test. No hidden changes allowed — they invalidate the test.]

---

## Section 2: Test Design

### Variants

**Control (A):** [Current state — describe exactly]
**Treatment (B):** [New version — describe exactly]
**Treatment (C) [optional]:** [Second new version — only if necessary]

*Note: Do not test more than 2 variants unless you have very high traffic. Multi-variant tests require proportionally larger sample sizes.*

### Primary Metric

> The ONE metric this test is designed to move. There can be only one primary metric — if you have multiple, you'll need to apply a multiple comparisons correction.

**Primary metric:** [Metric name]
**Definition:** [Exactly how it is calculated]
**Current baseline value:** [%] or [rate] (from last 30 days — use actual data, not estimates)

### Secondary Metrics (guardrail metrics)

> Metrics you'll monitor for negative side effects. A test that improves the primary metric but hurts a guardrail metric may need to be reconsidered.

| Metric | Current baseline | Acceptable threshold | Why it matters |
|--------|-----------------|---------------------|---------------|
| [e.g., Bounce rate] | [%] | Must not increase by more than 5% | [Increase would suggest we confused users] |
| [e.g., Time on page] | [seconds] | Must not decrease | [Decrease suggests low engagement] |
| [Metric 3] | | | |

---

## Section 3: Statistical Parameters

### Sample Size Calculation

**Required inputs:**

| Parameter | Value | Notes |
|-----------|-------|-------|
| Baseline conversion rate | [%] | Current value of your primary metric |
| Minimum detectable effect (MDE) | [%] | The smallest improvement you care about |
| Statistical significance level | 95% (α = 0.05) | Standard; use 90% only for very fast, low-stakes tests |
| Statistical power | 80% (β = 0.20) | Standard; means 20% chance of missing a real effect |
| Number of variants | 2 | Control + 1 Treatment; if 3 variants, multiply result by 1.5× |

**Minimum Detectable Effect guidance:**

| Situation | Recommended MDE |
|-----------|----------------|
| Testing a major redesign with high confidence it works | 10–15% relative improvement |
| Testing a copy change or color change | 5–10% relative improvement |
| Testing a feature with mixed evidence | 20%+ relative improvement (need large effect to justify the change) |

### Sample Size Lookup Table

*Pre-calculated sample sizes per variant for a two-proportion test at 95% significance, 80% power*

**For baseline conversion rate = 5%:**

| MDE (relative) | MDE (absolute) | Sample size per variant |
|----------------|----------------|------------------------|
| 50% | 2.5% → 7.5% | 850 |
| 30% | 5% → 6.5% | 2,300 |
| 20% | 5% → 6% | 5,200 |
| 10% | 5% → 5.5% | 20,800 |

**For baseline conversion rate = 10%:**

| MDE (relative) | MDE (absolute) | Sample size per variant |
|----------------|----------------|------------------------|
| 50% | 10% → 15% | 350 |
| 30% | 10% → 13% | 950 |
| 20% | 10% → 12% | 2,100 |
| 10% | 10% → 11% | 8,600 |

**For baseline conversion rate = 20%:**

| MDE (relative) | MDE (absolute) | Sample size per variant |
|----------------|----------------|------------------------|
| 50% | 20% → 30% | 150 |
| 30% | 20% → 26% | 450 |
| 20% | 20% → 24% | 1,000 |
| 10% | 20% → 22% | 4,000 |

**For other baselines:** Use an online calculator such as:
- https://www.evanmiller.org/ab-testing/sample-size.html
- https://statsig.com/calculator
- https://neilpatel.com/ab-testing-calculator/

**Your calculation:**

| Parameter | Value |
|-----------|-------|
| Baseline conversion rate | [%] |
| Desired MDE | [%] |
| Sample size per variant | **[n]** |
| Total sample size (all variants) | **[n × number of variants]** |

### Runtime Estimation

**Daily eligible visitors to this page/feature:** [#/day]
**Traffic allocation to test:** [%] of eligible visitors (usually 100% unless test is risky)
**Traffic per variant per day:** [daily visitors × allocation / number of variants]

**Estimated runtime:**
```
Runtime (days) = Total sample size / (Daily eligible visitors × Allocation %)
Example: 4,000 / (500 × 100%) = 8 days
```

**Your estimated runtime:** [Days]

**Rule:** If runtime > 12 weeks, do NOT run this test. Either:
- Increase MDE (reduce sensitivity)
- Use a more sensitive metric (closer to the action being tested)
- Run qualitative research instead

---

## Section 4: Implementation Checklist

**Before launching:**

- [ ] Feature flag or test framework set up in production
- [ ] Variant descriptions documented and reviewed by designer + PM
- [ ] Analytics events tracking the primary metric are verified working (test in staging)
- [ ] Secondary (guardrail) metrics are also tracked
- [ ] Sample size and end date locked in this document
- [ ] QA: verified control looks correct on desktop, mobile, and all supported browsers
- [ ] QA: verified treatment looks correct on desktop, mobile, and all supported browsers
- [ ] Stakeholders aware that test is running and no other changes will be made to this area during the test

**Traffic allocation:**

| Variant | % of traffic | # users/day expected |
|---------|-------------|---------------------|
| Control (A) | [%] | [#] |
| Treatment (B) | [%] | [#] |

**Start date:** [YYYY-MM-DD]
**Planned end date:** [YYYY-MM-DD] (must not be changed after launch — note exceptions at bottom)

---

## Section 5: Monitoring During Test

**What to check while test is running:**

- [ ] **Day 1:** Verify both variants are receiving traffic as expected
- [ ] **Day 1:** Verify primary and secondary metrics are being tracked (not zero)
- [ ] **Day 3:** Check for Sample Ratio Mismatch (SRM) — are variants receiving approximately equal traffic within 5%? SRM = instrumentation bug.
- [ ] **Ongoing:** DO NOT look at test results. Do not analyze the data until planned end date.

**Exceptions that require stopping a test early:**
- SRM detected (variants are receiving very unequal traffic)
- Guardrail metric has moved significantly in the wrong direction (> 20% decline in a key health metric)
- Critical bug discovered in either variant

**Non-exceptions (do NOT stop for these):**
- "It's looking like B is winning" — this is peeking; continue
- Stakeholder pressure to ship faster — hold the plan
- "We need the traffic for another test" — plan tests in advance to avoid conflicts

---

## Section 6: Analysis and Results

Fill out after the planned end date is reached.

### Data Collection

**Actual end date:** [YYYY-MM-DD]
**Actual sample size:** Control: [n], Treatment: [n]
**Sample Ratio Mismatch check:** Expected ratio [50/50]; Actual ratio [%]/[%] — [ ] PASS (within 5%) / [ ] FAIL (investigate)

### Results Table

| Variant | Sample (n) | Conversions | Conversion Rate | Relative Difference |
|---------|-----------|-------------|-----------------|---------------------|
| Control (A) | [n] | [#] | [%] | — |
| Treatment (B) | [n] | [#] | [%] | [+/- %] |

### Statistical Analysis

**p-value:** [value] (using two-proportion z-test or chi-square)

**Interpretation:**
- p < 0.05: Statistically significant — the difference is unlikely due to chance
- p ≥ 0.05: Not statistically significant — do not claim a winner

**Statistical significance achieved:** [ ] YES (p < 0.05) [ ] NO (p ≥ 0.05)
**Practical significance:** Is the effect size large enough to be worth implementing? [ ] YES [ ] NO

**95% Confidence Interval for treatment effect:** [Lower bound] to [Upper bound]

**Guardrail metrics check:**

| Guardrail metric | Control | Treatment | Change | Within threshold? |
|-----------------|---------|-----------|--------|------------------|
| [Metric 1] | [value] | [value] | [+/- %] | [ ] YES [ ] NO |
| [Metric 2] | [value] | [value] | [+/- %] | [ ] YES [ ] NO |

### Decision

**Result verdict:**
- [ ] **Ship Treatment (B):** Significant improvement AND guardrail metrics are acceptable
- [ ] **Ship Control (A):** Treatment is not better (or worse) — keep current version
- [ ] **Inconclusive:** Not significant; not enough power to detect a difference
- [ ] **Investigate:** Unexpected results or SRM; need further investigation before deciding

**Rationale:**
> [2–4 sentences explaining the decision and any caveats]

**Action:**
> [What will be done as a result: ship, iterate, abandon, further research]

### Learnings

**What we learned (regardless of outcome):**
> [What does this result tell us about user behavior, our product, or our assumptions?]

**What we would do differently:**
> [If we ran this test again, what would we change about the design or implementation?]

**Follow-up hypotheses generated:**
- [Hypothesis 1 based on learnings]
- [Hypothesis 2 based on learnings]

---

## Section 7: Post-Ship Validation (30 Days After Shipping Winner)

Fill out 30 days after the winning variant is shipped to 100% of users.

**30-day check date:** [YYYY-MM-DD]
**Primary metric — post-ship value:** [%]
**vs. pre-test baseline:** [+/- %]

**Did the improvement hold?**
- [ ] YES — improvement persisted
- [ ] PARTIALLY — improvement smaller than expected
- [ ] NO — metric returned to baseline (novelty effect; consider reverting)

**Notes:**
> [Any context that explains post-ship behavior]

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
