# Idea Validation

> Help founders stress-test a startup idea before writing a line of code — using real market signals, customer conversations, and structured decision criteria to reach a GO/PIVOT/KILL verdict.

---

## Diagnostic

Before giving advice, assess the founder's current state in idea validation. Ask these questions to route to the right workflow:

### State Assessment

| State | Description | Route To |
|-------|-------------|----------|
| **Raw Idea** | Founder has a problem statement or concept but no market research, no customer conversations, and no hypothesis formed | Workflow A: Hypothesis Formation |
| **Hypothesis** | Founder has a falsifiable hypothesis ("X customer has Y problem, will pay Z") but has not yet spoken to potential customers | Workflow B: Customer Discovery |
| **Interviews Done** | Founder has completed 5–20 customer interviews and collected signal but hasn't synthesized findings or made a GO/PIVOT/KILL decision | Workflow C: Signal Synthesis |
| **MVP** | Founder has a prototype or MVP with real users and is measuring whether initial PMF signals exist | Workflow D: PMF Signal Detection |

### Diagnostic Questions

1. **"Have you spoken to at least 5 potential customers about this problem — not your idea, but the problem?"** — Distinguishes Raw Idea from Hypothesis state. If no, route to Workflow A. If yes with structured notes, skip to Workflow B or C.
2. **"Can you name 3 specific people who described the problem to you in their own words — unprompted?"** — Distinguishes weak hypothesis from strong one. Founders who can name people have real signal; those who describe demographic composites do not.
3. **"What's your current evidence that people lose sleep over this problem?"** — Surfaces confirmation bias. Founders who cite their own frustration are in Raw Idea state. Founders who cite specific quotes, behaviors, or workarounds have moved to Hypothesis.
4. **"What would cause you to kill this idea right now?"** — Reveals pre-commitment. If founder has no falsifiable kill criteria, they haven't formed a testable hypothesis.

### Routing Logic

```
IF founder cannot describe a specific frustrated customer with a specific, recurring problem
→ Route to Workflow A (Hypothesis Formation)

ELIF founder has a hypothesis but fewer than 5 substantive customer conversations
→ Route to Workflow B (Customer Discovery)

ELIF founder has 5+ interviews but no synthesis / no verdict
→ Route to Workflow C (Signal Synthesis)

ELIF founder has live product with users and is measuring retention/engagement
→ Route to Workflow D (PMF Signal Detection)
```

---

## Workflows

### Workflow A: Hypothesis Formation (Raw Idea → Testable Hypothesis)

**Objective:** Convert a vague problem statement into a falsifiable hypothesis that can be tested with real customers in 48–72 hours.

**Steps:**

1. **Define the specific customer**
   - Action: Complete the sentence — "I believe [specific type of person] experiences [specific, recurring frustration] when trying to [accomplish specific goal]."
   - Output: A customer archetype with a named frustration (not a demographic bucket — "25–35-year-old professionals" is not specific enough; "ops managers at 10-50 person SaaS companies who reconcile vendor invoices manually" is)
   - Decision point: If you can't name at least 3 real people who fit this description, the archetype is too abstract — narrow it further

2. **Quantify the pain**
   - Action: Apply the Tom Bilyeu 60-Minute Validation checklist (see `templates/60-min-validation.md`). Look for: complaint volume (search volume, Reddit threads, Twitter complaints), bad reviews on competitor products, and evidence people are cobbling together workarounds
   - Output: Market signal score (0–10) across 5 dimensions: complaint volume, market size, competitor gaps, search demand, adoption signals
   - Decision point: Score ≥ 6/10 required to proceed to customer interviews. Score < 6 means either wrong customer segment or wrong problem framing — reformulate

3. **Form the falsifiable hypothesis**
   - Action: Write your hypothesis in the format: "We believe [customer] faces [problem]. We'll know this is true if [≥X] of [Y] interview subjects describe [specific behavior or quote] unprompted. We'll kill the idea if [specific negative signal]."
   - Output: Written hypothesis with GO criteria and KILL criteria pre-defined
   - Checkpoint: Hypothesis must have both a positive signal threshold AND a kill criterion. If founder can't write a kill criterion, they're not thinking scientifically — push them to define one
   - Next: Proceed to Workflow B with hypothesis in hand

### Workflow B: Customer Discovery (Hypothesis → Interview Insights)

**Objective:** Conduct 10–15 Mom Test-compliant interviews that either confirm, refute, or pivot the hypothesis.

**Steps:**

1. **Recruit interview subjects**
   - Action: Identify 15–20 candidates who fit the customer archetype. Sources in priority order: (1) direct LinkedIn outreach with specific problem reference, (2) communities where the pain is discussed (Reddit, Slack groups, Discord), (3) your own network's warm introductions, (4) cold email with specific problem framing
   - Output: Calendar with 10–15 confirmed 30-minute conversations scheduled
   - Checkpoint: At least 70% of interview subjects should be strangers — friends and family create false positives. If more than 30% are people who already like you, the sample is biased
   - Decision point: If you can't find 10 people willing to discuss this problem, that is itself a signal — either the pain isn't acute enough to motivate 30 minutes of their time, or you're targeting the wrong segment

2. **Conduct Mom Test interviews**
   - Action: Use the interview script in `templates/mom-test-interview.md`. Core rules: (a) NEVER pitch your idea, (b) ask about PAST behavior not future intentions, (c) get to specific stories, not opinions, (d) always ask "how are you handling this today?"
   - Output: Interview notes with verbatim quotes, observed behaviors, and current workarounds documented for each subject
   - Checkpoint: After each interview, score it: Did you learn something you didn't know before? Did the subject describe the problem unprompted? Did they mention a workaround? Three NO answers = the interview was too shallow — improve your questions
   - Decision point: After interview 5, assess pattern. If you're hearing completely different problems from different segments, you have a positioning problem — you may be solving for multiple segments with different problems

3. **Document insights**
   - Action: For each interview, complete the insight capture section of `templates/mom-test-interview.md`. Flag: (1) unprompted mentions of the problem, (2) specific workarounds described, (3) money or time spent on the problem, (4) expressions of frustration in their own words
   - Output: Interview synthesis document with pattern frequency (e.g., "8/12 subjects mentioned using spreadsheets as a workaround")
   - Next: Proceed to Workflow C with synthesis document

### Workflow C: Signal Synthesis (Interviews → GO/PIVOT/KILL)

**Objective:** Analyze interview data against the validation scorecard and reach a defensible GO/PIVOT/KILL verdict.

**Steps:**

1. **Complete the validation scorecard**
   - Action: Fill out `templates/validation-scorecard.md` using interview data. Score each criterion honestly — weight frequencies from actual interviews, not your best-case interpretation
   - Output: Weighted score (0–100) across 8 dimensions: problem frequency, intensity, workarounds, willingness to pay, market size, competitor gaps, founder-market fit, PMF signals
   - Decision point: Score ≥ 70: GO. Score 40–69: PIVOT (something specific is wrong — identify it). Score < 40: KILL

2. **Apply GO/PIVOT/KILL decision framework**
   - Action: Use `frameworks/go-pivot-kill.md`. For PIVOT candidates, identify the specific failing dimension and generate 2–3 pivot hypotheses. For KILL candidates, document the specific evidence that led to KILL — this protects the founder from later second-guessing
   - Output: Written GO/PIVOT/KILL verdict with evidence summary
   - Checkpoint: If scoring GO, ensure you can answer YES to all three: (a) Do customers describe the problem in their own words without prompting? (b) Have you found evidence people already spend money or significant time on this? (c) Is there a market size plausibly ≥ $1B TAM?

3. **Define next actions**
   - Action: For GO: proceed to Skill 02 (Business Model) with customer archetype and validated problem. For PIVOT: reformulate hypothesis and return to Workflow B with new framing. For KILL: document learnings in session context and help founder explore adjacent ideas
   - Output: Written decision with specific next steps
   - Next: GO → Skill 02 (Business Model). PIVOT → loop back to Workflow B. KILL → end or reformulate

### Workflow D: PMF Signal Detection (MVP → PMF Evidence)

**Objective:** Distinguish early traction from genuine PMF using signal quality, not vanity metrics.

**Steps:**

1. **Establish baseline metrics**
   - Action: Define your North Star metric — the one metric that captures whether users get value (e.g., for communication tools: 3+ threads/week; for productivity tools: DAU/MAU ≥ 30%; for marketplaces: ≥ 2 transactions/month)
   - Output: Documented North Star metric with current baseline and target threshold
   - Checkpoint: If you're using monthly revenue as your only metric, you're measuring outcome not signal. PMF is about whether users would be "very disappointed" if the product disappeared — measure that

2. **Look for PMF signals**
   - Action: Inventory which of these signals exist: (a) Unsolicited referrals — users are telling their network without being asked, (b) Interrupted pitches — users stop your pitch to ask "when can I buy this?", (c) Pre-purchase on mockups — users offer to pay before the product is built, (d) Workaround retention — users continue using your MVP despite obvious missing features, (e) Sean Ellis score ≥ 40% ("very disappointed" if product disappeared)
   - Output: Signal inventory with specific examples for each signal type
   - Decision point: If zero PMF signals after 60+ active users and 60+ days, this is a warning sign — either wrong customers, wrong product, or wrong problem framing. Return to customer discovery

3. **Distinguish traction from PMF**
   - Action: PMF test — if you stopped all marketing tomorrow, would users tell their network anyway? Run cohort retention: do users in month 1 still use the product in month 3? Retention curve should flatten (not go to zero) to indicate PMF
   - Output: Cohort retention data with retention curve shape
   - Next: Strong PMF signals → pass findings to Skill 04 (Go-to-Market) with confidence. Weak signals → return to Workflow C to re-evaluate hypothesis. No signals → KILL or major pivot

---

## Frameworks

### Kevin Hale / YC Validation Framework

**Source:** Kevin Hale, YC Partner, from "How to Evaluate Startup Ideas" talk
**When to use:** At the hypothesis formation stage to assess whether an idea is worth pursuing at all

**Steps:**

1. **Identify a problem that is**: (a) Popular — affects a large number of people, (b) Growing — affecting more people over time, (c) Urgent — users need a solution immediately, not eventually, (d) Expensive — people spend significant money or time on it today, (e) Mandatory — users have no choice but to solve it
2. **Score for problem severity**: How many of the 5 criteria does the problem satisfy? 4–5: strong signal. 3: possible. < 3: likely too weak
3. **Check the "aspirin vs. vitamin" test**: Is this solving a burning problem (aspirin — people will pay now) or a nice-to-have (vitamin — people say they'll use it but won't prioritize it)? Vitamins don't survive the payment test
4. **Assess the insight**: What do you know about this problem that others don't? YC calls this the "secret" — an insight that makes the problem look solvable from a new angle that incumbents missed

**Example application:**
> A founder building invoice reconciliation software for SMBs. Score: Popular (millions of SMBs) ✓, Growing (SMB SaaS adoption rising) ✓, Urgent (month-end crunch) ✓, Expensive ($200-500/mo in manual labor) ✓, Mandatory (compliance requires it) ✓. Score: 5/5. Aspirin: YES. Secret insight: modern API integrations make automation possible at $50/mo — previous tools required $5,000 implementations. Strong signal to proceed.

### Tom Bilyeu 60-Minute Validation Framework

**Source:** Tom Bilyeu, co-founder Impact Theory, adapted from lean startup practice
**When to use:** Before any customer interviews, to determine if desk research supports an idea worth pursuing

**Steps:**

1. **Complaint volume check (15 minutes)**: Find 10+ distinct complaints about existing solutions on Reddit, Twitter/X, App Store reviews, G2 reviews, Amazon reviews, or Trustpilot. If you can't find 10 complaints in 15 minutes, either the problem isn't painful enough to motivate public complaints, or the market is too small
2. **Market size sanity check**: Use Google Keyword Planner or Ahrefs to find search volume for problem-related queries. Target: ≥ 10,000 monthly searches for the core problem phrase. Low volume = either early-market (proceed cautiously) or small market (reconsider)
3. **Bad review mining**: Read 1-star and 2-star reviews of the top 3 competitors. Look for recurring pain points that no existing solution addresses. These gaps are your beachhead
4. **Adoption signal check**: Look for evidence people are cobbling together workarounds — Zapier zaps, Excel templates, "I use X + Y together" threads, hiring VAs to do manually what should be automated
5. **Decision**: If 3+ of the 4 checks produce positive signals, the idea is worth customer interviews. If < 2, either the market is too small, the problem isn't acute enough, or you're solving a problem that already has good solutions

**Example application:**
> A founder exploring team retrospective tooling. Complaint volume: 40+ Reddit threads about bad retro processes ✓. Market size: "team retrospective" 8,100/mo + "agile retrospective" 22,200/mo ✓. Bad reviews: Retrium and FunRetro both have consistent complaints about facilitation difficulty for remote teams ✓. Adoption signals: 15+ "I use Miro + Notion together for retros" threads ✓. Score: 4/4. Proceed to customer interviews.

### Mom Test Methodology

**Source:** Rob Fitzpatrick, "The Mom Test" (2013)
**When to use:** During every customer interview to avoid false positives

**The core problem this solves:** Your mom loves you and will tell you your idea is great even if it isn't. Most customer interviews replicate this dynamic — the interviewer unconsciously leads witnesses to confirm what they already believe.

**The three Mom Test rules:**

1. **Talk about their life, not your idea** — The interview is about their problems, not your solution. Introduce your solution only after 20+ minutes of problem exploration, if at all
2. **Ask about past behavior, not future intentions** — "Would you use this?" is a worthless question. "How did you handle this last time it happened?" is gold. Past behavior predicts future behavior; stated intentions don't
3. **Avoid the compliment — dig for commitment** — When someone says "That's really interesting," ask "What would have to be true for you to try this?" When someone says "I'd definitely use that," ask "Would you put your name on a waiting list today?"

**Good questions vs. bad questions:**

| Bad Question | Why Bad | Good Alternative |
|---|---|---|
| "Would you use this?" | Hypothetical, socially biased toward "yes" | "How are you handling this today?" |
| "Do you think this is a good idea?" | Asks for opinion, not behavior | "Tell me about the last time this was a problem for you" |
| "Would you pay $X for this?" | Hypothetical, anchors on your price | "What do you currently spend to solve this?" |
| "Would this solve your problem?" | Leading, implies you know their problem | "What's the hardest part of [their workflow]?" |
| "Is this something you'd want?" | Hypothetical desire vs. real willingness to act | "Have you ever looked for a solution? What did you find?" |

**Signals that mean GO:**
- Subject pulls out their phone/laptop to look up a competitor mid-interview
- Subject asks "when can I try this?" (after minimal description)
- Subject describes spending money on the problem unprompted
- Subject asks for your card or email to follow up

**Signals that mean STOP:**
- Subject compliments the idea but can't describe a specific time the problem affected them
- Subject says "I guess I should solve this" rather than "this is killing me every week"
- Subject describes the problem as minor or "not that bad"
- Subject has never tried to solve it before

### Founder-Market Fit Assessment

**Source:** Adapted from Paul Graham and First Round Capital founder assessment frameworks
**When to use:** After initial validation to assess whether the founder is the right person to build this

**Why it matters:** The best idea in the wrong founder's hands fails. Investors and co-founders evaluate founder-market fit as heavily as the idea itself.

**Assessment dimensions:**

1. **Domain expertise**: Have you worked in this industry for ≥ 2 years, OR have you suffered this problem personally for ≥ 1 year? Personal experience with the problem predicts tenacity during the hard years
2. **Network access**: Do you have direct relationships with 20+ potential customers you can call today? If not, can you acquire that network in < 60 days? Network predicts speed of early customer acquisition
3. **Unfair insight**: Do you know something about this problem that others don't — due to a prior job, personal experience, or proprietary data? "Unfair insight" is what makes a founder non-replicable
4. **Obsession indicator**: Have you spent > 10 hours in the past 30 days thinking about or working on this problem — before deciding to start a company? Obsession precedes startups, not the reverse
5. **Credibility with customers**: When you describe your background to a potential customer, do they lean in or tune out? Customers must believe you understand their world

**Scoring:**
- 4–5 criteria met: Strong founder-market fit
- 3 criteria met: Acceptable, but identify the gap and a mitigation plan (e.g., hire a domain expert early)
- < 3 criteria: High-risk. The idea may be right but the founder-market fit isn't — consider whether a co-founder with the missing dimension is essential before proceeding

---

## Templates

| Template | File | Purpose |
|----------|------|---------|
| Mom Test Interview Script | `templates/mom-test-interview.md` | Structured interview guide with good/bad question examples and insight capture |
| Validation Scorecard | `templates/validation-scorecard.md` | Weighted scoring rubric that produces a GO/PIVOT/KILL score |
| 60-Minute Validation Checklist | `templates/60-min-validation.md` | Desk research checklist before entering customer interviews |
| GO/PIVOT/KILL Decision Framework | `frameworks/go-pivot-kill.md` | Decision tree with thresholds, examples, and PIVOT variant generation |

---

## Decision Trees

### Should I talk to customers before building anything?

```
START: Do you have a working product with at least 20 active users?
│
├─ YES → Do at least 30% of those users return weekly without prompting?
│   ├─ YES → You have initial traction. Proceed to PMF signal detection (Workflow D)
│   └─ NO → Stop adding features. Do customer interviews NOW to find out why retention is low
│
└─ NO → Have you spoken to at least 10 potential customers about the problem (not the solution)?
    ├─ YES → Proceed to signal synthesis (Workflow C)
    └─ NO → Do NOT build. Do customer interviews first (Workflow B). Every day building before
            validating increases the cost of a pivot. The fastest path to a right product
            is 10 customer conversations, not 10 sprints
```

### Is my validation signal real or confirmation bias?

```
START: Did customers praise your idea during interviews?
│
├─ YES → Did they praise it unprompted, or did you describe it first?
│   ├─ Unprompted → Did they describe a specific incident when the problem cost them money/time?
│   │   ├─ YES → This is a real signal. Add to validation scorecard
│   │   └─ NO → Likely social politeness. Discount this signal
│   └─ You described it first → This is confirmation bias territory.
│       Did they commit to anything (waitlist, payment, referral)?
│       ├─ YES → Weak signal. Continue but don't over-weight
│       └─ NO → Discount. Praise without commitment is noise
│
└─ NO → Did they describe a problem that matches your hypothesis without prompting?
    ├─ YES → Strongest signal. Weight heavily in scorecard
    └─ NO → Neutral interview. Check whether you're talking to the right customer segment
```

### GO or PIVOT after interviews?

```
START: What is your validation scorecard score (0–100)?
│
├─ ≥ 70 → Strong signal. Is your founder-market fit score ≥ 3/5?
│   ├─ YES → GO. Proceed to Skill 02 (Business Model)
│   └─ NO → Conditional GO — identify the founder-market fit gap and address it before raising
│
├─ 40–69 → PIVOT territory. Which dimension scored lowest?
│   ├─ Problem frequency/intensity low → Wrong customer segment or problem framing
│   │   → Reframe hypothesis for a different customer segment, run 5 more interviews
│   ├─ Willingness to pay low → Right problem, wrong monetization model
│   │   → Explore alternative business models (see Skill 02)
│   ├─ Market size low → Problem is real but niche
│   │   → Explore: Is this a wedge into a larger market? If yes, proceed. If no, consider KILL
│   └─ Competitor gaps low → Good solutions already exist
│       → Map competitor weaknesses more deeply (Skill 02 positioning)
│
└─ < 40 → KILL. Document findings, identify the specific failure point
    ├─ Wrong customer (couldn't find them) → Explore adjacent segments
    ├─ Wrong problem (no one cared) → Back to problem exploration
    └─ Right problem but solved (competitors win) → Apply learnings to adjacent problem
```

---

## Anti-Patterns

### 1. Solution-First Pitching in Customer Interviews

- **What it looks like:** Founder describes their product idea in the first 5 minutes of a customer interview, then asks "What do you think?" or "Would you use this?"
- **Why founders do it:** They're excited about the solution and want feedback on it. It feels productive. They're also afraid customers will steal the idea.
- **Why it's harmful:** It converts the interview from signal extraction to sales practice. Customers who hear a solution first become evaluators, not sources of insight. You get reactions to your framing, not their actual pain. You'll hear "yes, that sounds useful" from people who will never pay you.
- **What to do instead:** Follow Mom Test protocol — spend the first 20 minutes only asking about their current workflow, frustrations, and workarounds. If you describe your solution at all, do it in the last 5 minutes and watch for pull vs. polite interest.

### 2. Demographic Targeting (TAM Inflation)

- **What it looks like:** "Our market is all small businesses in the US — that's 33 million companies, so our TAM is huge." Or: "We're targeting millennials who care about health."
- **Why founders do it:** Demographic segmentation feels rigorous because the numbers are real. It also makes the market look large, which founders believe impresses investors.
- **Why it's harmful:** Demographic segments don't share a problem — they share characteristics. Targeting "millennials" tells you nothing about what problem you're solving. It produces surveys and analysis that miss the actual customer, and it makes it impossible to write outreach that resonates.
- **What to do instead:** Segment by behavior and problem: "ops managers at 10–50 person SaaS companies who manually reconcile invoices using spreadsheets." This segment may be smaller, but it's accessible, addressable, and shares a common pain. Start specific; expand after PMF.

### 3. Survey-Based Validation

- **What it looks like:** "I sent a Google Form to 200 people asking if they'd use my product. 78% said yes."
- **Why founders do it:** Surveys are fast, scalable, and produce numbers that feel like data. They eliminate the discomfort of individual conversations where you might hear "no."
- **Why it's harmful:** Survey respondents say what they think you want to hear, what sounds reasonable, or what requires the least thought. Stated intentions in surveys have near-zero predictive value for actual purchase behavior. 78% survey agreement has preceded countless products with 0% actual conversion.
- **What to do instead:** Replace surveys with 15-minute qualitative conversations. You need 10–15 conversations with strangers, not 200 survey responses from your network. Qualitative signals ("I fire my assistant every time this happens") predict behavior better than quantitative survey responses.

### 4. Validation by Friends and Family

- **What it looks like:** "I talked to 20 people about my idea and they all love it!" — where those 20 people are friends, former colleagues, family members, or your existing social network who know and like you.
- **Why founders do it:** It's comfortable. You have access. They'll take the call. And their enthusiasm feels real.
- **Why it's harmful:** Friends and family perform enthusiasm even when they feel skepticism, to avoid hurting you. Even well-intentioned feedback is filtered through their desire to protect the relationship. Validation from people who already like you is not predictive of willingness to pay by strangers.
- **What to do instead:** Require that at least 70% of your interview subjects are strangers. Use LinkedIn cold outreach, community forums, or warm introductions to people you don't know. If strangers are harder to reach than friends, that itself is a signal about the urgency of the pain.

### 5. Feature Roadmap Without Validated Problem

- **What it looks like:** Founder spends weeks on a detailed product roadmap, user stories, and technical architecture before speaking to a single potential customer. Justification: "I know the problem well — I've experienced it myself."
- **Why founders do it:** Building feels productive. Planning a roadmap feels like progress. It also avoids the discomfort and rejection risk of customer conversations.
- **Why it's harmful:** Founder experience with a problem is one data point. Product roadmaps built on one data point are frequently wrong about which features matter, in what order, and at what price point. The cost of a roadmap built on unvalidated assumptions is measured in months, not days.
- **What to do instead:** Write a 1-page problem hypothesis first. Test it in 10 conversations. Only after confirming the problem is real and acute does a roadmap become useful. The roadmap should emerge from validated customer needs, not precede them.

### 6. Over-reliance on Landing Page Analytics

- **What it looks like:** "We got 2,000 email signups on our landing page — that's strong validation." Or: "Our ads had a 4% CTR, so there's definitely demand."
- **Why founders do it:** Landing page data is quantitative, cheap to produce, and gives founders a number to point to. It feels like real-world evidence.
- **Why it's harmful:** Email signups and ad clicks measure curiosity, not intent to pay. The activation energy for clicking a signup is near zero. Many successful landing pages convert 5%+ of signups to paying customers in the end — which means 95% of your "validation" signal was noise. Signup rates also vary wildly based on copywriting quality, not problem quality.
- **What to do instead:** Use landing pages for channel testing, not problem validation. If you're using a landing page to validate demand, add a payment wall or at minimum a commitment mechanism (meeting request, deposit, detailed intake form). Count commitments, not signups.

---

## Interconnections

### Inputs (what this skill receives from other skills)

| From Skill | Data Received | How It's Used |
|------------|---------------|---------------|
| None (entry point) | Initial founder context: problem description, target customer, any existing evidence | Used to calibrate the diagnostic and route to the appropriate workflow |

### Outputs (what this skill produces for other skills)

| To Skill | Data Produced | Format |
|----------|---------------|--------|
| Skill 02 (Business Model) | Validation verdict (GO/PIVOT/KILL), customer archetype with specific attributes, market size evidence, competitor gap analysis, customer willingness-to-pay signals from interviews | Written summary: validated customer segment + problem statement + market size range + WTP evidence |
| Skill 03 (Fundraising) | Pitch proof points (specific customer quotes, interview counts, pre-purchase signals), market evidence (search volume, complaint data, market size), founder-market fit assessment | Evidence document suitable for pitch deck slide 2 (Problem) and slide 4 (Market) |
| Skill 04 (Go-to-Market) | Validated target customer profile with demographics, behaviors, communities, and channels where they congregate | Customer profile doc: who they are, where to find them, what language they use to describe the problem |
| Skill 05 (Product) | Problem validation for PRD: specific unmet needs discovered in interviews, customer-stated workarounds, priority ranking of pain points | Problem section for PRD with verbatim customer quotes |

### Context Passing

When this skill completes, pass the following to the orchestrator:

- **Verdict:** GO / PIVOT / KILL with confidence level (HIGH/MEDIUM/LOW)
- **Customer Archetype:** Specific segment definition (job title, company size, behavior pattern)
- **Validated Problem Statement:** The problem in customer language, not founder language
- **Market Size Evidence:** Specific data points (search volume, complaint count, market research numbers)
- **PMF Signal Inventory:** Which early signals exist (unsolicited referrals, interrupted pitches, pre-purchase, workaround retention)
- **Founder-Market Fit Score:** N/5 with which criteria are met vs. missing
- **Open Questions:** Unresolved assumptions that downstream skills should address

---

## Artifacts

### Validation Report

- **Type:** Analysis document
- **Generated when:** Workflow C (Signal Synthesis), Step 2
- **Format:** Follow `shared/artifact-format.md`
- **Sections:** Executive Summary (GO/PIVOT/KILL verdict), Customer Archetype, Problem Evidence (interview quotes + quantitative signals), Market Size Analysis, Competitor Gap Analysis, Founder-Market Fit Assessment, Open Assumptions
- **Disclaimer:** General Disclaimer required. If financial estimates included, add Financial Disclaimer.

### Customer Interview Library

- **Type:** Research document
- **Generated when:** Workflow B (Customer Discovery), Steps 2–3
- **Format:** One entry per interview — date, subject background, key quotes, signals, and scoring
- **Sections:** Interview metadata, Verbatim quotes (problems), Workarounds described, Willingness-to-pay signals, Signal quality score (1–5)
- **Disclaimer:** General Disclaimer.

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
