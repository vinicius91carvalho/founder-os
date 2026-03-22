# Fundraising

> Help founders prepare for, navigate, and close a funding round — from determining whether to raise at all through round sizing, investor outreach, pitch preparation, and term negotiation.

---

## Diagnostic

Before giving advice, assess the founder's current state in fundraising. Ask these questions to route to the right workflow:

### State Assessment

| State | Description | Route To |
|-------|-------------|----------|
| **Pre-Raise** | Founder is considering fundraising but hasn't decided on amount, instrument, or timeline. May not know if they should raise at all | Workflow A: Raise Decision |
| **Preparing** | Founder has decided to raise, knows the rough amount, but hasn't built materials (deck, data room) or identified investor targets | Workflow B: Raise Preparation |
| **Raising** | Founder has materials ready and is actively running the fundraising process — taking meetings, following up, building momentum | Workflow C: Active Raise |
| **Negotiating** | Founder has received a term sheet or verbal commitment and is evaluating terms, comparing offers, and preparing to close | Workflow D: Term Negotiation |

### Diagnostic Questions

1. **"Have you decided how much to raise and why that amount?"** — Distinguishes Pre-Raise (no amount) from Preparing (amount set). If the answer is "as much as I can get" or "whatever the market gives me," route to Workflow A — they haven't done the math.
2. **"Do you have a deck, a financial model, and a target investor list?"** — Distinguishes Preparing from Raising. All three required before starting outreach.
3. **"Are you currently in active conversations with investors?"** — Distinguishes Preparing from Raising. Active meetings = Workflow C.
4. **"Have you received a term sheet?"** — Distinguishes Raising from Negotiating. If yes, route to Workflow D immediately — term sheets expire.

### Routing Logic

```
IF founder hasn't decided whether/how much to raise
→ Route to Workflow A (Raise Decision)

ELIF founder has decided to raise but doesn't have complete materials
→ Route to Workflow B (Raise Preparation)

ELIF founder has materials and is in active investor conversations
→ Route to Workflow C (Active Raise)

ELIF founder has received a term sheet or verbal commitment
→ Route to Workflow D (Term Negotiation)
```

---

## Workflows

### Workflow A: Raise Decision (Pre-Raise → Committed to Round)

**Objective:** Determine whether to raise venture capital, how much to raise, and what milestones the capital should fund — before approaching any investor.

**Steps:**

1. **Decide whether venture capital is right for this business**
   - Action: Answer the VC fitness test: (a) Does the business have the potential for a $1B+ exit? (b) Can revenue grow 10× in 3 years? (c) Are you willing to give up control and accept external governance? (d) Are you building for scale, not lifestyle? If any answer is no, VC may not be appropriate
   - Output: Written decision: "We are / are not appropriate for venture capital" with rationale
   - Decision point: If VC is not appropriate, explore: revenue-based financing, angel capital, SBIR grants, bootstrapping, or a smaller strategic seed. Each has different return expectations and governance implications
   - Checkpoint: VC backing means you are implicitly committed to a $100M+ exit. Many $5M–$20M exit businesses are not appropriate VC investments but are excellent businesses. Know which you are

2. **Size the round based on milestones, not dilution targets**
   - Action: Define the next fundable milestone — the specific, measurable state your company needs to reach to raise the next round at 3–5× the current valuation. Examples: $1M ARR for Series A, product-market fit score > 40% for seed extension. Calculate the budget required to reach that milestone. Add 20% buffer for unexpected delays. Round size = milestone budget + 20%
   - Output: Round size with milestone justification — "We need $2.5M to reach $750K ARR, which is our Series A threshold based on current conversion rates and CAC"
   - Checkpoint: Round size should give you 18–24 months of runway to the next milestone. Less than 18 months means you'll be raising again before you've proven the milestone. More than 24 months often means you're raising too much at too high a dilution cost

3. **Model dilution and cap table impact**
   - Action: Use a cap table model. At seed: typical dilution is 15–25% per round. At Series A: 20–30%. Model the full dilution path from seed through exit: if you raise seed at 20%, Series A at 25%, Series B at 20%, and sell at $100M — what does each shareholder receive? Are founders still motivated after dilution?
   - Output: Cap table model with pre/post-money ownership through Series A, showing founder ownership at exit
   - Decision point: If founder ownership after two rounds would be < 30% combined, reconsider round sizing or valuation expectations
   - Next: Proceed to Workflow B with round size, milestone definition, and cap table model

### Workflow B: Raise Preparation (Decided → Materials Ready)

**Objective:** Build a 10-slide deck, financial model, and investor target list before making a single outreach call.

**Steps:**

1. **Build the 10-slide deck**
   - Action: Use `templates/pitch-deck-10-slide.md`. The standard structure: (1) Title, (2) Problem, (3) Solution, (4) Market, (5) Business Model, (6) Traction, (7) Team, (8) Competition, (9) Financials, (10) Ask. Each slide serves one purpose — do not mix topics
   - Output: Complete 10-slide deck in shareable format (PDF + live presentation)
   - Checkpoint: Review against the Sequoia/YC criteria: Is the problem clearly painful (not just annoying)? Is the market large (not just niche)? Is the traction meaningful (not just early signups)? Is the team credibly expert? Can you defend every number on slide 9?

2. **Prepare the data room**
   - Action: Compile due diligence materials in a shared folder (Notion, Google Drive, or Docsend). Include: cap table, financial model (3-year projection), customer contracts or LOIs, team bios with LinkedIn, incorporation documents, IP assignments, any outstanding liabilities
   - Output: Data room ready to share within 24 hours of a term sheet request
   - Checkpoint: Cap table must be clean. If there are informal agreements, handshake equity, or undocumented promises, resolve them before the data room goes out — they will surface in diligence and create distrust

3. **Build the investor target list**
   - Action: Use `templates/investor-outreach.md`. Build a tiered list: (a) Tier 1: Dream investors — strong thesis match, warm introduction possible, wrote a blog post or tweet about your problem, (b) Tier 2: Strong match — thesis alignment, no warm intro but reachable, (c) Tier 3: No-harm — meeting is useful for practice but not a likely lead. Target 50–75 total names (20 Tier 1, 30 Tier 2, 25 Tier 3)
   - Output: Investor list with contact method, warm intro path (or none), thesis alignment note
   - Decision point: Start outreach with Tier 2 (not Tier 1). Pitch meetings improve significantly in the first week. Don't waste your best shots while you're still polishing your delivery
   - Next: Proceed to Workflow C with deck ready, data room prepared, and investor list organized

### Workflow C: Active Raise (Materials Ready → Closing)

**Objective:** Run a structured 4–8 week fundraising process that creates competitive tension and reaches a close before momentum fades.

**Steps:**

1. **Create batched urgency**
   - Action: Do NOT approach investors one at a time. Batch outreach in 2 waves: Wave 1 (Tier 2, first 25 investors) → all sent within 48 hours. Create a soft deadline 4 weeks out — not fabricated, but real: "We're targeting to close by [date] to hit our Q[X] goals." Wave 2 (Tier 1 + remaining Tier 2) sent 2 weeks in, after early meetings provide feedback to sharpen the deck
   - Output: CRM tracking all investor contacts — last contact date, next step, meeting status, feedback
   - Checkpoint: If you approach investors one at a time without a deadline, every conversation becomes individual and you can't create competitive dynamics. Creating a real close date is the single most important process decision

2. **Run meetings with signal-seeking discipline**
   - Action: In the first meeting, extract: (a) Does the investor have a thesis match for this space? (b) What would they need to see to write a check? (c) What's their process after this meeting? A first meeting without these answers was informational, not a fundraising meeting
   - Output: Post-meeting notes with: thesis fit (YES/NO/MAYBE), specific objection or hesitation, stated next step, timeline to decision
   - Checkpoint: After every meeting, update your deck based on the most common objection. If 5 investors raise the same concern, it's a signal — address it in the deck or in your narrative, not just verbally in the meeting

3. **Drive to a term sheet**
   - Action: After a positive second meeting, ask directly: "What would it take to get to a term sheet from you?" Silence is not a soft yes — it is a soft no. Push investors to a clear next step or a clear "not for us." A no from a serious investor who explained their reasoning is more valuable than a "we're still thinking about it" that drags on for 6 weeks
   - Output: Investor status map: (1) Actively interested, (2) Due diligence pending, (3) Soft no, (4) Hard no
   - Next: First term sheet received → immediately trigger Workflow D. Multiple term sheets → run Workflow D with leverage

### Workflow D: Term Negotiation (Term Sheet → Close)

**Objective:** Evaluate, negotiate, and close a funding round on terms that are fair to founders while protecting investor interests — using the SAFE or priced round mechanics correctly.

**Steps:**

1. **Evaluate the term sheet**
   - Action: Use `templates/safe-terms-guide.md` and `frameworks/vc-decision-criteria.md` to analyze: (a) Valuation — is the pre-money valuation fair given your stage and traction? (b) Economics — are pro-rata rights, liquidation preferences, and anti-dilution terms standard? (c) Control — what board seats and protective provisions does the investor require? (d) SAFE mechanics if pre-priced
   - Output: Term sheet analysis with each provision categorized: (a) market-standard (accept), (b) negotiable (counter), (c) founder-unfriendly (push back hard)
   - Checkpoint: Do NOT sign a term sheet without independent legal counsel. $5,000 in legal fees now prevents $500,000 in problems later. This is the point where every founder needs a startup-experienced attorney

2. **Negotiate the non-standard terms**
   - Action: For each non-standard term, know your walk-away position before negotiating. Priority order for pushback: (1) Participating preferred (liquidation preference + equity participation — strongly resist), (2) Multiple liquidation preference (> 1× — strongly resist), (3) Board composition (maintain founder majority at seed), (4) Anti-dilution ratchet (broad-based weighted average is standard; full ratchet is not), (5) Pro-rata rights (acceptable at seed; manage at Series A)
   - Output: Redlined term sheet with specific counter-proposals
   - Decision point: Do not negotiate every term — pick 2–3 that matter most and concede the rest. Over-negotiating kills deals and sets a hostile tone for a 7–10 year relationship

3. **Close the round**
   - Action: Circulate SAFE or stock purchase agreements. Collect signatures and wire transfers. Update cap table. File IRS 83(b) elections within 30 days if applicable. Announce publicly once all funds are received
   - Output: Signed documents, updated cap table, cleared funds in company account
   - Decision point: Do not announce the round until funds are received. Verbal commitments are not funding. Wires that are "in transit" are not funding. Funds in your bank account are funding
   - Next: Round closed → proceed to Skill 09 (Operations) to allocate capital against milestones. Update Skill 10 (Finance) with new runway.

---

## Frameworks

### VC Decision Criteria (How Investors Actually Evaluate Deals)

**Source:** Kauffman Foundation study, First Round Capital internal data, Andreessen Horowitz partner discussions
**When to use:** Workflow B — understanding what investors optimize for, to build your materials accordingly

**What venture returns require:**
- VC funds target 3× fund return (net of fees and carry)
- A $100M fund needs $300M in realized returns
- With a typical 20-company portfolio where 1–2 companies drive all returns, each "winner" must return $150M–$300M
- Therefore: investors are looking for companies with a credible path to a $500M–$1B+ exit

**How VCs evaluate deals (priority order based on post-mortems):**
1. **Founder quality** (weighted most heavily at early stage): domain expertise, tenacity evidence, self-awareness, coachability. Kevin Hale: "Investors fund founders, not ideas."
2. **Market size**: TAM must be ≥ $1B for VC scale. The company doesn't need to capture all of it — but the ceiling must be high
3. **Traction** (proof that the hypothesis is working): revenue growth rate, customer count, retention, NPS. "Traction is the most honest signal of PMF"
4. **Product** (often evaluated third or later — not first): differentiation, defensibility, technical moat
5. **Business model**: unit economics, gross margin, CAC payback, expansion revenue

**What VCs do NOT optimize for:**
- DCF (discounted cash flow) — almost irrelevant at early stage. Projections are not trusted
- Current revenue absolute level — rate of change matters more than absolute
- Profitability — early-stage growth companies are expected to burn capital

**Return math VCs run:**
- Cash-on-cash (CoC) multiple: "If I invest $1M, what multiple of that do I get back?" 63% of VC returns come from companies with CoC > 10×
- IRR (Internal Rate of Return): 42% of fund returns come from investments with IRR > 50%. Fast exits with high multiples beat slow exits
- Most VCs do NOT build complex DCF models for early-stage deals — the uncertainty makes them meaningless

### 10-Slide Sequoia/YC Hybrid Structure

**Source:** Sequoia Capital "Writing a Business Plan" framework + YC pitch format
**When to use:** Workflow B — building the pitch deck

**Slide-by-slide criteria:**

| Slide | Title | Purpose | Common mistake |
|---|---|---|---|
| 1 | Company + Tagline | Orient the investor. One-liner: "We are [company] — [what you do in one sentence]" | Jargon-heavy tagline that requires decoding |
| 2 | Problem | Make the pain visceral. Use a specific customer story or specific data point. "10 hours per week. Every week. For 3 years. That's what Jane (ops manager) spent on this before us." | Generic "the market is inefficient" framing — zero emotional resonance |
| 3 | Solution | Show, don't tell. Product demo screenshot or flow. One clear benefit statement. | Feature list. No one cares about features — show the outcome |
| 4 | Market | TAM / SAM / SOM with bottom-up math, not top-down estimates. "The global X market is $Y billion" is a red flag — it means you Googled a market report | Only citing top-down TAM without a defensible bottoms-up calculation |
| 5 | Business Model | How you make money. LTV, CAC, payback period if you have the data. Revenue model in one sentence | "We'll figure out monetization later" OR complex diagrams explaining multiple revenue streams |
| 6 | Traction | The most important slide for companies with traction. Show: MoM growth rate, ARR, customer count, retention, NPS. If pre-revenue: LOIs, waitlist signups, pilot customers, interview quotes | Vanity metrics (total signups without active users), or comparing to a non-comparable benchmark |
| 7 | Team | Bios that answer: "Why are these the right people for this specific problem?" Domain expertise > credentials > pedigree | Listing company names without describing what you learned there that's relevant |
| 8 | Competition | Use a 2×2 with axes that you win. Name specific competitors, don't say "no competition" — that means no market. Explain specifically why you win | 2×2 where all competitors cluster in the bottom-left and you're the only top-right company (investors have seen 1,000 of these) |
| 9 | Financials | 3-year projections with key assumptions visible. Don't project beyond 3 years. Month-by-month for year 1. Show: revenue, burn, headcount, and the key milestones the model assumes | Precision that implies false confidence ("revenue will be $4,237,500 in year 2") |
| 10 | Ask | Be specific: "We are raising $[X] at $[Y] pre-money valuation via SAFE. Use of funds: [3-4 specific uses]. Milestone: [what we'll achieve]" | Vague ask: "We're raising a seed round" without amount, instrument, or milestone |

### Outreach Hierarchy

**Source:** First Round Capital, YC, and multiple accelerator program guidance
**When to use:** Workflow B Step 3 / Workflow C Step 1

Priority order (highest to lowest probability of meeting → investment):

1. **Portfolio company CEO referral** — An investor's portfolio CEO says "you should meet this founder." Conversion to meeting: ~80%. This is 5–10× more effective than any other channel
2. **Co-investor or syndicate member referral** — An investor you've already spoken to refers you to another. Conversion: ~60%
3. **Accelerator network referral** (YC, Techstars, a16z Speedrun) — Warm intro through program. Conversion: ~50%
4. **Mutual LinkedIn connection warm intro** — A professional connection makes a specific intro. Conversion: ~30%
5. **Cold email with high relevance signal** — "I read your post about [specific topic] and our company is exactly the scenario you described." Conversion: ~5–15% if highly specific
6. **Cold email through AngelList / Crunchbase** — Generic pitch email. Conversion: < 2%

**Implication:** If you have no warm introduction to Tier 1 investors, your first priority is finding a path to one — through accelerators, a strong advisor, a portfolio company connection, or a co-investor referral.

---

## Templates

| Template | File | Purpose |
|----------|------|---------|
| 10-Slide Pitch Deck | `templates/pitch-deck-10-slide.md` | Complete slide template with content prompts |
| Investor Outreach Sequence | `templates/investor-outreach.md` | Email templates, timing, and CRM tracking structure |
| SAFE Terms Guide | `templates/safe-terms-guide.md` | SAFE mechanics, key terms, and negotiation guidance |
| VC Decision Criteria | `frameworks/vc-decision-criteria.md` | How investors evaluate early-stage deals |

---

## Decision Trees

### Should I raise venture capital or bootstrap?

```
START: Is your target exit size ≥ $100M?
│
├─ YES → Can the business grow to that size without external capital?
│   ├─ YES (high margin, capital-efficient) → BOOTSTRAP is viable.
│   │   Consider: do you prefer the control and economics of bootstrapping,
│   │   or the resources and speed of venture capital?
│   └─ NO (capital-intensive, marketplace, hardware) → RAISE is likely required
│       to reach the scale needed for a meaningful exit
│
└─ NO → VC is probably not right for this business
    ├─ < $10M exit potential → Bootstrap, lifestyle business
    ├─ $10M–$100M exit potential → Angel capital, revenue-based financing,
    │   or strategic investment. VC funds need > $300M returns across portfolio —
    │   a $50M exit is not meaningful to a $100M fund
    └─ Uncertain → Run the math: (target exit) × (your ownership post-dilution)
        = your actual outcome. Make sure it's worth the governance trade-offs
```

### SAFE vs. priced round: which instrument to use?

```
START: What stage are you raising for?
│
├─ PRE-SEED (< $2M, pre-revenue or very early) → SAFE is almost always right
│   ├─ Simple, low legal cost ($2,000–$5,000 vs. $20,000+ for priced round)
│   ├─ No immediate board seats or governance
│   ├─ Use YC's standard SAFE — don't customize the template
│   └─ Valuation cap sets the conversion price; post-money SAFEs are standard
│
├─ SEED ($1M–$5M, early traction) → Either can work
│   ├─ SAFE: Use if round is small, investor list is diverse (many small checks),
│   │   or you want to close quickly
│   └─ PRICED ROUND: Use if lead investor requires it, deal is large (> $3M),
│       or you want to establish a clean cap table before Series A
│
└─ SERIES A ($5M+, meaningful traction) → Priced round is expected
    ├─ Lead investor will typically require a priced round
    ├─ Board seat negotiation is required and appropriate
    └─ Prior SAFE holders convert at this round — cap table cleanup needed
```

### How do I respond to a below-expectations term sheet?

```
START: Is the valuation more than 30% below your expectations?
│
├─ YES → Do you have competing term sheets or strong competing interest?
│   ├─ YES → Use competing interest to drive valuation up. Do not accept
│   │   first offer unless it's excellent
│   └─ NO → Evaluate: is this investor's value-add (network, expertise, signal)
│       worth the valuation gap? 1 excellent investor at a lower valuation
│       often beats 1 mediocre investor at a higher valuation
│
└─ NO (within 30% of expectations) → Is the structure standard?
    ├─ YES (non-participating preferred, 1× liquidation, standard anti-dilution)
    │   → Negotiate valuation only. Don't re-trade structure terms
    └─ NO (participating preferred, > 1× liquidation, broad control provisions)
        → Address structure first — structure terms have larger impact than
          valuation on founder outcomes at typical exit sizes
```

---

## Anti-Patterns

### 1. Raising Too Early (Pre-PMF, Pre-Traction)

- **What it looks like:** Founder spends 3 months pitching investors before achieving any meaningful traction — no paying customers, no strong retention signals, no validated unit economics
- **Why founders do it:** Social pressure ("everyone else is raising"), impatience to accelerate, desire to prove the idea is "real"
- **Why it's harmful:** Investors at every stage see dozens of companies per week. Without traction, your deal looks like any other early-stage bet. You burn your best investor relationships before you have the evidence that makes those relationships close. Most importantly: time spent pitching is time not spent building
- **What to do instead:** Define the minimum traction threshold that makes your story compelling (typically: $20–50K MRR, 3–5 design partners, or a specific waitlist with conversion evidence). Hit that threshold before pitching. Every $1 of revenue you add before raising increases your valuation more than any pitch improvement

### 2. Raising the Wrong Amount

- **What it looks like:** Founder raises "as much as possible" without calculating the milestone budget, or raises a "comfortable amount" without verifying it achieves the next fundable milestone
- **Why founders do it:** More money feels like more safety margin. It's also easier to accept a large check without justifying it
- **Why it's harmful:** Raising too much at seed means excessive dilution before you know if the company works. Raising too little means you run out of runway before hitting the milestone needed to raise the next round. Both cause real harm
- **What to do instead:** Work backwards from the milestone. Calculate what it costs to reach the milestone. Add 20% buffer. That's your round size. If investors want to give you more at the same valuation, consider whether accepting it costs too much dilution

### 3. Pitching One Investor at a Time

- **What it looks like:** Founder gets a warm introduction to Investor A, pitches them, waits 3 weeks for a response, then moves to Investor B
- **Why founders do it:** Sequential feels more respectful. It feels like "focusing." And founders often want to get the "best" investor before moving on
- **Why it's harmful:** VC decision-making has social dynamics — investors are more likely to move quickly when they believe others are also interested. Sequential outreach removes all competitive tension. It also extends the fundraising timeline from 4–8 weeks to 6–12 months, during which your team is distracted and momentum fades
- **What to do instead:** Batch outreach. Send 15–25 emails in the same 48-hour window. Create a real (not fabricated) closing timeline. Competitive dynamics are the single most powerful accelerant in fundraising

### 4. Leading with the Product, Not the Problem

- **What it looks like:** Founder spends the first 20 minutes of a pitch meeting on product features and technical architecture. "Our platform uses a novel algorithm that…"
- **Why founders do it:** Founders are proud of what they built. Technical founders especially default to product depth as a proxy for credibility
- **Why it's harmful:** Investors fund problems, not products. Without first establishing that the problem is large and painful, no amount of product sophistication is compelling. The question investors ask themselves in every pitch is "do enough people hurt enough to buy this?" — not "is the technical approach clever?"
- **What to do instead:** Start with the problem. Make it visceral — a specific customer story, a specific data point, a specific failure mode. Only after the investor believes the problem is real does your solution become relevant

### 5. Sharing the Deck Too Freely Before Meetings

- **What it looks like:** Founder emails the full pitch deck to every investor contact, often before speaking to them
- **Why founders do it:** It feels like efficiency. It gives investors something to react to. And sending a deck feels like "reaching out"
- **Why it's harmful:** A deck read in isolation, without your narrative, is judged only on its weaknesses. Investors will form opinions (often wrong ones) before you can address them. You lose the ability to frame the story. Sending a deck cold also marks you as inexperienced in fundraising dynamics
- **What to do instead:** Send a 3-sentence cold email first. Get the meeting. Bring or share the deck only in the meeting context where you can guide the narrative. If an investor requires a deck before agreeing to meet — reconsider whether this is the right investor

### 6. Negotiating All Terms Instead of the Critical Few

- **What it looks like:** Founder pushes back on every term in a term sheet — valuation, pro-rata, board seats, protective provisions, anti-dilution, drag-along, information rights
- **Why founders do it:** It feels like fiduciary duty to maximize. First-time founders also over-read term sheet guides and treat every non-standard term as equally important
- **Why it's harmful:** Over-negotiation signals inexperience and sets a hostile tone for a partnership that will last 7–10 years. Investors talk to each other — a founder who over-negotiates gets a reputation. More importantly, most terms outside of the 3–4 critical ones rarely affect actual outcomes
- **What to do instead:** Identify the 3 terms that most affect founder outcomes: (1) valuation/dilution, (2) liquidation preference structure, (3) board control. Negotiate those firmly and professionally. Concede on everything else

---

## Interconnections

### Inputs (what this skill receives from other skills)

| From Skill | Data Received | How It's Used |
|------------|---------------|---------------|
| Skill 01 (Idea Validation) | Pitch proof points (customer quotes, interview counts, PMF signals), market evidence (search volume, market size), founder-market fit | Problem slide, Market slide, Team slide in pitch deck |
| Skill 02 (Business Model) | Unit economics (LTV, CAC, payback, LTV:CAC), pricing structure, competitive positioning | Business Model slide (slide 5), Financials slide (slide 9), Competition slide (slide 8) |
| Skill 08 (Growth) | Traction metrics: MoM growth rate, ARR, retention cohorts, North Star metric | Traction slide (slide 6) — most important slide for investor conviction |
| Skill 09 (Operations) | Team bios, org chart, hiring plan | Team slide (slide 7) |
| Skill 10 (Finance) | 3-year financial model, burn rate, runway, use of funds breakdown | Financials slide (slide 9), Ask slide (slide 10) |

### Outputs (what this skill produces for other skills)

| To Skill | Data Produced | Format |
|----------|---------------|--------|
| Skill 10 (Finance) | Funding amount raised, instrument type (SAFE/equity), pre-money valuation, new runway calculation, cap table with investor ownership | Cap table update + runway extension calculation |
| Skill 12 (Legal) | SAFE terms or stock purchase agreement terms, cap table, vesting schedules for new employees, investor protective provisions | Legal document review request + cap table |

### Context Passing

When this skill completes, pass the following to the orchestrator:

- **Funding Status:** Amount raised, instrument, pre-money valuation, close date
- **Investor Names:** Lead investor + notable co-investors (for future pitch references)
- **Cap Table Summary:** Founder ownership post-close, investor ownership, option pool size
- **Runway:** Months of runway with new capital, assuming base case burn
- **Open Questions:** Any terms being negotiated or outstanding commitments
- **Milestones Funded:** Specific milestones the capital is meant to achieve (used to track against Skill 08 and 10)

---

## Artifacts

### Pitch Deck

- **Type:** Presentation document
- **Generated when:** Workflow B Step 1
- **Format:** 10 slides, presentation format (Google Slides, PowerPoint, Keynote)
- **Sections:** Title, Problem, Solution, Market, Business Model, Traction, Team, Competition, Financials, Ask
- **Disclaimer:** General Disclaimer + Investment Disclaimer required.

### Funding Summary

- **Type:** Analysis document
- **Generated when:** Workflow A Step 2 (pre-raise) and Workflow D Step 3 (post-close)
- **Format:** 1-page summary: round size, instrument, valuation, milestone, use of funds, dilution impact
- **Disclaimer:** General Disclaimer + Financial Disclaimer + Investment Disclaimer.

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.

> **Financial Disclaimer:** The financial projections, unit economics, and calculations in this document are estimates based on stated assumptions and industry benchmarks. They do not constitute financial advice. Actual results will vary. Consult a qualified accountant or financial advisor before making financial decisions.

> **Investment Disclaimer:** This document is for informational purposes only and does not constitute an offer to sell, a solicitation of an offer to buy, or a recommendation for any security or investment. Past performance is not indicative of future results. All investments involve risk, including the possible loss of principal.

> **Legal Disclaimer:** This content is educational and informational only. It does not constitute legal advice. Laws and regulations vary by jurisdiction and change frequently. Consult a qualified attorney licensed in your jurisdiction before making legal decisions, forming entities, signing agreements, or issuing equity.
