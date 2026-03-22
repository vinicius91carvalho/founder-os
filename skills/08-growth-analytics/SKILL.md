# Skill 08: Growth & Analytics

> Define the metric that matters, instrument your product to measure it, and build a system that improves it. The key insight: a healthy retention curve flattens — users who stay long enough eventually stop churning.

---

## Diagnostic

Before giving advice, assess the founder's current analytics maturity. Ask these questions to route to the right workflow:

### State Assessment

| State | Description | Route To |
|-------|-------------|----------|
| **Defining Metrics** | No agreed-upon success metric; team debates what to measure; everyone has a different "most important number" | Workflow A |
| **Instrumenting** | Metrics defined but product isn't tracking them; data lives in disconnected spreadsheets | Workflow B |
| **Analyzing** | Basic instrumentation in place; need to interpret data, find retention levers, and understand cohort behavior | Workflow C |
| **Optimizing** | Analytics working; running A/B tests; need to systematize experimentation and connect metrics to growth model | Workflow D |

### Diagnostic Questions

1. What is your single most important metric right now — the one number that, if it moves positively, would make everything else look better?
2. If I asked your engineering lead, your marketer, and your head of sales the same question, would they give the same answer?
3. Do you have a retention curve? If so, does it flatten or continue declining to zero?
4. Have you ever run an A/B test with a pre-calculated sample size? Or do you call tests when they "look significant"?

### Routing Logic

```
IF no agreed-upon primary metric → Route to Workflow A (Defining Metrics)
ELIF metrics defined but not instrumented → Route to Workflow B (Instrumenting)
ELIF instrumented but no retention analysis → Route to Workflow C (Analyzing)
ELSE (running experiments and optimizing) → Route to Workflow D (Optimizing)
```

---

## Workflows

### Workflow A: Defining Metrics — What to Measure

**Objective:** Establish one North Star Metric (NSM) that the entire company aligns around, plus the supporting AARRR metrics that feed it.

**Steps:**

1. **Choose your North Star Metric**
   - Action: Select the metric that best represents the value your product delivers to customers at scale. Use the NSM selector in the Frameworks section. Write it as: "[Metric name]: [definition]. We measure it [frequency] because [why it predicts long-term success]."
   - Output: North Star Metric definition
   - Decision point: If you can't agree on one NSM in a 60-minute team meeting, the disagreement reveals a strategic misalignment that needs to be resolved first

2. **Map AARRR to your NSM**
   - Action: For each AARRR stage (Acquisition, Activation, Retention, Revenue, Referral), identify the specific metric that most directly leads to your NSM. Use `frameworks/aarrr-pirate-metrics.md`.
   - Output: AARRR metric map (6 metrics: 1 per stage + NSM)
   - Checkpoint: Every metric on the map should have a clear causal relationship with the NSM

3. **Set baselines and targets**
   - Action: For each metric, establish the current baseline (even if it's a rough estimate) and a 90-day target. Without a baseline, you cannot know if you're improving.
   - Output: Metrics scorecard with baselines and targets
   - Next: Feed into Workflow B (Instrumenting) to ensure every metric can be tracked

4. **Distinguish KPIs from OKRs**
   - Action: KPIs are health monitors (warn when they fall below threshold). OKRs are aspirational growth targets (aim for 70–80% achievement). Assign each metric to one category. Do not try to OKR your health KPIs — it creates perverse incentives.
   - Output: Metrics categorized as KPI or OKR with thresholds/targets
   - Next: Share with Skill 09 (Operations) for OKR setting

### Workflow B: Instrumenting — Making Data Visible

**Objective:** Get every key metric tracked in a real-time, trustworthy system before trying to analyze or optimize.

**Steps:**

1. **Choose your analytics stack**
   - Action: Select based on stage and budget. Early stage: Mixpanel or Amplitude (event analytics) + Stripe (revenue) + Google Analytics (acquisition). Growth stage: Add a data warehouse (BigQuery or Snowflake) + dbt + a BI tool (Metabase, Looker Studio).
   - Output: Analytics stack decision with rationale
   - Decision point: Do not build a data warehouse before you have 3+ months of consistent data to analyze. Overengineering the analytics stack is a common early startup mistake.

2. **Define the event taxonomy**
   - Action: Write down every user action that matters and name the event that captures it. Naming convention: `noun_verb` (e.g., `user_signed_up`, `report_exported`, `subscription_upgraded`). Never use spaces or special characters.
   - Output: Event taxonomy document
   - Checkpoint: Engineering can implement every event from the taxonomy without asking clarifying questions

3. **Instrument the critical path first**
   - Action: Identify the 5–8 events that form the critical user path from first visit to core value delivery. Instrument these first before adding "nice to have" events.
   - Output: Critical path events implemented and verified
   - Checkpoint: Send a test event for each critical path event. Verify it appears in the analytics dashboard within 60 seconds.

4. **Set up the metrics dashboard**
   - Action: Use `templates/metrics-dashboard.md` to build your primary dashboard. Every metric on the AARRR scorecard should have a corresponding chart.
   - Output: Live metrics dashboard
   - Next: Review dashboard weekly; verify data integrity monthly (bad data is worse than no data)

### Workflow C: Analyzing — Finding the Levers

**Objective:** Move from "we have data" to "we know why retention is what it is and which lever to pull first."

**Steps:**

1. **Run cohort retention analysis**
   - Action: Use `templates/cohort-analysis.md` to build a weekly or monthly cohort retention table. The key question: does your retention curve flatten, or does it continue declining to zero?
   - Output: Cohort retention table for the last 6 months
   - Decision point: **Flattening is the signal.** If your Week 8 retention is still declining at the same rate as Week 2, you don't have product-market fit in retention. If Week 8 retention stabilizes (the curve flattens), a subset of users has found long-term value.

2. **Segment retention by cohort characteristics**
   - Action: Split your cohort retention table by acquisition channel, signup source, company size (for B2B), or use case. Identify which segment has the highest Week 4 / Week 8 retention. This is your focus ICP.
   - Output: Segmented retention table with best/worst segments identified
   - Checkpoint: If your best segment retains 2× better than the worst, your marketing and sales should be targeting the best segment exclusively

3. **Find the activation moment (aha moment)**
   - Action: Compare users who retained to Day 30 vs. those who churned by Day 7. What did the retained users do in their first session that churners didn't? This is the activation moment — the specific action that correlates with long-term retention.
   - Output: Activation moment hypothesis (one specific action in the first session)
   - Next: Test by building a flow that gets every new user to this action within their first session

4. **Identify the churn reason**
   - Action: Segment churn by timing: Day 1 churn (didn't activate), Day 7–30 churn (didn't find ongoing value), Day 30+ churn (context change or product gap). Each requires a different fix. Run a 5-question exit survey for all churned users.
   - Output: Churn segmented by timing with primary reason per segment
   - Next: Each churn segment becomes a feature priority in Skill 05 (Product)

### Workflow D: Optimizing — Systematic Experimentation

**Objective:** Build a repeatable experimentation system that improves metrics faster than intuition-based changes.

**Steps:**

1. **Define the experiment backlog**
   - Action: For each metric you want to improve, list 3–5 specific hypothesis-driven changes you could test. Format: "We believe [specific change] will [improve metric] because [specific evidence or reasoning]. We will test this by [specific experiment]."
   - Output: Experiment backlog (5–10 hypotheses)
   - Decision point: Only run experiments where you can reach statistical significance within 4 weeks. If your traffic is too low, focus on qualitative research instead.

2. **Pre-calculate sample sizes**
   - Action: For every A/B test, calculate the required sample size BEFORE starting. Use the calculator in `templates/ab-testing-plan.md`. A test that can't reach significance is not a test — it's noise.
   - Output: Sample size and estimated runtime for each test
   - Checkpoint: If reaching significance requires > 12 weeks, either combine variants, use a more sensitive metric, or don't run the test

3. **Run, analyze, and document**
   - Action: Complete `templates/ab-testing-plan.md` for every test. Run the test for the planned duration — do not stop early because it "looks significant." Log results in the experiment log regardless of outcome.
   - Output: Completed A/B test documentation
   - Next: Ship winning variants. Archive learning from losing variants. Both are valuable.

4. **Close the metric loop**
   - Action: For every experiment that ships, check the metric 30 days later. Did the improvement hold, regress, or improve further? This feedback loop calibrates your hypotheses over time.
   - Output: 30-day post-ship metric review per experiment
   - Next: Feed winning patterns into Skill 05 (Product) as product improvements; feed into Skill 03 (Fundraising) as traction metrics

---

## Frameworks

### AARRR Pirate Metrics

**Source:** Dave McClure, 500 Startups (2007)
**When to use:** Diagnosing where your funnel is breaking and prioritizing where to focus growth effort

**The five stages and their metrics:**

| Stage | Definition | Key metric | Typical benchmarks | Primary lever |
|-------|-----------|------------|-------------------|--------------|
| **Acquisition** | How do users find you? | Cost per acquisition (CPA), channel conversion rate | CPA varies by channel; organic: < $10–50; paid: $20–200+ | Marketing channels, SEO, paid media |
| **Activation** | Do users have a good first experience? | % new users who reach "aha moment" in first session | 20–40% for consumer apps; 30–60% for B2B SaaS | Onboarding, time-to-value, UX |
| **Retention** | Do users come back? | Week 1, Week 4, Week 8, Day 30 retention rates | Consumer: Day 30 > 20–30% is strong; B2B SaaS: Monthly Active User rate > 40% | Product value, habit loops, notifications |
| **Revenue** | How do you make money? | MRR, ARPU, LTV, payback period | LTV:CAC > 3:1 is healthy; payback < 18 months | Pricing, expansion, upsell |
| **Referral** | Do users tell others? | NPS (Net Promoter Score), k-factor, referral rate | NPS > 40 is good; k-factor > 1 = viral growth | In-product referral loops, delight moments |

**Benchmarks by business type:**

Consumer SaaS:
- Day 1 retention: > 40%
- Day 7 retention: > 20%
- Day 30 retention: > 10%
- D30+ retention curve should flatten above 8–12%

B2B SaaS:
- Week 1 active: > 60%
- Month 1 active: > 40%
- Month 3 active: > 30%
- Annual churn: < 15% (logo churn); < 0% (net revenue churn with expansion)

Mobile apps:
- Day 1 retention: > 40%
- Day 7 retention: > 20%
- Day 28 retention: > 10%

Marketplace (both sides):
- Repeat transaction rate: > 40% in first 30 days
- GMV per cohort: increasing trend over first 3 months

**The most important AARRR insight:** Fix Retention before Acquisition. Pouring users into a leaky bucket is waste. Every dollar spent on acquisition with poor retention is multiplied waste.

### North Star Metric Selection

**Source:** Synthesized from Amplitude, Reforge, Sean Ellis
**When to use:** Choosing your company's single most important metric

**Selection criteria:**
A good NSM:
1. Measures value delivered to customers (not just revenue or engagement)
2. Predicts long-term revenue (not vanity)
3. Is specific and unambiguous (one calculation, one number)
4. Can be influenced by the product team (not entirely external)
5. Is comprehensible to the whole team

**NSM Examples by business type:**

| Business type | Example company | North Star Metric | Why this metric |
|--------------|-----------------|------------------|----------------|
| B2B SaaS (collaboration) | Slack | Daily Active Users sending messages | Messages sent = value exchanged; drives expansion |
| B2B SaaS (analytics) | Amplitude | Weekly querying users | Users querying = deriving insights = value realized |
| B2B SaaS (payments) | Stripe | GPV (Gross Payment Volume) | Volume = customer business growing = Stripe growing |
| Consumer marketplace | Airbnb | Nights booked | Each booking = value for host and guest |
| Consumer social | Facebook | DAU / MAU ratio | Percentage of monthly users who are daily = engagement depth |
| E-commerce | Amazon | Items purchased | Each purchase = value delivered = revenue |
| SaaS productivity | Notion | # of blocks created per user | Blocks = content created = product embedded in workflow |
| Developer tools | GitHub | # of repositories created | Repos = projects = developers invested in the platform |

**NSM anti-examples (what NOT to use):**
- Revenue — too downstream; hard to influence directly; doesn't capture customer value
- Number of signups — top of funnel; doesn't measure whether value was delivered
- App downloads / Page views — vanity; anyone can inflate these
- "Engagement" (undefined) — too vague to optimize toward

**NSM selection process:**
1. List 5–10 candidate metrics
2. For each, ask: "Does this measure value delivered to users, not just to us?"
3. For survivors, ask: "If this metric increases 10%, does revenue almost certainly also increase?"
4. For survivors, ask: "Can we influence this directly through product decisions?"
5. The survivor of all three questions is your NSM

### KPI vs. OKR

**Source:** Synthesized from John Doerr, Andy Grove, Google's OKR system
**When to use:** Structuring your metrics system so health metrics don't crowd out growth targets

**KPIs (Key Performance Indicators) — Health Monitors:**
- Define what "healthy" looks like; alert when a metric drops below threshold
- Examples: "Uptime > 99.9%", "Churn < 5% monthly", "Response time < 200ms"
- You do NOT try to OKR your KPIs — the goal is to stay above threshold
- Review: Weekly in a metrics dashboard

**OKRs (Objectives and Key Results) — Growth Targets:**
- Aspirational targets set quarterly; 70% achievement is the goal (100% = too easy)
- Format: "Objective: [qualitative aspiration]. Key Result: [specific, measurable, time-bound]"
- Examples: "KR: Increase Week 4 retention from 22% to 35% by end of Q2"
- Review: Weekly check-in on progress; monthly deep-dive; quarterly retrospective

**How to use both together:**
- Start every weekly metrics review by checking KPIs: anything below threshold gets immediate attention
- Review OKRs second: are we on track for the quarter?
- KPIs define the floor; OKRs define the ceiling you're reaching for

---

## Templates

| Template | File | Purpose |
|----------|------|---------|
| AARRR Dashboard | `templates/metrics-dashboard.md` | Full metrics dashboard with example metrics and thresholds |
| A/B Testing Plan | `templates/ab-testing-plan.md` | A/B test design with power analysis and sample size calculator |
| Cohort Analysis | `templates/cohort-analysis.md` | Cohort retention analysis with SQL examples |
| AARRR Pirate Metrics | `frameworks/aarrr-pirate-metrics.md` | Framework with stage benchmarks and leak diagnosis |

---

## Decision Trees

### Decision 1: What Should I Measure First?

```
START: Do you have a defined North Star Metric?
│
├─ NO → Define NSM first (Workflow A)
│       Do not skip to AARRR without this foundation
│
└─ YES →
    └─ Which AARRR stage is most broken?
        ├─ Low acquisition → Fix marketing / channels first
        │   └─ But check retention BEFORE investing in acquisition
        ├─ Low activation → Fix onboarding and time-to-value
        ├─ Low retention → Fix product value; this is the most important fix
        │   └─ Healthy retention curve: flattens above 10% (consumer) or 30% (B2B)
        ├─ Low revenue → Fix pricing or expansion model (see Skill 02)
        └─ Low referral → Fix NPS; identify promoters and activate them
```

### Decision 2: Is My Retention Healthy?

```
START: Plot your retention curve (% users active by week since signup)
│
├─ Curve flattens (stops declining around Week 8–12) →
│   └─ What does it flatten at?
│       ├─ > 20% (consumer) or > 35% (B2B) → Strong retention; invest in acquisition
│       ├─ 10–20% (consumer) or 20–35% (B2B) → Adequate; optimize activation and habit formation
│       └─ < 10% (consumer) or < 20% (B2B) → Weak; do not invest in paid acquisition yet
│
└─ Curve continues declining (no flattening) →
    └─ You do not have product-market fit in retention
        └─ Investigate: Are ANY cohorts or segments retaining better?
            ├─ YES → Segment by [channel, use case, company size, feature usage]
            │        Find the retaining segment and build for them
            └─ NO → Return to Skill 01 (Idea Validation) and Skill 05 (Product)
```

### Decision 3: Should I Run an A/B Test?

```
START: Do you have a specific hypothesis for this change?
│
├─ NO → Do qualitative research first (user interviews, session recordings)
│
└─ YES →
    └─ What is your current weekly traffic to this page/feature?
        ├─ < 1,000/week → A/B testing is not reliable at this volume
        │   └─ Run qualitative research; ship the better version based on evidence
        ├─ 1,000–10,000/week → Can run A/B tests on high-impact changes
        │   └─ Pre-calculate sample size; expect 3–6 week runtimes
        └─ > 10,000/week → A/B testing is reliable
            └─ Pre-calculate sample size; can run tests in 1–2 weeks
                └─ Never stop a test early — wait for planned runtime to complete
```

### Decision 4: Is My North Star Metric the Right One?

```
START: Has your NSM increased in the last quarter?
│
├─ YES →
│   └─ Has revenue also increased proportionally?
│       ├─ YES → Your NSM is a good proxy for business value. Keep it.
│       └─ NO → NSM is disconnected from revenue; reconsider it
│
└─ NO (NSM declining or flat) →
    └─ Is the business still healthy (revenue growing, churn stable)?
        ├─ YES → NSM may be the wrong metric; re-evaluate
        └─ NO → NSM is correctly capturing the problem; work on the underlying issue
```

---

## Anti-Patterns

### 1. Optimizing Acquisition Before Fixing Retention

- **What it looks like:** Spending $20K/month on paid acquisition, growing to 1,000 sign-ups/month, but Monthly Active Users are flat at 200. The retention curve never flattens.
- **Why founders do it:** Acquisition is visible and fast — you can see the number go up. Retention is slow and humbling.
- **Why it's harmful:** You're paying to acquire users who will churn. CAC goes up; LTV stays the same. You will run out of money before you fix the product.
- **What to do instead:** Do not invest in paid acquisition until your retention curve has flattened. An unflatted retention curve means you don't have a distribution problem — you have a product problem.

### 2. Calling A/B Tests Early

- **What it looks like:** You run an A/B test for 3 days. Variant B is "winning" at 67% confidence. You call the test and ship variant B. Six weeks later, the metric is back to baseline.
- **Why founders do it:** Impatience; early results look compelling; there's pressure to ship.
- **Why it's harmful:** Statistical noise looks like signal at early stages of a test. Tests called before reaching the planned duration have a false positive rate far higher than 5%. You ship bad decisions confidently.
- **What to do instead:** Pre-calculate the sample size and runtime. Do not look at test results until they reach planned runtime AND sample size. Automate the alert for "test complete" to remove the temptation to peek.

### 3. Metric Proliferation

- **What it looks like:** Dashboard with 47 metrics. Every meeting, someone asks about a different metric. No one knows what to prioritize. Everything is "important."
- **Why founders do it:** Data is available; tracking more feels safer; nobody wants to cut "their" metric.
- **Why it's harmful:** When everything matters, nothing matters. Decisions slow down because there's always another metric to check.
- **What to do instead:** Every metric on your dashboard must answer: "Who acts on this, and what do they do when it changes?" If no one has a clear answer, remove it. Dashboard limit: 1 NSM + 5–7 AARRR metrics. Everything else is a diagnostic tool accessed on demand.

### 4. Vanity Metric Reporting

- **What it looks like:** Monthly company update reports total signups (cumulative, always going up), page views, and social followers. No retention, no revenue cohorts, no Week 4 active users.
- **Why founders do it:** Cumulative metrics always look good. Investors sometimes ask for them. The team feels good about progress.
- **Why it's harmful:** Vanity metrics hide decay. Cumulative signups growing while weekly new actives are flat means your acquisition is failing. Teams optimize what they report.
- **What to do instead:** Report rate metrics (growth rates, retention rates), not cumulative metrics. Report week-over-week or month-over-month new cohort behavior, not all-time totals.

### 5. Confusing Correlation with Causation in Experiments

- **What it looks like:** "Users who use Feature X have 40% higher retention. Let's push all users to use Feature X." You add friction to force Feature X usage. Retention stays the same.
- **Why founders do it:** Correlation is easier to find than causation; the insight feels actionable.
- **Why it's harmful:** Users who use Feature X may retain better because they're inherently more engaged — not because of the feature. Forcing Feature X on disengaged users doesn't replicate the effect.
- **What to do instead:** Correlation analysis points to hypotheses, not conclusions. Run an A/B test: randomly expose a subset of users to Feature X with a nudge. Measure if the exposed group retains better than the control. This is the only way to establish causation.

### 6. The "More Data" Delay

- **What it looks like:** "We need to wait for more data before making this decision." Six months of waiting, still no decision.
- **Why founders do it:** Analysis paralysis; fear of being wrong; desire for certainty that data cannot provide.
- **Why it's harmful:** Markets move. Competitors ship. Waiting for more data is often waiting for certainty that will never arrive.
- **What to do instead:** Establish a minimum data threshold for each decision type before you start waiting. "We need 4 weeks and 500 users in each variant." When you hit the threshold, decide. Bayesian decision making: act when the expected value of acting exceeds the expected value of waiting.

### 7. Ignoring the Denominator

- **What it looks like:** "Our revenue grew 30% this quarter!" Also: "We had 4× the marketing spend this quarter." Without knowing the denominator, the numerator is meaningless.
- **Why founders do it:** Numerator growth is emotionally satisfying; denominators are uncomfortable.
- **Why it's harmful:** Unit economics collapse without denominator thinking. CAC payback, LTV:CAC ratio, revenue per employee — all are ratios that require both numerator and denominator.
- **What to do instead:** For every metric, ask "per what?" Revenue per customer, activation rate per acquisition channel, retention rate per cohort, support tickets per active user. Denominators reveal efficiency.

---

## Interconnections

### Inputs (what this skill receives from other skills)

| From Skill | Data Received | How It's Used |
|------------|---------------|---------------|
| Skill 05 (Product) | Success metrics per feature, instrumentation plan from PRDs | Event taxonomy is built from feature PRDs; post-launch metric review closes the product feedback loop |
| Skill 06 (Sales) | Conversion funnel metrics — MQL to SQL, SQL to close | Sales funnel metrics feed AARRR Revenue and Acquisition stages; combined view of full customer journey |
| Skill 11 (Customer Success) | Retention metrics, churn analysis, NPS/CSAT | Customer health data feeds Retention and Referral stages of AARRR; churn segmentation |

### Outputs (what this skill produces for other skills)

| To Skill | Data Produced | Format |
|----------|---------------|--------|
| Skill 03 (Fundraising) | Traction metrics for fundraising deck and investor updates | Week-over-week growth rate, cohort retention curves, NSM trend, ARR milestones |
| Skill 09 (Operations) | OKR targets derived from metrics analysis | AARRR metrics as Key Results in company OKRs; retention targets per team |

### Context Passing

When this skill completes, pass the following to the orchestrator:
- North Star Metric (definition, current value, 90-day target)
- AARRR dashboard link with current metric values
- Retention curve status: flattenened at [X%] / still declining / unknown
- Activation moment (if identified)
- Active A/B tests and results to date
- Top 3 growth levers identified with supporting data
- Cohort retention table (last 6 months of data)

---

## Artifacts

### Growth Metrics Dashboard Artifact

- **Type:** Analytics dashboard
- **Generated when:** Workflow B Step 4 completes
- **Format:** Follow `templates/metrics-dashboard.md`
- **Sections:** NSM trend, AARRR metrics with thresholds, cohort retention table, active experiment log
- **Disclaimer:** General Disclaimer

### Cohort Analysis Report

- **Type:** Analysis report
- **Generated when:** Workflow C Step 1–2 completes
- **Format:** Follow `templates/cohort-analysis.md`
- **Sections:** Retention table by cohort, segmented retention by acquisition channel, activation moment analysis, churn segmentation
- **Disclaimer:** General Disclaimer; Financial Disclaimer when projecting LTV or revenue impact

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
