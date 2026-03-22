# AARRR Pirate Metrics Framework

> The five-stage startup growth framework by Dave McClure (2007). Each stage represents a point where users either advance toward becoming loyal customers or fall out. AARRR tells you WHERE to focus your growth energy.

---

## Framework Overview

**Source:** Dave McClure, 500 Startups, 2007 ("Startup Metrics for Pirates")
**Core philosophy:** Growth isn't about one big thing — it's about systematically improving each stage of the user journey. Identify the leakiest stage. Fix it. Then move to the next.

```
A  cquisition  ← How users find you
A  ctivation   ← Do they have a good first experience?
R  etention    ← Do they come back?
R  evenue      ← Do they pay?
R  eferral     ← Do they tell others?
```

**Order of priority for most startups:**
1. **Retention first** — before anything else. A leaky bucket (users churning) makes every other investment worthless.
2. **Activation second** — if users who reach your product aren't converting, fix the first experience before acquiring more.
3. **Revenue third** — once you're retaining users, monetize more effectively.
4. **Acquisition fourth** — only scale what's working.
5. **Referral fifth** — the multiplier. Works when the product is already good.

---

## Stage 1: Acquisition

**Definition:** How do prospective customers find out about your product and reach your signup or landing page?

**The question:** Are you acquiring enough qualified users from the right channels at an acceptable cost?

### Key Metrics

| Metric | Definition | Formula |
|--------|-----------|---------|
| Total new visitors | Unique visitors to your main acquisition page per period | From analytics |
| Conversion rate to signup | % of visitors who create an account | Signups / Unique visitors |
| Cost per acquisition (CPA) | Cost to acquire one new user | Channel spend / New signups from channel |
| Channel mix | % of signups from each source | Channel signups / Total signups |
| Organic vs. paid ratio | Share of signups without direct spend | Organic signups / Total signups |

### Benchmarks by Stage

| Metric | Pre-PMF | Growth stage | Scale stage |
|--------|---------|-------------|-------------|
| Landing page conversion to signup | 3–8% | 8–15% | 15%+ |
| CPA (B2B SaaS) | Doesn't matter yet | < $200 | < LTV/3 |
| CPA (Consumer SaaS) | Doesn't matter yet | < $20–50 | < LTV/3 |
| Organic % of signups | Any | > 30% | > 50% |

### Acquisition Channels by Stage

**Pre-PMF (< 100 users):** Do things that don't scale. Personal outreach, founder networks, niche communities, Product Hunt.

**Growth Stage (100–1,000 users):** Content marketing, SEO, targeted paid, partnerships. One channel at a time.

**Scale Stage (1,000+ users):** Multi-channel. Data-driven channel optimization. Paid can scale when LTV:CAC is proven.

### Acquisition Diagnostics

| Symptom | Likely cause | Fix |
|---------|-------------|-----|
| High traffic, low signups | Landing page conversion problem | A/B test CTA, headline, social proof |
| Low traffic overall | Discovery / SEO problem | Content marketing, paid acquisition |
| High CPA | Wrong channel, wrong audience | Re-evaluate channel mix; tighten ICP |
| Over-indexed on one channel | Channel risk | Diversify before channel degrades |

---

## Stage 2: Activation

**Definition:** Do new users have a good enough first experience that they see the value of your product and want to come back?

**The question:** What % of new users experience the "aha moment" — the moment they understand why your product is valuable?

**The activation moment rule:** There is usually ONE specific action or sequence of actions that correlates most strongly with long-term retention. Find it. Make it happen for every new user as fast as possible.

### Key Metrics

| Metric | Definition | Formula |
|--------|-----------|---------|
| Activation rate | % of new users who reach the activation moment | Activated users / New signups |
| Time to first value (TTFV) | Median time from signup to activation moment | Median(activation_time - signup_time) |
| Onboarding completion rate | % of users who complete each onboarding step | Users completing step N / Starting users |
| Day 1 retention | % of users who return on day 1 after signup | Returning day 1 / New day 0 users |

### Activation Benchmarks

| Business type | Activation rate (good) | Time to value |
|--------------|----------------------|--------------|
| B2B SaaS (team tool) | > 40% in 3 days | < 24 hours |
| B2B SaaS (complex) | > 25% in 7 days | < 1 week |
| Consumer SaaS | > 40% in 24 hours | < 30 minutes |
| Marketplace (buyer) | > 30% complete first transaction in 7 days | < 3 days |
| Developer tools | > 50% make first API call or deployment in 24 hours | < 2 hours |

### Finding the Activation Moment

**Method:** Cohort analysis on feature usage in first session.
1. Take users who retained to Day 30 (healthy users)
2. Take users who churned by Day 7 (unhealthy users)
3. Compare what they did in their first session
4. The event with the highest "lift ratio" (% of retained who did it / % of churned who did it) is your activation moment candidate
5. Run an A/B test: drive users to this action in onboarding and measure Day 30 retention

**Common activation moments by product type:**

| Product type | Common activation moment |
|-------------|-------------------------|
| Collaboration tool (e.g., Slack) | Sent a message to a real teammate |
| Analytics tool (e.g., Amplitude) | Ran a query that returned a meaningful result |
| Project management (e.g., Asana) | Created first task AND assigned it to a teammate |
| Developer tool (e.g., Stripe) | Made first successful API call in production |
| Consumer social | Connected with 7+ friends (Dunbar-style network effect threshold) |
| E-commerce | Completed first purchase |

### Activation Diagnostics

| Symptom | Likely cause | Fix |
|---------|-------------|-----|
| Low activation rate (< 20%) | Value is not obvious; onboarding is too long | Shorten onboarding to minimum steps; surface aha moment faster |
| High time to value | Too many required steps before core value | Remove mandatory steps that don't directly contribute to aha moment |
| Drop-off at specific onboarding step | That step has friction | A/B test removing or simplifying that step |
| Low Day 1 retention despite high activation | Activation moment isn't the right one | Re-investigate which action predicts retention |

---

## Stage 3: Retention

**Definition:** Do users keep using your product over time? Do they come back after their first session?

**The most important AARRR stage.** Poor retention makes every other investment worthless. Fix retention before scaling acquisition.

### Key Metrics

| Metric | Definition | Benchmark |
|--------|-----------|-----------|
| Day 1 retention | % of Day 0 users active on Day 1 | Consumer: > 40%; B2B: > 60% |
| Day 7 retention | % of Day 0 users still active on Day 7 | Consumer: > 20%; B2B: > 40% |
| Day 30 retention | % of Day 0 users still active on Day 30 | Consumer: > 10%; B2B: > 25% |
| Monthly Retention Rate (MRR) | % of monthly users active the following month | B2B SaaS: > 80% |
| Monthly churn rate | % of users who don't return next month | < 5% (B2B); < 10% (consumer) |
| Retention curve plateau | Where does the retention curve flatten? | Above 15% (consumer); above 30% (B2B) |

### The Retention Curve — The Most Important Chart

**Healthy curve:** Drops 50–70% in weeks 1–3, then flattens and stabilizes.

**Why flattening matters:** A stable plateau means some users have found lasting value and are unlikely to churn further. Those users are your core. Your job: activate more users to reach that state.

**Benchmarks for plateau level:**

| Business type | Good plateau | Excellent plateau |
|--------------|-------------|------------------|
| Consumer mobile app | 10–15% Day 60 | > 20% Day 60 |
| Consumer SaaS | 15–25% Month 3 | > 30% Month 3 |
| B2B SaaS (SMB) | 25–40% Month 3 | > 50% Month 3 |
| B2B SaaS (enterprise) | 40–60% Month 3 | > 70% Month 3 |

### Net Revenue Retention (NRR) — The Advanced Retention Metric

For SaaS: NRR captures not just whether users stay, but whether they expand.

```
NRR = (Starting MRR + Expansion MRR - Churned MRR - Contraction MRR) / Starting MRR × 100%
```

| NRR | Interpretation |
|-----|---------------|
| > 120% | World-class — Snowflake, Twilio territory |
| 100–120% | Excellent — expansion outpaces churn |
| 90–100% | Healthy — some churn but manageable |
| < 90% | At risk — churn is a serious problem |
| < 80% | Critical — product is leaking revenue faster than it's adding |

### Retention Diagnostics

| Symptom | Likely cause | Fix |
|---------|-------------|-----|
| Curve doesn't flatten | No persistent core value; wrong ICP; product-market fit gap | Segment cohorts; find retaining segment; build for them |
| High early churn (Day 0–7) | Activation problem, not retention | Fix onboarding and time-to-value |
| High mid-term churn (Day 7–30) | User found initial value but no habit loop | Add re-engagement triggers; improve core value depth |
| High late churn (30+ days) | Competitor switch; value plateau; context change | Run exit surveys; improve expansion features; increase switching cost |

---

## Stage 4: Revenue

**Definition:** How do you make money from users? And how efficiently?

**The question:** Are users paying, and is the revenue model sustainable (LTV > CAC)?

### Key Metrics

| Metric | Definition | Formula |
|--------|-----------|---------|
| MRR | Monthly Recurring Revenue | Sum of all active subscription revenue |
| ARR | Annual Run Rate | MRR × 12 |
| ARPU | Average Revenue Per User | MRR / Active paying users |
| LTV | Customer Lifetime Value | ARPU / Monthly churn rate |
| CAC | Customer Acquisition Cost | Total S&M spend / New customers |
| LTV:CAC ratio | Efficiency of acquisition | LTV / CAC |
| Payback period | Months to recover CAC | CAC / (ARPU × Gross margin) |

### Revenue Health Benchmarks

| Metric | Minimum viable | Good | Excellent |
|--------|---------------|------|-----------|
| LTV:CAC ratio | > 1:1 (not losing money) | > 3:1 | > 5:1 |
| CAC payback period | < 24 months | < 12 months | < 6 months |
| Gross margin | > 50% | > 65% | > 80% |
| Net Revenue Retention | > 90% | > 100% | > 110% |

### Revenue Stage Benchmarks (B2B SaaS ARR milestones)

| ARR | Stage | Typical unit economics |
|-----|-------|----------------------|
| $0–$100K | Pre-PMF | Don't optimize unit economics — find PMF |
| $100K–$1M | PMF proven | LTV:CAC > 2:1; payback < 24 months |
| $1M–$5M | Early growth | LTV:CAC > 3:1; payback < 18 months |
| $5M–$20M | Scaling | LTV:CAC > 3:1; payback < 12 months |
| $20M+ | Scale | LTV:CAC > 5:1; payback < 9 months |

### Revenue Diagnostics

| Symptom | Likely cause | Fix |
|---------|-------------|-----|
| Low conversion from free to paid | Insufficient perceived value on free; wrong pricing structure | A/B test pricing page; add feature gates; adjust freemium limits |
| Low ARPU | Product under-priced; wrong ICP | Value-based pricing audit (see Skill 02) |
| High revenue churn despite low logo churn | Customers downgrading | Investigate why; improve mid-tier value; remove downgrade paths |
| LTV:CAC < 2:1 | CAC too high, LTV too low, or both | Do not scale acquisition; fix CAC (channels) or LTV (pricing/retention) first |

---

## Stage 5: Referral

**Definition:** Do satisfied users tell others about your product, creating organic growth?

**The question:** Is your product good enough that users voluntarily recruit others?

### Key Metrics

| Metric | Definition | Formula |
|--------|-----------|---------|
| Net Promoter Score (NPS) | Promoter minus detractor ratio | % Promoters (9–10) - % Detractors (0–6) |
| k-factor (viral coefficient) | Organic multiplier per user | (Invitations per user) × (Invite conversion rate) |
| Referral rate | % of new users who come from referrals | Referral signups / Total signups |
| Word of mouth (WOM) rate | Signups who cite recommendation as source | WOM signups / Total signups |

### Referral Benchmarks

| Metric | Low | Average | Good | Viral |
|--------|-----|---------|------|-------|
| NPS | < 20 | 20–40 | 40–60 | > 60 |
| k-factor | < 0.1 | 0.1–0.3 | 0.3–0.7 | > 1.0 |
| Referral rate | < 5% | 5–15% | 15–30% | > 30% |

**k-factor interpretation:**
- k < 1: Product cannot sustain viral growth on its own; external acquisition required
- k = 1: For every user, one more joins organically (neutral viral loop)
- k > 1: Viral growth — each user brings more than one new user. Growth compounds.

**Reality check:** Most B2B products have k-factors between 0.1 and 0.5. k > 1 is rare and usually involves a product with strong network effects or a very generous referral incentive.

### Referral Mechanics

**Types of referral loops:**

| Type | How it works | Example |
|------|-------------|---------|
| Collaboration invite | User must invite others for core functionality | Slack, Google Docs, Figma |
| Incentive-based | User and new user both get a reward | Dropbox (free storage), Robinhood (free stock) |
| Virality through output | Using the product creates content others see | Canva (share a design), Typeform (fill out a form) |
| PR/word of mouth | User publicly advocates because they love it | Notion, Linear, Superhuman |

**Referral diagnostics:**

| Symptom | Likely cause | Fix |
|---------|-------------|-----|
| NPS > 40 but referral rate is low | Promoters willing to refer but not given a mechanism | Build in-product referral with easy sharing |
| NPS < 20 | Product doesn't deliver enough value; segment of unhappy users | Survey detractors; find the pattern; fix root cause |
| Referral rate high but k < 1 | Invited users aren't converting | Improve onboarding for referred users; reduce friction in invite flow |

---

## AARRR Diagnostic Framework

### Finding the Leakiest Stage

Run through this checklist to identify where to focus:

**Step 1:** Fill in your current metrics for each stage

| Stage | Your metric | Your value | Benchmark | Gap |
|-------|------------|------------|-----------|-----|
| Acquisition | New signups / week | [#] | [target] | [gap] |
| Activation | Activation rate | [%] | [target] | [gap] |
| Retention | Day 30 retention | [%] | [target] | [gap] |
| Revenue | LTV:CAC | [x] | > 3:1 | [gap] |
| Referral | NPS | [score] | > 40 | [gap] |

**Step 2:** Calculate relative performance

For each stage: `Relative performance = Your value / Benchmark × 100%`

**Step 3:** Fix the worst-performing stage first

Priority order if everything is broken:
1. Retention (always fix first)
2. Activation (if retention is acceptable)
3. Revenue (if activation is working)
4. Acquisition (scale what works)
5. Referral (amplify a good product)

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
