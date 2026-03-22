# Business Model

> Help founders select, design, and validate the revenue model, pricing strategy, and unit economics that will determine whether the company is financeable, scalable, and defensible.

---

## Diagnostic

Before giving advice, assess the founder's current state in business model design. Ask these questions to route to the right workflow:

### State Assessment

| State | Description | Route To |
|-------|-------------|----------|
| **Exploring** | Founder has a validated problem (GO from Skill 01) but hasn't selected a revenue model — considering multiple options or defaulting to "subscription" without analysis | Workflow A: Model Selection |
| **Selected** | Founder has chosen a revenue model type but hasn't designed pricing, tiers, or tested price points with customers | Workflow B: Pricing Design |
| **Pricing** | Founder has a pricing structure but hasn't calculated unit economics (LTV, CAC, payback period) or doesn't know if the numbers support venture scale | Workflow C: Unit Economics |
| **Unit Economics** | Founder has working unit economics and wants to refine competitive positioning to defend the model against competitors | Workflow D: Competitive Positioning |

### Diagnostic Questions

1. **"How do you plan to make money — and how did you choose that model?"** — Distinguishes Exploring (vague answer or "we'll figure it out") from Selected (specific model with rationale). If the answer is "subscription because that's what SaaS does," route to Workflow A — they've defaulted, not decided.
2. **"What do customers pay today, and how did you arrive at that price?"** — Distinguishes Selected from Pricing. "We haven't set a price yet" or "we picked $X because it seemed reasonable" = route to Workflow B.
3. **"What's your LTV:CAC ratio, and how long is your payback period?"** — Distinguishes Pricing from Unit Economics. If the founder can't answer, route to Workflow C.
4. **"How does your pricing change when a well-funded competitor enters your market at 50% of your price?"** — Reveals whether competitive positioning is in place. If the answer is "we'd have to lower our price too," route to Workflow D.

### Routing Logic

```
IF founder has not selected a revenue model with reasoning
→ Route to Workflow A (Model Selection)

ELIF founder has selected model but has no pricing structure
→ Route to Workflow B (Pricing Design)

ELIF founder has pricing but can't calculate LTV, CAC, or payback
→ Route to Workflow C (Unit Economics)

ELIF founder has unit economics but no competitive positioning
→ Route to Workflow D (Competitive Positioning)
```

---

## Workflows

### Workflow A: Model Selection (Exploring → Selected Revenue Model)

**Objective:** Match the business model pattern to the problem type, customer behavior, and growth strategy — not to convention or imitation.

**Steps:**

1. **Map the value exchange**
   - Action: Answer these 4 questions: (a) Who creates the primary value — the company or users? (b) Is value consumed once or repeatedly? (c) Is the customer the same person as the user? (d) Is the value concentrated (serves one customer at a time) or distributed (serves many simultaneously)?
   - Output: Value exchange map — 2–3 sentences describing how value flows
   - Decision point: Marketplace vs. non-marketplace. If your product connects two distinct groups (buyers and sellers, creators and consumers, workers and hirers), this is a marketplace model. If your product directly delivers value to one customer type, it's direct. Marketplace economics are fundamentally different — see `frameworks/business-model-patterns.md`

2. **Select a model category from the 55 patterns**
   - Action: Review `frameworks/business-model-patterns.md` — filter to your category (SaaS, marketplace, consumer, media, hardware, services). For each candidate model: (a) identify 3 successful companies using it, (b) identify 1–2 companies that tried it and failed, (c) ask why the successes worked for their customer type
   - Output: Top 2–3 candidate models with rationale for each
   - Checkpoint: Do not select a model simply because it's common in your sector. A transactional model may outperform a subscription model for low-frequency, high-value purchases — even in SaaS

3. **Validate model fit with customer interviews**
   - Action: Run 5 targeted pricing conversations (separate from problem interviews) using the pricing discovery section of `templates/pricing-strategy.md`. Ask: "How do you currently pay for tools like this?" and "Would you prefer to pay when you use it or a flat monthly fee?"
   - Output: Customer payment preference data — 3–4 patterns from conversations
   - Decision point: Customer preference isn't determinative (customers prefer free), but it constrains which models will require the least friction to close. If 4/5 customers say "we don't buy subscriptions for this category," a subscription model will fight friction on every sale
   - Next: Proceed to Workflow B with selected model

### Workflow B: Pricing Design (Selected Model → Pricing Structure)

**Objective:** Design a pricing structure that captures value proportionally to customer willingness to pay, using value-based pricing as the anchor — not cost-plus.

**Steps:**

1. **Anchor on value, not cost**
   - Action: For each customer segment in your archetype, calculate the economic value your product delivers. Formula: Value = (Time saved × hourly rate) + (Revenue generated) + (Risk avoided × probability) + (Cost replaced from workarounds). This is the VALUE ceiling, not your price — but it anchors where pricing should live
   - Output: Value calculation for each customer segment — "For a 20-person ops team spending 10 hours/week on this manually at $75/hr burdened cost, the annual value is $780,000. Our price should capture a meaningful share of that."
   - Decision point: If the value delivered is < 10× your planned annual price, your price may be too high OR your value articulation is too weak. If value delivered is > 50× your annual price, consider whether you're underpricing

2. **Set pricing tiers**
   - Action: Use `templates/pricing-strategy.md` to design 3 tiers (or equivalent for your model). For SaaS: Free/Starter (acquisition), Growth (primary revenue), Enterprise (expansion). Apply the "3× rule": Growth tier should be ~3× Starter tier price. This creates a natural expansion path. Ensure each tier upgrade is triggered by a single, clear value event (more users, more data, more integrations)
   - Output: Pricing table with tiers, limits, key features per tier, and upgrade triggers
   - Checkpoint: Test tiers against 5 customer archetypes. Can each archetype find a tier that fits them? Is there a tier that no one would buy? If yes, eliminate or reprice it

3. **Run the Van Westendorp price sensitivity test (optional but recommended)**
   - Action: Ask 10 target customers: (a) "At what price would this be so cheap you'd question the quality?" (b) "At what price would this be a bargain?" (c) "At what price would it start getting expensive?" (d) "At what price is it too expensive to consider?" Plot the 4 responses — the acceptable price range is between the "too cheap" and "too expensive" crossover points
   - Output: Acceptable price range with upper and lower bounds from customer data
   - Next: Proceed to Workflow C with pricing structure and initial revenue assumptions

### Workflow C: Unit Economics (Pricing → Healthy Unit Economics)

**Objective:** Calculate LTV, CAC, and payback period — and determine whether the model is financeable and scalable.

**Steps:**

1. **Calculate LTV**
   - Action: Use `templates/unit-economics-calculator.md`. For subscription: LTV = (Average Monthly Revenue per Customer × Gross Margin %) ÷ Monthly Churn Rate. For transactional: LTV = (Average Transaction Value × Gross Margin % × Average Transaction Frequency) ÷ (1 − Annual Retention Rate)
   - Output: LTV calculation with each input variable explicitly stated and sourced (from customer interviews, industry benchmarks, or estimates labeled as such)
   - Checkpoint: Benchmark your churn rate assumptions against industry data. SaaS B2B: < 5% annual churn = excellent; 5–10% = normal; > 15% = concerning. If you don't know your churn yet, use 8% as a conservative estimate and note it as an assumption

2. **Calculate CAC**
   - Action: CAC = Total Sales + Marketing Spend ÷ Number of New Customers Acquired in Period. If pre-revenue, estimate by channel: (a) outbound SDR: $500–$2,000/customer for SMB, (b) content/SEO: $50–$500 over 6 months, (c) paid acquisition: start with industry CPAs from comparable companies, (d) product-led growth: $20–$150/customer
   - Output: Blended CAC estimate by channel, with assumptions labeled
   - Checkpoint: Separate sales and marketing costs by channel to identify which channel is most efficient — blended CAC hides channel-level problems

3. **Calculate payback period and LTV:CAC**
   - Action: Payback period = CAC ÷ (Monthly Revenue per Customer × Gross Margin %). LTV:CAC = LTV ÷ CAC
   - Output: Payback period (months) and LTV:CAC ratio
   - Decision point: Benchmarks: LTV:CAC ≥ 3:1 = viable (industry standard minimum for VC-backed SaaS). LTV:CAC ≥ 5:1 = strong. Payback < 12 months = excellent; 12–18 months = acceptable; > 24 months = problematic without high growth or strong retention. If payback > 24 months, review CAC channels and pricing before proceeding to fundraising
   - Next: Healthy unit economics → Proceed to Workflow D or Skill 03 (Fundraising). Unhealthy → identify which variable is the problem and address it before fundraising

### Workflow D: Competitive Positioning (Unit Economics → Defensible Position)

**Objective:** Define a competitive position using April Dunford's positioning methodology that makes the company the obvious choice for the best-fit customer — not a generic alternative.

**Steps:**

1. **Map competitive alternatives**
   - Action: List every alternative a customer would use if your product didn't exist. This is broader than "direct competitors" — it includes: doing nothing, using Excel, using a VA, using an enterprise suite, using a competitor. For each: what does the customer give up, and what do they get?
   - Output: Competitive alternative map — 5–8 alternatives with their strengths and weaknesses from the customer's perspective

2. **Identify unique capabilities**
   - Action: For each competitive alternative, list what your product does that they can't or won't do. Focus on structural advantages (API access they don't have, data they don't own, cost structure they can't match, team expertise they can't replicate). Not "we have better UI" — that's a feature, not a capability
   - Output: Unique capability list — 3–5 structural or defensible advantages over the landscape

3. **Define the value themes and best-fit customers**
   - Action: Complete `templates/competitive-positioning.md`. Map unique capabilities → value themes → best-fit customer profile. The positioning statement format: "For [best-fit customer] who [specific situation], [product name] is the [category] that [unique value]. Unlike [primary alternative], we [differentiating capability]."
   - Output: Positioning statement + best-fit customer profile
   - Next: Positioning outputs feed Skill 03 (pitch deck competition slide), Skill 04 (GTM targeting), and Skill 06 (sales messaging)

---

## Frameworks

### 55 Business Model Patterns (Summary by Category)

**Source:** Adapted from St. Gallen Business Model Navigator and Strategyzer research
**When to use:** Workflow A Step 2 — model selection before pricing design

See `frameworks/business-model-patterns.md` for the complete 55-pattern reference. Key patterns by category:

**SaaS / Software (most common for B2B startups):**
- Subscription (per-seat, flat-rate, usage-based)
- Freemium → premium conversion
- Product-led growth (PLG) with expansion revenue
- Usage-based pricing (pay-as-you-go)
- Platform licensing (white-label, API access)

**Marketplaces:**
- Take rate / transaction fee (% of GMV)
- Listing fee + take rate hybrid
- SaaS tools for one side + take rate on the other
- Managed marketplace (company controls supply)

**Consumer:**
- Advertising-supported (free to user, advertiser pays)
- Subscription (direct consumer; lower LTV, requires mass scale)
- D2C product + subscription (hardware + consumables)
- Community + premium tier

**Services-led:**
- Retainer / managed service
- Project-based consulting
- Productized service (fixed scope, fixed price)
- Agency + software hybrid

**Hardware / Physical:**
- Hardware + SaaS subscription (high LTV, high CAC)
- Razor + blade (cheap hardware, premium consumables)
- Product + marketplace

### Value-Based Pricing (April Dunford adaptation)

**Source:** April Dunford, "Obviously Awesome" + pricing strategy practice
**When to use:** Workflow B — before setting any price point

**The core principle:** Price is set by the value you deliver to the customer, not by your costs or your competitors' prices. Cost-plus pricing under-captures value. Competitor-based pricing commoditizes you. Value-based pricing maximizes revenue per customer while remaining defensible.

**Steps:**
1. **Identify the economic buyer**: Who in the organization actually pays for this? (Not always the user)
2. **Quantify the value**: Calculate the specific dollar value of the outcome your product delivers. Use customer data where possible — otherwise use conservative industry averages
3. **Set price as a fraction of value**: Common anchoring rule: price = 10–25% of the annual economic value delivered. Customers get 75–90% of the value; you capture 10–25%
4. **Validate against market reality**: Compare to competitive alternatives. If your price implies customers get only 50% of the value but alternatives provide 80% at the same price, you have a problem

**Example:**
> Sales enablement software that increases quota attainment by 12% for a 10-rep sales team. Average rep OTE: $120,000. Annual revenue impact: 10 reps × 12% improvement × $120K quota = $144,000 value generated. Pricing at 15% of value = $21,600/year ($1,800/month) for 10 users. Market reality check: comparable tools price at $50–150/user/month. At $180/user/month you're at the high end but defensible if you can show the ROI.

### April Dunford Positioning Methodology

**Source:** April Dunford, "Obviously Awesome: How to Nail Product Positioning So Customers Get It, Buy It, Love It" (2019)
**When to use:** Workflow D — competitive positioning after unit economics are validated

**The 5-component positioning framework:**

1. **Competitive alternatives**: What would the customer do if your product didn't exist? (Not "who are your competitors" — what is the actual customer behavior)
2. **Unique attributes**: What features or capabilities do you have that alternatives lack? Focus on structural differentiation, not feature-level differences
3. **Value themes**: What is the benefit of your unique attributes — in the customer's language? Translate features into outcomes ("reduces month-end close from 5 days to 1 day" not "automated reconciliation")
4. **Best-fit customers**: Given your unique value themes, which specific customer segment benefits most? These are not all customers — they are the ones for whom your differentiation matters most
5. **Market category**: What category should you compete in? Category choice determines who you're compared to. Being in a new category (market pioneer) requires more education. Being in an existing category (market alternative) benefits from established demand but requires clear differentiation

**Common mistakes:**
- Defining competitive alternatives as "direct competitors" only — ignores Excel, "do nothing," and indirect competition
- Stating unique attributes as feature descriptions rather than customer outcomes
- Trying to position for ALL customers instead of the best-fit segment
- Choosing a market category based on your technology rather than your customer's mental model

---

## Templates

| Template | File | Purpose |
|----------|------|---------|
| Unit Economics Calculator | `templates/unit-economics-calculator.md` | LTV, CAC, payback period, LTV:CAC calculation with inputs |
| Competitive Positioning Canvas | `templates/competitive-positioning.md` | April Dunford's 5-component positioning canvas |
| Pricing Strategy Analysis | `templates/pricing-strategy.md` | Pricing model selection, tier design, and customer validation |
| Business Model Patterns Reference | `frameworks/business-model-patterns.md` | 55+ patterns with selection criteria |

---

## Decision Trees

### Which pricing model should I use?

```
START: Is your product purchased frequently (≥ monthly) or infrequently (quarterly, annually, or once)?
│
├─ FREQUENTLY → Is value delivered continuously (ongoing access/benefit) or per-use?
│   ├─ CONTINUOUSLY → Subscription model
│   │   ├─ B2B, per-seat usage → Per-seat subscription
│   │   ├─ B2B, platform/org-wide → Flat-rate or usage tiers
│   │   └─ B2C → Consumer subscription (requires mass scale, high retention)
│   └─ PER-USE → Usage-based / transactional
│       ├─ Predictable usage → Usage-based with minimum commitment
│       └─ Variable usage → Pure pay-as-you-go (reduces barrier, lowers predictability)
│
└─ INFREQUENTLY → Is this a one-time purchase or does it require ongoing support?
    ├─ ONE-TIME → Transactional (with upsell to support/maintenance subscription)
    └─ ONGOING SUPPORT → Project + retainer hybrid, or annual license
```

### Should I offer a free tier?

```
START: Is your primary growth engine product-led (users discover and adopt before paying)?
│
├─ YES → Does the free tier deliver enough value to drive viral / word-of-mouth adoption?
│   ├─ YES → Freemium with clear upgrade trigger (feature gate or usage limit)
│   │   ├─ Viral product (sharing, collaboration) → Free tier expands reach
│   │   └─ Non-viral product → Free tier creates habits; upgrade on value realization
│   └─ NO → Free trial (time-limited, not feature-limited) instead of freemium
│
└─ NO → Is your sales motion outbound or enterprise?
    ├─ OUTBOUND → No free tier — it signals low price ceiling and reduces deal size urgency
    └─ ENTERPRISE → Free pilot (scoped, time-limited, with specific success criteria)
        rather than self-serve freemium
```

### Are my unit economics healthy enough to raise venture capital?

```
START: What is your current (or projected) LTV:CAC ratio?
│
├─ ≥ 5:1 → What is your payback period?
│   ├─ < 12 months → Excellent unit economics. Proceed to fundraising
│   └─ 12–24 months → Strong LTV but slow payback — may need working capital.
│       Explore whether upfront payment (annual contracts) improves cash flow
│
├─ 3:1 to 5:1 → Acceptable for seed/Series A. What is your growth rate?
│   ├─ MoM growth ≥ 10% → Unit economics will improve with scale; fundable now
│   └─ MoM growth < 10% → Investors will want to see a clear path to improvement.
│       Fix CAC (channel efficiency) or churn (retention) before raising
│
├─ 1:1 to 3:1 → Below benchmark. Diagnose root cause:
│   ├─ LTV too low → Churn is high (fix retention) or price is too low (raise price)
│   └─ CAC too high → Wrong acquisition channel (optimize) or wrong ICP (tighten)
│
└─ < 1:1 → Not fundable in current state. Fundamental model problem.
    → Consider: different pricing model, different customer segment, or
      whether this is a services business rather than a SaaS business
```

---

## Anti-Patterns

### 1. Pricing by Gut Feel ("Let's Start at $99/month")

- **What it looks like:** Founder sets a price by picking a round number that "feels right" or copying a similar product's price, without any calculation of customer value delivered or customer willingness to pay
- **Why founders do it:** Pricing feels awkward to discuss with customers. Copying a competitor's price feels safe. And founders often undervalue what they've built
- **Why it's harmful:** Gut-feel pricing almost always underprices. It leaves revenue on the table. Worse, it anchors the market at a price that may make the unit economics unworkable — and raising prices later is harder than charging more from the start
- **What to do instead:** Use value-based pricing. Calculate the economic value delivered to your best-fit customer. Set your price at 10–25% of that value. Then validate with 10 pricing conversations before launching

### 2. Undifferentiated Subscription Model

- **What it looks like:** "We're a SaaS tool, so it's $X/month per user." No analysis of whether subscription is the right model for this customer's buying behavior. No evaluation of alternatives like usage-based, transactional, or flat-rate
- **Why founders do it:** SaaS subscription is the default model in tech. Investors like it. It's easy to explain
- **Why it's harmful:** Subscription model requires that customers perceive ongoing value every month. For low-frequency-use products, customers cancel when they don't use it — which happens exactly when they don't have the problem. A usage-based model might capture more revenue in high-use periods and reduce friction in low-use periods
- **What to do instead:** Match the model to the usage pattern. High-frequency, continuous value → subscription. Variable usage → usage-based. Infrequent, high-value → transactional. Ask 10 customers how they currently pay for similar tools and why

### 3. Ignoring LTV Until Post-Series A

- **What it looks like:** "We'll figure out unit economics once we have more data." Founder raises seed and Series A focusing on revenue growth without calculating LTV, CAC, or payback period
- **Why founders do it:** Unit economics require data you don't have at early stages. Calculating projections feels speculative. And early investors often focus more on growth rate than margins
- **Why it's harmful:** Unit economics that are broken at seed are still broken at Series A — but now with 10× more employees and burn rate. Many companies have grown into Series A/B raises only to discover their unit economics fundamentally don't work at scale. This is not fixable by growth
- **What to do instead:** Estimate unit economics from day one, even if the inputs are rough estimates. Label every assumption. Run scenarios: if churn is 10% annual vs. 20% annual, how does LTV change? Build the model early so you can make the business decisions that will improve it

### 4. Positioning Against the Wrong Alternative

- **What it looks like:** Founder positions against direct SaaS competitors ("We're better than Salesforce for SMBs") when the actual competitive alternative is Excel, email, or "doing nothing"
- **Why founders do it:** It's easier to compare to a named competitor than to articulate why the status quo is inadequate. Comparing to a named competitor also feels more credible in a pitch
- **Why it's harmful:** When you position against the wrong alternative, your marketing, sales messaging, and feature prioritization all optimize for the wrong fight. Most early-stage startups replace Excel, not Salesforce. The person who needs to be convinced is not a Salesforce customer — they're someone who hasn't bought any tool yet
- **What to do instead:** Answer the question April Dunford asks: "What would the customer do if your product didn't exist?" The answer is the real alternative. Position against that. It changes your messaging, your features, and your onboarding

### 5. Premature Pricing Optimization

- **What it looks like:** Founder runs A/B pricing tests, builds complex pricing calculators, and designs multi-tier pricing before having 10 paying customers
- **Why founders do it:** Pricing optimization feels like growth work. It seems data-driven. And it avoids the harder work of customer development
- **Why it's harmful:** A/B pricing tests require statistical significance — usually 1,000+ data points per variant. With 10 customers, pricing experiments produce noise, not signal. More importantly, premature pricing optimization locks in a model before you understand what your best customers actually value
- **What to do instead:** Charge 10 customers directly via invoice, concierge, or individual negotiation. Learn what they value and what they'll pay. Build a systematic pricing structure only after you have enough data to make it meaningful — typically after 50–100 paying customers

### 6. Confusing Revenue with Business Model

- **What it looks like:** "We make money from consulting + a SaaS tool + an events business" — three disconnected revenue streams treated as a "business model"
- **Why founders do it:** Multiple revenue streams feel diversified and safer. Each stream seems like "found revenue"
- **Why it's harmful:** Multiple disconnected revenue streams create operational complexity, dilute focus, and make unit economics impossible to calculate cleanly. More critically, investors look for a single scalable revenue engine — not a portfolio of small bets. Most successful companies have one primary revenue model, even if they have secondary streams
- **What to do instead:** Select ONE primary revenue model that aligns with your core value delivery. Secondary revenue streams (e.g., professional services as a bridge) are acceptable if explicitly labeled as temporary. Plan to wind down or make primary the one model that has the highest LTV:CAC

---

## Interconnections

### Inputs (what this skill receives from other skills)

| From Skill | Data Received | How It's Used |
|------------|---------------|---------------|
| Skill 01 (Idea Validation) | Validation verdict (GO), customer archetype with specific attributes, willingness-to-pay signals from interviews, competitor gap analysis, market size estimate | Used to select appropriate business model pattern, anchor value-based pricing, and define competitive alternatives |

### Outputs (what this skill produces for other skills)

| To Skill | Data Produced | Format |
|----------|---------------|--------|
| Skill 03 (Fundraising) | Revenue model type and rationale, unit economics (LTV, CAC, payback, LTV:CAC), pricing structure, competitive positioning map | Structured summary: model type + pricing tiers + unit economics calculation + positioning statement |
| Skill 04 (Go-to-Market) | Pricing for GTM strategy, channel economics (CAC by channel), competitive positioning for messaging | Channel-specific CAC targets + positioning statement for marketing copy |
| Skill 06 (Sales) | Value proposition for sales collateral, pricing tiers and upgrade triggers, competitive battle cards | Positioning statement + competitive alternative map + value delivery calculation |
| Skill 10 (Finance) | Revenue model for financial projections, unit economics assumptions, pricing assumptions | Model type + pricing inputs + LTV/CAC/churn assumptions for 3-year model |

### Context Passing

When this skill completes, pass the following to the orchestrator:

- **Revenue Model:** Selected model type with 1-sentence rationale
- **Pricing Structure:** Tier names, prices, and upgrade triggers
- **Unit Economics:** LTV, CAC, payback period, LTV:CAC — with confidence level (actual data / estimate)
- **Positioning Statement:** April Dunford format
- **Best-Fit Customer:** Specific segment that benefits most from the positioning
- **Open Questions:** Assumptions still unvalidated (e.g., churn rate estimated, not measured)

---

## Artifacts

### Business Model Summary

- **Type:** Analysis document
- **Generated when:** Workflow C (Unit Economics), Step 3
- **Format:** Follow `shared/artifact-format.md`
- **Sections:** Revenue Model Selection (model type, rationale, pattern reference), Pricing Structure (tiers, prices, upgrade triggers), Unit Economics (LTV, CAC, payback, LTV:CAC with formulas and assumptions), Competitive Positioning (alternative map, unique capabilities, positioning statement), Open Assumptions
- **Disclaimer:** General Disclaimer + Financial Disclaimer required.

### Pricing Analysis

- **Type:** Analysis document
- **Generated when:** Workflow B (Pricing Design), Step 2
- **Format:** Pricing table with tiers, limits, features, and value-based pricing rationale
- **Sections:** Value calculation, Tier design, Customer fit per tier, Van Westendorp results (if conducted)
- **Disclaimer:** General Disclaimer + Financial Disclaimer.

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.

> **Financial Disclaimer:** The financial projections, unit economics, and calculations in this document are estimates based on stated assumptions and industry benchmarks. They do not constitute financial advice. Actual results will vary based on market conditions, execution, and factors not captured in this model. Consult a qualified accountant or financial advisor before making financial decisions.
