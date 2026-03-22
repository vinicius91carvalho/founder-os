# Skill 06: Sales

> Build a repeatable revenue engine — from founder-led discovery calls through first sales hire to scalable team — using the right methodology for your deal size, cycle length, and buyer complexity.

---

## Diagnostic

Before giving advice, assess the founder's current sales stage. Ask these questions to route to the right workflow:

### State Assessment

| State | Description | Route To |
|-------|-------------|----------|
| **Founder-Led** | Founder is doing all selling; no playbook; closing deals through relationships and hustle | Workflow A |
| **First Hire** | Enough deal flow to justify a first sales hire; founder has closed 5–15 deals; pattern emerging | Workflow B |
| **Building Team** | First rep(s) hired; need to scale what's working; building training and process | Workflow C |
| **Scaling Engine** | 3+ reps, predictable pipeline; need pipeline management, forecasting, and optimization | Workflow D |

### Diagnostic Questions

1. Have you personally closed at least 10 deals without referrals or special circumstances — meaning your sales process is repeatable, not accidental?
2. Can you write down the exact steps of your sales process from first contact to signed contract in under 10 minutes?
3. If you hired a sales rep tomorrow, could you hand them a playbook they could follow on day one?
4. Do you know your average sales cycle length, average deal size, and the 3 most common objections in your pipeline?

### Routing Logic

```
IF fewer than 5 deals closed OR no documented process → Route to Workflow A (Founder-Led Sales)
ELIF 5–15 deals closed AND repeatable pattern exists BUT no sales hire → Route to Workflow B (First Sales Hire)
ELIF first rep(s) hired AND need to codify and scale → Route to Workflow C (Building the Team)
ELSE (3+ reps AND need pipeline discipline and forecasting) → Route to Workflow D (Scaling Engine)
```

---

## Workflows

### Workflow A: Founder-Led Sales — Build the Playbook

**Objective:** Close the first 10 deals, identify the repeatable pattern, and document it before attempting to hire.

**Steps:**

1. **Define your ideal customer profile (ICP)**
   - Action: Write one sentence describing who gets the most value from your product fastest. Include: company size, industry, buyer role, specific pain, and trigger event that prompts them to buy now.
   - Output: ICP definition (1–2 sentences, 5 attributes)
   - Decision point: If your existing customers look nothing like your ICP, validate ICP against your best customers' traits

2. **Map your sales process stages**
   - Action: Write down every stage from first contact to signed contract. Give each stage a name and define what must be true for a deal to advance to the next stage.
   - Output: 5–7 stage sales process with entry/exit criteria per stage
   - Checkpoint: Can you place every open deal in exactly one stage?

3. **Document the discovery call**
   - Action: Use the founder-led sales playbook (`templates/founder-led-sales-playbook.md`). Script the first 3 questions of every discovery call. The goal of discovery is to find or rule out pain — not to pitch.
   - Output: Discovery call script with 5–8 questions
   - Decision point: If you can't identify the pain in a 30-minute discovery call, disqualify the deal

4. **Build the objection library**
   - Action: Write down the 5 most common objections you hear. For each, write the reframe or counter. Share with future reps.
   - Output: Objection handling guide (5+ objections with responses)
   - Next: Use these in Workflow B for rep training

5. **Track what's working**
   - Action: After each closed deal, write 3 sentences: what triggered the purchase, what objection almost killed it, what made them choose you over doing nothing. This is your competitive intelligence.
   - Output: Win/loss notes per deal
   - Next: After 10 closed deals, look for the pattern — this becomes your sales playbook

### Workflow B: First Sales Hire — Transition from Founder to Rep

**Objective:** Hire a first sales rep who can replicate what the founder has learned, without the founder having to manage them microcosmically.

**Steps:**

1. **Decide who NOT to hire first**
   - Action: Do not hire a "VP of Sales" or an enterprise sales veteran for your first rep. Your first rep should be an Account Executive (AE) who will carry a quota, follow your playbook, and be managed closely.
   - Output: Job description for first sales hire (use specific criteria from playbook)
   - Decision point: If annual deal size is < $25K ACV, hire an inside AE; > $25K ACV, consider a field AE

2. **Document the playbook before hiring**
   - Action: Complete `templates/founder-led-sales-playbook.md` fully. A rep should be able to get through their first 10 conversations using this doc alone.
   - Output: Complete founder sales playbook
   - Checkpoint: Hand the playbook to someone who has never sold your product. Can they understand the ICP, the discovery script, and the objection responses without asking you questions?

3. **Define the quota and ramp plan**
   - Action: Set a realistic first-year quota. Month 1–3: ramp period (50% quota). Month 4–6: 75% quota. Month 7+: 100% quota. Quota should be 3–5x the rep's OTE (on-target earnings).
   - Output: Compensation plan and ramp schedule
   - Decision point: If 3x OTE is impossible based on deal size × close rate, fix your unit economics before hiring

4. **Establish a shadow program**
   - Action: Rep shadows founder on 10 calls in month 1. Rep runs 10 calls with founder silent in month 2. Rep runs independently in month 3.
   - Output: 90-day ramp plan with milestones
   - Next: After ramp, evaluate: is the rep closing at ≥ 70% of your close rate? If not, diagnose — playbook gap, ICP gap, or rep fit issue?

### Workflow C: Building the Sales Team — Scale What Works

**Objective:** Add 2–5 reps and make the playbook repeatable without the founder's involvement in every deal.

**Steps:**

1. **Choose and commit to a single sales methodology**
   - Action: Select MEDDIC, BANT, or Challenger based on your deal profile (see Frameworks and `templates/sales-methodology-selector.md`). Train all reps on the same framework.
   - Output: Methodology decision + training plan
   - Decision point: Mixing methodologies creates confusion; pick one and enforce it in CRM fields and pipeline reviews

2. **Build deal reviews into the cadence**
   - Action: Weekly pipeline reviews per rep (30 min). Review deals in CRM against methodology criteria. Reps who can't answer methodology questions about their top 5 deals are behind.
   - Output: Pipeline review cadence and format
   - Checkpoint: Every deal ≥ 25% of quota should have all methodology fields populated

3. **Create the prospecting engine**
   - Action: Build outreach sequences using `templates/cold-outreach-sequences.md`. Measure open rate, reply rate, and meeting rate per sequence. A/B test subject lines and openers.
   - Output: Active outreach sequences for each ICP segment
   - Next: Review sequence metrics weekly; kill sequences with meeting rate < 1% after 100 contacts

4. **Define success metrics per rep**
   - Action: Metrics every rep should know about themselves: number of dials/week, email open rate, meeting-to-opportunity rate, opportunity-to-close rate, average sales cycle, average deal size.
   - Output: Rep scorecard template
   - Next: Share metrics in weekly team meeting; reps in bottom quartile get coaching plan

### Workflow D: Scaling Engine — Pipeline Management and Forecasting

**Objective:** Create a predictable revenue engine with accurate forecasting and consistent rep performance across a team of 5+.

**Steps:**

1. **Establish forecast categories**
   - Action: Define categories for every deal in CRM: "Commit" (closes this period ≥ 90% confidence), "Best Case" (could close this period, 50–89% confidence), "Pipeline" (future periods), "Omitted" (stalled/dead).
   - Output: CRM pipeline stage and forecast category definitions
   - Decision point: Founders who cannot forecast within 20% accuracy are not ready to raise a Series A

2. **Build the weekly sales operating rhythm**
   - Action: Monday: rep self-reviews and updates CRM. Tuesday: manager reviews pipeline. Wednesday: deal strategy calls on at-risk deals. Friday: forecast call to leadership.
   - Output: Weekly calendar template for sales team
   - Checkpoint: Every deal in "Commit" should have a next step (meeting, proposal review, or signature) scheduled

3. **Implement a quota attainment dashboard**
   - Action: Track for every rep: % of quarterly quota attained (updated weekly), pipeline coverage ratio (pipeline value / remaining quota — should be 3–4x), and deal count in each stage.
   - Output: Sales dashboard (metrics connected to CRM)
   - Next: Reps at < 50% of quota at the mid-quarter mark need intervention immediately — do not wait for quarter end

---

## Frameworks

### MEDDIC

**Source:** Dick Dunkel and Jack Napoli, PTC (1990s); widely adopted in enterprise SaaS
**When to use:** Complex B2B deals with multiple stakeholders, long sales cycles (3+ months), deal sizes > $25K ACV

**Components:**

| Letter | Component | What it means | Discovery question |
|--------|-----------|--------------|-------------------|
| **M** | Metrics | Quantified business impact the customer expects | "What does success look like in numbers? What metric will you track?" |
| **E** | Economic Buyer | The person who controls budget and can say yes without committee approval | "Who approves the budget for this type of purchase?" |
| **D** | Decision Criteria | The formal and informal criteria the buyer uses to evaluate vendors | "What are the top 3 things you're evaluating in this decision?" |
| **D** | Decision Process | The steps and timeline from evaluation to signed contract | "Walk me through your internal process once you've chosen a vendor." |
| **I** | Identify Pain | The specific business problem that creates urgency to buy | "What happens if you don't solve this problem in the next quarter?" |
| **C** | Champion | The internal advocate who wants you to win and will fight for you | "Who on your team is most excited about solving this problem?" |

**MEDDIC disqualification rule:** If you cannot identify both the Champion and the Economic Buyer within 2 calls, the deal is not qualified. Do not invest in a proposal or demo without this.

**Example application:**
> Metrics: "They said solving this will save the ops team 10 hours/week at $75/hr = $39K/year savings"
> Economic Buyer: CFO (confirmed in call 2 — signs anything > $20K)
> Champion: Head of Operations (requested the demo, has pain)
> Decision Criteria: Integration with Salesforce (required), ease of implementation, price within budget
> Decision Process: Technical evaluation by IT → ops team sign-off → CFO approval. 6-week process.
> Pain: "Reports take 2 days to compile manually; CFO wants them in real-time for board meetings"

### BANT

**Source:** IBM (1950s); adapted for modern sales by HubSpot
**When to use:** Shorter sales cycles, lower deal sizes (< $25K ACV), transactional B2B or SMB sales

**Components:**

| Letter | Component | Threshold for "qualified" |
|--------|-----------|--------------------------|
| **B** | Budget | Has explicit budget allocated OR strong business case to get it |
| **A** | Authority | Contact can make the decision or directly influences the person who can |
| **N** | Need | Has a specific, urgent problem your product solves |
| **T** | Timeline | Has a specific timeframe (within 90 days) for a decision |

**BANT qualification threshold:**
- Score each component 0/1 (qualified/not qualified)
- **3/4 or 4/4:** Qualified — advance in pipeline
- **2/4:** Needs nurturing — add to a sequence and revisit in 30 days
- **1/4 or 0/4:** Disqualify now — do not invest sales time

**BANT vs. MEDDIC:**
- BANT is a filter (are they ready to buy?) — used for inbound lead qualification
- MEDDIC is a map (how do we win?) — used for active complex deal management
- Use BANT to qualify inbound leads quickly; use MEDDIC to manage enterprise deals

### Challenger Sale

**Source:** Matthew Dixon and Brent Adamson, CEB Research (2011)
**When to use:** Market categories where buyers don't know they have the problem; selling to status quo; differentiating from "do nothing"

**The Three Seller Profiles (CEB research across 6,000 reps):**

| Profile | Approach | Deal performance |
|---------|---------|----------------|
| Relationship Builder | Builds rapport, is accommodating | Average |
| Hard Worker | Works harder than everyone, persistent | Average |
| Lone Wolf | Follows own instincts, ignores process | High risk/high reward |
| Reactive Problem Solver | Focuses on solving post-sale problems | Average |
| **Challenger** | Teaches, tailors, takes control | Best performer — especially in complex sales |

**Challenger Sale Process (Teach-Tailor-Take Control):**

1. **Teach:** Lead with insight the buyer didn't know before. Show them a problem or opportunity they can't see. This creates urgency that didn't exist before your call.
   - "Most [role] we talk to are losing 15% of deals to a competitor you may not be tracking..."

2. **Tailor:** Connect your insight to the specific buyer's role, business, and metrics. Generic pitches fail. Challenger reps customize the narrative.
   - "For a company at your stage with [specific condition], the impact is usually [specific consequence]..."

3. **Take Control:** Guide the conversation, handle pushback directly, and advance to the next step assertively. Don't capitulate on pricing; do redirect objections.
   - "I understand that price is a concern — let's talk about what this costs if the problem goes unsolved for another quarter..."

**When Challenger works best:** When you're creating a category, displacing a legacy solution, or selling to status quo. It works poorly in transactional or highly commoditized markets where price wins.

---

## Templates

| Template | File | Purpose |
|----------|------|---------|
| Founder-Led Sales Playbook | `templates/founder-led-sales-playbook.md` | Complete playbook for founders doing their own selling |
| Cold Outreach Sequences | `templates/cold-outreach-sequences.md` | Email and LinkedIn sequences with timing and metrics |
| Sales Methodology Selector | `templates/sales-methodology-selector.md` | Decision tree to choose MEDDIC, BANT, or Challenger |
| MEDDIC/BANT/Challenger Compared | `frameworks/meddic-bant-challenger.md` | Side-by-side comparison with when to use each |

---

## Decision Trees

### Decision 1: Which Sales Methodology Should I Use?

```
START: What is your average deal size?
│
├─ < $10K ACV (SMB/transactional) →
│   └─ BANT for lead qualification
│       └─ No complex methodology needed — volume + speed is the game
│
├─ $10K–$50K ACV (mid-market) →
│   └─ Is your sales cycle > 60 days?
│       ├─ YES → MEDDIC (complex, multi-stakeholder)
│       └─ NO → BANT for qualification, basic MEDDIC elements for larger deals
│
└─ > $50K ACV (enterprise) →
    └─ Are buyers aware they have the problem you solve?
        ├─ YES → MEDDIC (execution and stakeholder management)
        └─ NO → Challenger (create the problem before solving it), then MEDDIC to close
```

### Decision 2: Is This Deal Worth Pursuing?

```
START: Run through BANT qualification
│
├─ 3–4 BANT criteria met →
│   └─ Is average deal size ≥ 3x cost of sales time to close?
│       ├─ YES → Advance deal
│       └─ NO → Route to self-serve or lower-touch process
│
├─ 2 BANT criteria met →
│   └─ Add to nurture sequence (automated), do NOT invest AE time
│
└─ 0–1 BANT criteria met →
    └─ Disqualify. Log in CRM as "Disqualified — [reason]". Move on.
```

### Decision 3: Am I Ready to Hire My First Sales Rep?

```
START: Have you closed 10+ deals yourself?
│
├─ NO → Not ready. Close 10 more deals. Document every step.
│
└─ YES →
    └─ Can you write the sales process in under 30 minutes?
        ├─ NO → Document the process first. Then evaluate hiring.
        └─ YES →
            └─ Is your CAC payback < 18 months?
                ├─ NO → Fix unit economics before adding sales cost
                └─ YES →
                    └─ Do you have enough inbound to fill a rep's pipeline?
                        ├─ YES → Ready to hire
                        └─ NO → Build outbound engine first, or hire a rep who is strong at self-prospecting
```

### Decision 4: Is a Deal Stuck or Dead?

```
START: How long has the deal been in the current stage?
│
├─ Less than 1.5× average stage duration → Normal — continue working it
│
├─ 1.5–2× average stage duration →
│   └─ Is there a next step (meeting, demo, proposal) on the calendar?
│       ├─ YES → Deal is progressing slowly but not stalled
│       └─ NO → Stalled. Run a "takeaway close": "It seems like timing might not be right. Should we pause for 90 days and reconnect?"
│
└─ > 2× average stage duration →
    └─ Can you reach your Champion?
        ├─ YES → Have a direct conversation about the real obstacle
        └─ NO → Deal is likely dead. Move to "Omitted" in forecast. Do a final breakup email.
```

---

## Anti-Patterns

### 1. Pitching Before Discovering

- **What it looks like:** Founder demos the product within the first 10 minutes of a call before understanding the prospect's specific problem.
- **Why founders do it:** They're excited about the product; demos feel productive.
- **Why it's harmful:** You never learn if the prospect has the pain you solve. You waste a demo on a non-buyer. When they don't buy, you don't know why.
- **What to do instead:** Spend the first 20 minutes of every first call asking questions. The rule: prospects should talk 70% of a discovery call. Only demo when you've confirmed a specific pain that your demo will address.

### 2. Hiring a VP of Sales Too Early

- **What it looks like:** Founder raises a seed round, immediately hires a VP of Sales from a larger company to "build the sales function."
- **Why founders do it:** Feels like a grown-up move; VCs sometimes push it.
- **Why it's harmful:** A VP of Sales from a mature company expects a playbook, a team, and a pipeline to manage — not to create them. Mis-hire costs $200K–$400K and 12+ months. Almost always ends in a fire within 18 months.
- **What to do instead:** Hire an Account Executive who will carry quota. Get to $1–2M ARR with 2–3 AEs. Then hire a VP of Sales to scale a working process, not to discover one.

### 3. The Zombie Pipeline

- **What it looks like:** CRM has 50 open deals, but when you review them, 30 haven't had any activity in 60+ days. They're "open" because no one closed them as lost.
- **Why founders do it:** Closing deals as lost feels like admitting failure. It's psychologically easier to leave them open.
- **Why it's harmful:** Your pipeline and forecast are lies. You build a false sense of security about revenue. You waste time following up on deals that are dead.
- **What to do instead:** Implement a "no activity in 30 days = at risk" flag. Review at-risk deals weekly. Run a breakup email — it either revives the deal or kills it cleanly. A clean pipeline is worth more than a full-looking one.

### 4. Discounting to Close

- **What it looks like:** Prospect says "can you do 20% off?" Founder immediately says yes without understanding why the prospect is asking.
- **Why founders do it:** Fear of losing the deal; uncertainty about true price elasticity.
- **Why it's harmful:** You train buyers to always ask for discounts. You compress margins. You set a precedent that cascades through renewals and expansions. You attract the wrong customers.
- **What to do instead:** Always ask "what's driving the price concern?" before offering any discount. Most objections are about perceived value, not actual budget. If you do discount, get something in return (longer contract, logo use, case study, faster signature).

### 5. Treating All Prospects Equally

- **What it looks like:** Sales team spends equal time on a $500 deal and a $50,000 deal because "every customer matters."
- **Why founders do it:** Fear of appearing rude to smaller prospects; egalitarian instinct.
- **Why it's harmful:** Your CAC is driven by time-per-deal. Spending 10 hours to close a $500 deal has a worse ROI than self-serve. You are literally burning money.
- **What to do instead:** Segment your pipeline by deal size. Deals below a threshold go to a low-touch or self-serve track. Only deals above the threshold get AE time. Define the thresholds based on your unit economics.

### 6. No Clear Next Step at the End of Every Call

- **What it looks like:** Call ends with "let me know if you have any questions." No follow-up scheduled. Rep waits for the prospect to re-engage.
- **Why founders do it:** Doesn't want to be pushy; assumes interested prospects will follow up.
- **Why it's harmful:** Prospects are busy. Without a concrete next step on the calendar, deals stall and die. The initiative stays with the buyer.
- **What to do instead:** Every call must end with a specific next step on the calendar before you hang up. "Let's get 30 minutes scheduled for Thursday at 2pm to walk through the proposal." The deal advances only when the next meeting is booked.

### 7. Skipping Founder-Led Sales Phase

- **What it looks like:** Technical founder builds the product, then hires a sales team to sell it without ever having sold it themselves.
- **Why founders do it:** "I'm not a sales person." "I should focus on product."
- **Why it's harmful:** Without selling it yourself, you don't know the real objections, the real ICP, or the real sales cycle. You cannot evaluate sales reps, coach them, or build a playbook. Your first sales hire will fail because there's nothing to follow.
- **What to do instead:** Every founder must sell the product to the first 10–20 customers. This is non-negotiable. You will learn more about your market in 20 sales calls than in 200 customer surveys.

---

## Interconnections

### Inputs (what this skill receives from other skills)

| From Skill | Data Received | How It's Used |
|------------|---------------|---------------|
| Skill 02 (Business Model) | Value proposition, pricing strategy, competitive positioning | Sales messaging and objection handling grounded in real differentiation |
| Skill 04 (Go-to-Market) | ICP definition, channel strategy, pipeline channel sources | Defines who to prospect and through which channels; GTM channels feed sales pipeline |
| Skill 05 (Product) | Product demo script, feature-benefit mapping, roadmap | Demo narrative; what to promise on the roadmap to close deals |
| Skill 07 (Marketing & Brand) | Sales collateral, messaging alignment, content for sequences | Email sequences link to content; sales uses marketing assets in outreach |

### Outputs (what this skill produces for other skills)

| To Skill | Data Produced | Format |
|----------|---------------|--------|
| Skill 07 (Marketing & Brand) | Sales messaging alignment — what language actually resonates with buyers | Verbatim objections and customer language from call notes |
| Skill 08 (Growth & Analytics) | Conversion funnel metrics — MQL to SQL, SQL to opportunity, opportunity to close, close rate | Stage-by-stage conversion rates from CRM |

### Context Passing

When this skill completes, pass the following to the orchestrator:
- Sales methodology selected (MEDDIC/BANT/Challenger) with rationale
- ICP definition (5 attributes)
- Sales process stages with entry/exit criteria
- Average deal size, average sales cycle length, and close rate
- Top 3 objections and reframes
- Pipeline stage counts and values (for downstream forecasting in Skill 10)
- Founder-to-team transition readiness verdict (GO/NOT YET/BLOCKED)

---

## Artifacts

### Founder Sales Playbook Artifact

- **Type:** Process document
- **Generated when:** Workflow A Step 5 completes
- **Format:** Follow `templates/founder-led-sales-playbook.md`
- **Sections:** ICP, sales stages, discovery script, objection library, win/loss patterns
- **Disclaimer:** General Disclaimer

### Pipeline Metrics Report

- **Type:** Analysis report
- **Generated when:** Workflow D Step 3 completes
- **Format:** Tabular metrics report
- **Sections:** Pipeline by stage, conversion rates, quota attainment by rep, forecast vs. actual
- **Disclaimer:** General Disclaimer; Financial Disclaimer for revenue projections

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
