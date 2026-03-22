# Metrics Dashboard Template

> AARRR dashboard with example metrics, thresholds, and data sources. Build this in your BI tool (Metabase, Looker Studio, Amplitude, or a spreadsheet). Review weekly.

---

## Dashboard Design Principles

1. **One primary view:** Your dashboard should load to the most important metric first. Do not bury the NSM below the fold.
2. **Traffic light coloring:** Green = at or above target; Yellow = 10–20% below target (warning); Red = > 20% below target (action required).
3. **Rate metrics, not cumulative:** Show week-over-week or month-over-month rates, not all-time totals.
4. **Date range selector:** Default to last 30 days; allow comparison to previous period.
5. **Weekly review ritual:** Every Monday, review the dashboard. If a metric is in yellow or red, the team responsible must have a hypothesis and action by Wednesday.

---

## Section 1: North Star Metric

> **Fill in your NSM definition here.**

**Your North Star Metric:** [Name and definition]
**Current value:** [Value] as of [date]
**7-day trend:** [Arrow direction and % change]
**Quarter target:** [Value]
**Progress to target:** [%]

### NSM Chart

*Chart type: Line chart, weekly data, trailing 13 weeks*

| Week | NSM Value | Week-over-Week Change |
|------|-----------|----------------------|
| [Week 1 — oldest] | [Value] | — |
| [Week 2] | [Value] | [+/- %] |
| [Week 3] | [Value] | [+/- %] |
| ... | | |
| [This week] | [Value] | [+/- %] |

**Health status:** [ ] Green (≥ target) [ ] Yellow (10–20% below) [ ] Red (> 20% below)

---

## Section 2: Acquisition Metrics

> Where are users coming from, and what does it cost?

### Metric 2.1: New Users / New Signups

**Definition:** Number of new unique users who created an account this week
**Example value:** 150/week
**Target:** [Your target]
**Chart type:** Bar chart, weekly

| Metric | Value | vs. Last Week | vs. Last Month | Target |
|--------|-------|--------------|----------------|--------|
| New signups | [#] | [+/-] [%] | [+/-] [%] | [#] |
| New signups (free) | [#] | | | |
| New signups (paid) | [#] | | | |

### Metric 2.2: Channel Breakdown

**Definition:** % of new users from each acquisition channel
**Why it matters:** Tells you which channels are growing and which are declining; prevents over-reliance on one channel

| Channel | # New Users | % of Total | Cost (if paid) | CPA |
|---------|-------------|-----------|----------------|-----|
| Organic search (SEO) | [#] | [%] | $0 | $0 |
| Direct / word of mouth | [#] | [%] | $0 | $0 |
| Paid social (LinkedIn, Meta) | [#] | [%] | $[spend] | $[CPA] |
| Paid search (Google Ads) | [#] | [%] | $[spend] | $[CPA] |
| Referral (in-product) | [#] | [%] | $0 | $0 |
| Email campaigns | [#] | [%] | [low] | [low] |
| Partnerships / integrations | [#] | [%] | [varies] | |
| Events / conferences | [#] | [%] | $[spend] | $[CPA] |

### Metric 2.3: Cost per Acquisition (CPA) by Channel

**Definition:** Total channel spend / number of new users from that channel
**Healthy ranges:** Organic: < $10–50; Paid digital: $20–200+ depending on ARPU and LTV

**CPA threshold (for your business):**
- Maximum acceptable CPA: $[___] (based on your LTV and payback target)
- CPA above threshold triggers channel review

**Benchmark:** CPA should be < LTV / 3 for the channel to be sustainable

---

## Section 3: Activation Metrics

> Are new users experiencing the core value of your product?

### Metric 3.1: Activation Rate

**Definition:** % of new users who complete the activation moment within [time window]

**Your activation moment:** [Define the specific action that indicates a user has experienced core value]
Examples:
- B2B SaaS: Created first project + invited one team member (within 3 days)
- Marketplace: Completed first transaction (within 7 days)
- Consumer app: Completed a full session achieving the core goal (within 24 hours)

**Time window for activation:** [e.g., "within first 3 days of signup"]

| Metric | Value | vs. Last Week | Target | Status |
|--------|-------|--------------|--------|--------|
| Activation rate (% new users activating) | [%] | [+/-] [%] | [%] | [G/Y/R] |
| Median time to activation | [hours/days] | [+/-] | [hours/days] | [G/Y/R] |
| % dropped at each onboarding step | | | | |

### Onboarding Funnel

*Chart type: Funnel chart showing drop-off at each onboarding step*

| Step | # of Users | % Who Reach This Step | Drop-off from Previous | Status |
|------|-----------|----------------------|------------------------|--------|
| Signup complete | [#] | 100% | — | — |
| [Onboarding step 1: e.g., "Profile created"] | [#] | [%] | [-%] | [G/Y/R] |
| [Onboarding step 2: e.g., "First item created"] | [#] | [%] | [-%] | [G/Y/R] |
| [Onboarding step 3: e.g., "Invited a teammate"] | [#] | [%] | [-%] | [G/Y/R] |
| **Activation moment reached** | [#] | **[%]** | [-%] | **[G/Y/R]** |

**Highest drop-off step:** [Step name] — [%] drop-off
**Priority action:** [What you will do to reduce drop-off at this step]

---

## Section 4: Retention Metrics

> Are users coming back? This is the most important section of the dashboard.

### Metric 4.1: Retention Rates by Period

**Definition:** % of users who were active in a given period who return to be active in the next period

**For B2B SaaS (monthly):**

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Monthly user retention rate | [%] | > 80% | [G/Y/R] |
| Monthly customer logo retention rate | [%] | > 90% | [G/Y/R] |
| Monthly net revenue retention (NRR) | [%] | > 100% | [G/Y/R] |

**For Consumer App (weekly/daily):**

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| DAU/MAU ratio | [%] | > 20% good; > 40% excellent | [G/Y/R] |
| Day 1 retention | [%] | > 40% | [G/Y/R] |
| Day 7 retention | [%] | > 20% | [G/Y/R] |
| Day 30 retention | [%] | > 10% | [G/Y/R] |

### Metric 4.2: Cohort Retention Table

*Updated monthly. Full cohort analysis in `templates/cohort-analysis.md`*

| Signup Month | Month 0 | Month 1 | Month 2 | Month 3 | Month 4 | Month 6 |
|-------------|---------|---------|---------|---------|---------|---------|
| [Month -6] | 100% | [%] | [%] | [%] | [%] | [%] |
| [Month -5] | 100% | [%] | [%] | [%] | [%] | — |
| [Month -4] | 100% | [%] | [%] | [%] | — | — |
| [Month -3] | 100% | [%] | [%] | — | — | — |
| [Month -2] | 100% | [%] | — | — | — | — |
| [Last month] | 100% | — | — | — | — | — |

**Retention curve status:** [ ] Flattening (PMF signal) [ ] Still declining [ ] Unknown (< 3 months data)

### Metric 4.3: Churn Rate

**Definition for SaaS:** Customer churn rate = Customers who churned this period / Customers at start of period

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Monthly customer churn rate | [%] | < 5% (SMB); < 2% (enterprise) | [G/Y/R] |
| Monthly revenue churn rate | [%] | < 3% | [G/Y/R] |
| Annualized churn | [%] | < 30% (SMB); < 10% (enterprise) | [G/Y/R] |

---

## Section 5: Revenue Metrics

> How efficiently are you monetizing your users?

### Metric 5.1: Revenue

| Metric | Value | vs. Last Month | Target | Status |
|--------|-------|---------------|--------|--------|
| MRR (Monthly Recurring Revenue) | $[#] | [+/-] [%] | $[#] | [G/Y/R] |
| ARR (Annualized: MRR × 12) | $[#] | | | |
| New MRR (from new customers) | $[#] | | | |
| Expansion MRR (upsells/upgrades) | $[#] | | | |
| Churned MRR (lost to churn) | -$[#] | | | |
| Net New MRR | $[#] | | | |

**MRR growth rate (M/M):** [%] Target: [%]

### Metric 5.2: Unit Economics

| Metric | Value | Healthy Benchmark | Status |
|--------|-------|------------------|--------|
| ARPU (Average Revenue Per User) | $[#] | [varies] | |
| LTV (Customer Lifetime Value) | $[#] | > 3× CAC | [G/Y/R] |
| CAC (Customer Acquisition Cost) | $[#] | < LTV / 3 | [G/Y/R] |
| LTV:CAC ratio | [x] | > 3:1 | [G/Y/R] |
| CAC payback period | [months] | < 18 months | [G/Y/R] |
| Gross margin | [%] | > 60% (SaaS) | [G/Y/R] |

**LTV calculation:**
```
LTV = ARPU / Monthly Churn Rate
Example: $100 ARPU / 5% monthly churn = $2,000 LTV
```

**CAC calculation:**
```
CAC = Total Sales & Marketing Spend in Period / New Customers Acquired in Period
Example: $50,000 spend / 100 new customers = $500 CAC
```

---

## Section 6: Referral Metrics

> Are happy users telling others?

### Metric 6.1: Net Promoter Score (NPS)

**Definition:** % Promoters (9–10) minus % Detractors (0–6), surveyed monthly or quarterly
**Survey question:** "How likely are you to recommend [product] to a friend or colleague?" (0–10 scale)

| Score Range | Benchmark |
|-------------|-----------|
| < 0 | Poor — serious product or experience issues |
| 0–20 | Needs improvement |
| 20–40 | Good |
| 40–60 | Excellent |
| > 60 | World-class (Apple, Tesla territory) |

**Your current NPS:** [Score]
**NPS trend:** [↑/↓ compared to last quarter]
**Response count:** [#] responses

### Metric 6.2: Referral Rate

**Definition:** % of new users who came from a referral (existing user invitation or referral link)

| Metric | Value | Target |
|--------|-------|--------|
| Referral rate (% of new users from referral) | [%] | > 20% |
| k-factor (viral coefficient) | [#] | > 1 = true viral growth |
| Average referrals per active user | [#] | |

**k-factor calculation:**
```
k-factor = (invitations sent per user) × (% of invites that convert)
k > 1 = viral growth (each user brings more than 1 new user)
k < 1 = growth requires external acquisition
```

---

## Section 7: Active Experiment Log

> All running A/B tests and their current status.

| Test Name | Metric | Hypothesis | Start Date | Planned End Date | Current Result | Status |
|-----------|--------|-----------|------------|-----------------|----------------|--------|
| [Test 1] | [Metric] | [Hypothesis] | [Date] | [Date] | [Current p-value or % diff] | Running |
| [Test 2] | | | | | | Running |
| [Completed Test] | | | | | [Winner: A/B / No significant difference] | Completed |

**Rule:** Never act on a test result before the Planned End Date AND minimum sample size is reached.

---

## Weekly Dashboard Review Checklist

Run this every Monday morning (15 minutes):

- [ ] Check NSM: is it trending the right direction?
- [ ] Check each AARRR metric traffic light: any Red flags?
- [ ] Review acquisition channel mix: any channel up or down significantly?
- [ ] Review activation funnel: any unusual drop-off at a specific step?
- [ ] Review weekly retention: any cohort performing unusually well or poorly?
- [ ] Check MRR movement: what drove new MRR and churned MRR this week?
- [ ] Update experiment log: any tests ready to call?
- [ ] Assign action items for any Red metrics

**If any metric is Red:** Write a 2-sentence hypothesis for why. Assign an owner to investigate and report back by Wednesday.

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.

> **Financial Disclaimer:** The financial projections, unit economics, and calculations in this document are estimates based on stated assumptions and industry benchmarks. They do not constitute financial advice. Actual results will vary based on market conditions, execution, and factors not captured in this model. Consult a qualified accountant or financial advisor before making financial decisions.
