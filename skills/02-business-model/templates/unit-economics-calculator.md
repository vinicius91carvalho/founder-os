# Unit Economics Calculator

> A fillable template for calculating LTV, CAC, payback period, and LTV:CAC ratio. Complete all inputs, then verify the outputs against industry benchmarks. Label every estimated input as [ESTIMATE] and every data-backed input as [ACTUAL].

---

## Instructions

1. Fill in every input field with either actual data or a labeled estimate
2. Use the formulas provided to calculate outputs
3. Run three scenarios: Conservative, Base, and Optimistic
4. Compare your outputs to the benchmark table at the bottom
5. Use the results to determine whether your model is fundable and scalable

*Note: Replace all [placeholder] text with your actual values.*

---

## Input: Revenue Assumptions

**Business model type:** [SaaS subscription / usage-based / transactional / marketplace / other]

**Primary revenue unit:** [Per seat / per company / per transaction / per GB / other]

**Average Revenue Per Account (ARPA):**

| Metric | Conservative | Base | Optimistic | Data source |
|---|---|---|---|---|
| Monthly ARPA — Starter tier | $[___] | $[___] | $[___] | [ESTIMATE or ACTUAL — cite source] |
| Monthly ARPA — Growth tier | $[___] | $[___] | $[___] | [ESTIMATE or ACTUAL] |
| Monthly ARPA — Enterprise tier | $[___] | $[___] | $[___] | [ESTIMATE or ACTUAL] |
| **Blended Monthly ARPA** (weighted by expected tier mix) | $[___] | $[___] | $[___] | [Calculated] |

**Tier mix assumption:** [What % of customers will be on each tier? e.g., "70% Starter, 25% Growth, 5% Enterprise"]

**Annual contract vs. monthly mix:**
- % of customers on annual contracts (paid upfront): [___]%
- % of customers on monthly contracts: [___]%

---

## Input: Gross Margin

**Gross margin %:** [___]% [ESTIMATE or ACTUAL]

*Gross margin = (Revenue − Cost of Goods Sold) ÷ Revenue × 100. COGS includes: hosting/infrastructure, support costs, payment processing fees, third-party API costs. Does NOT include: sales, marketing, R&D, G&A.*

**Industry benchmarks for gross margin:**
- SaaS (pure software): 70–85%
- SaaS with managed services component: 55–70%
- Marketplace: 50–70% (on take rate revenue)
- Hardware + SaaS: 40–60%

If your gross margin is below industry benchmark, identify which cost component is the driver and whether it will improve at scale.

---

## Input: Churn Rate

**Monthly churn rate (% of customers who cancel per month):**

| Churn scenario | Monthly churn | Annual equivalent | Commentary |
|---|---|---|---|
| Conservative | [___]% | ~[___]% | [What assumption drives this?] |
| Base | [___]% | ~[___]% | [Industry benchmark or internal data] |
| Optimistic | [___]% | ~[___]% | [Best case based on retention data] |

*Annual churn ≈ 1 − (1 − monthly churn)^12. Example: 2% monthly churn ≈ 21.5% annual churn.*

**Churn benchmarks by segment:**
- SMB SaaS (< 100 employees): 15–25% annual churn is common; < 10% is excellent
- Mid-market SaaS (100–1,000 employees): 8–15% annual is typical; < 5% is excellent
- Enterprise SaaS (1,000+ employees): 5–10% annual typical; < 3% is excellent
- Consumer subscription: 30–50% annual is common; < 15% is excellent

---

## LTV Calculation

### Formula (Subscription)

```
LTV = (Blended Monthly ARPA × Gross Margin %) ÷ Monthly Churn Rate
```

### Calculation

| | Conservative | Base | Optimistic |
|---|---|---|---|
| Blended Monthly ARPA | $[___] | $[___] | $[___] |
| Gross Margin % | [___]% | [___]% | [___]% |
| Monthly Churn Rate | [___]% | [___]% | [___]% |
| **LTV** | **$[___]** | **$[___]** | **$[___]** |

**LTV calculation shown (Base case):**
> LTV = ($[ARPA] × [GM]%) ÷ [Churn]% = $[result]

*Note: If you have meaningful expansion revenue (upsells, seat adds, tier upgrades), use Net Revenue Retention (NRR) instead of churn rate. LTV = (Blended ARPA × GM%) ÷ (1 − NRR/12). NRR > 100% means your cohorts grow over time — this dramatically improves LTV.*

**Net Revenue Retention (if applicable):**
- NRR: [___]% [ESTIMATE or ACTUAL — industry benchmark: 110–130% for strong SaaS]
- If NRR > 100%: LTV = (ARPA × GM%) ÷ (Monthly Gross Churn %) [gross churn, not net]

---

## CAC Calculation

### Channel Breakdown

| Acquisition Channel | Monthly Spend | Customers Acquired/Month | CAC per Channel | % of Mix |
|---|---|---|---|---|
| Outbound sales (SDR) | $[___] | [___] | $[___] | [___]% |
| Content / SEO / Inbound | $[___] | [___] | $[___] | [___]% |
| Paid acquisition (Google, LinkedIn) | $[___] | [___] | $[___] | [___]% |
| Product-led growth / viral | $[___] | [___] | $[___] | [___]% |
| Events / conferences | $[___] | [___] | $[___] | [___]% |
| Partner / referral | $[___] | [___] | $[___] | [___]% |
| **Total / Blended** | $[___] | [___] | **$[___]** | 100% |

*CAC per channel = Channel Monthly Spend ÷ Customers Acquired via that channel per month*

*Blended CAC = Total Sales + Marketing Spend ÷ Total New Customers (all channels)*

**Note on fully-loaded CAC:** Include salaries of sales and marketing team members proportional to their time. Many founders exclude headcount and then wonder why their CAC looks impossibly low.

### CAC Benchmarks by Model

| Model / Segment | Typical CAC Range |
|---|---|
| PLG / self-serve consumer | $10–$100 |
| SMB inbound SaaS | $200–$800 |
| SMB outbound SaaS | $500–$2,000 |
| Mid-market SaaS | $3,000–$10,000 |
| Enterprise SaaS | $20,000–$100,000+ |

---

## Payback Period and LTV:CAC

### Formulas

```
Payback Period (months) = CAC ÷ (Monthly ARPA × Gross Margin %)

LTV:CAC = LTV ÷ CAC
```

### Calculation

| | Conservative | Base | Optimistic |
|---|---|---|---|
| LTV | $[___] | $[___] | $[___] |
| Blended CAC | $[___] | $[___] | $[___] |
| Monthly ARPA | $[___] | $[___] | $[___] |
| Gross Margin % | [___]% | [___]% | [___]% |
| **Payback Period** | **[___] months** | **[___] months** | **[___] months** |
| **LTV:CAC Ratio** | **[___]:1** | **[___]:1** | **[___]:1** |

**Shown (Base case):**
> Payback = $[CAC] ÷ ($[ARPA] × [GM]%) = [result] months
> LTV:CAC = $[LTV] ÷ $[CAC] = [result]:1

---

## Benchmark Comparison

Compare your Base case outputs to these benchmarks:

| Metric | Below Benchmark | Acceptable | Strong | Elite |
|---|---|---|---|---|
| **LTV:CAC** | < 3:1 | 3:1–5:1 | 5:1–8:1 | > 8:1 |
| **Payback Period** | > 24 months | 18–24 months | 12–18 months | < 12 months |
| **Gross Margin** | < 50% | 50–65% | 65–75% | > 75% |
| **Annual Churn** | > 15% | 10–15% | 5–10% | < 5% |
| **NRR (if applicable)** | < 100% | 100–110% | 110–125% | > 125% |

**Your results:**

| Metric | Your Value | Benchmark Status |
|---|---|---|
| LTV:CAC | [___]:1 | [Below / Acceptable / Strong / Elite] |
| Payback Period | [___] months | [Below / Acceptable / Strong / Elite] |
| Gross Margin | [___]% | [Below / Acceptable / Strong / Elite] |
| Annual Churn | [___]% | [Below / Acceptable / Strong / Elite] |
| NRR | [___]% | [Below / Acceptable / Strong / Elite] |

---

## Sensitivity Analysis

Identify which input variable has the most impact on your unit economics by testing single-variable changes:

| Variable Changed | Direction | Impact on LTV:CAC | Impact on Payback |
|---|---|---|---|
| Churn rate +5% annual | Worse | [___] → [___] | [___] → [___] months |
| Churn rate −5% annual | Better | [___] → [___] | [___] → [___] months |
| Price +20% | Better | [___] → [___] | [___] → [___] months |
| Price −20% | Worse | [___] → [___] | [___] → [___] months |
| CAC +50% (channel costs increase) | Worse | [___] → [___] | [___] → [___] months |
| Gross margin −10% (more infrastructure cost) | Worse | [___] → [___] | [___] → [___] months |

**Most sensitive variable:** [Which single change has the biggest impact?]

**Strategic implication:** [What does this mean for where you focus to improve unit economics?]

---

## Recommendations

Based on your unit economics:

**Overall assessment:** [One sentence — are these unit economics fundable, borderline, or problematic?]

**Top 3 levers to improve unit economics:**
1. [Lever 1: what to change, expected impact]
2. [Lever 2: what to change, expected impact]
3. [Lever 3: what to change, expected impact]

**Timeline to healthy unit economics (if not already there):**
> [What milestones would move you from current state to benchmark-level unit economics? What would have to be true in 6–12 months?]

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.

> **Financial Disclaimer:** The financial projections, unit economics, and calculations in this document are estimates based on stated assumptions and industry benchmarks. They do not constitute financial advice. Actual results will vary based on market conditions, execution, and factors not captured in this model. Consult a qualified accountant or financial advisor before making financial decisions. Do not use these projections as the sole basis for investment decisions.
