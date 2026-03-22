# Founder Intake Questionnaire

> Comprehensive intake for the FounderOS. Use this when running a Full System Run (Workflow C) or when the founder requests a complete business plan. For stage-based or single-skill runs, the orchestrator's conversational intake (SKILL.md Diagnostic Intake) is sufficient.

---

## How to Use This Template

**For the AI agent:** Walk through these sections conversationally. Do not dump the entire questionnaire at once. Start with Section 1, gather responses, then proceed to subsequent sections. Skip questions the founder has already answered. Mark each question as answered or skipped.

**For the founder:** You can fill this out directly as a form if you prefer. Replace each `[placeholder]` with your answer. Leave items blank if you do not know — the system will help you figure them out.

**Routing hints** are noted in italics after each question. These tell the orchestrator which skills benefit most from each answer.

---

## Section 1: The Startup Idea

### 1.1 Problem Statement

**What specific problem are you solving?**
[Describe the problem in concrete terms — not "the market is inefficient" but "ops managers at SaaS companies spend 10+ hours per week manually reconciling invoices"]

*Routing: Feeds Skill 01 (Idea Validation) hypothesis formation and Skill 05 (Product) PRD problem statement.*

**Who experiences this problem?**
[Name the specific person — job title, company size, industry. "Small business owners" is too broad. "Operations managers at 10-50 person B2B SaaS companies" is specific enough.]

*Routing: Defines the customer archetype for all downstream skills. If vague, Skill 01 will need to refine.*

**How do they solve this problem today?**
[List current workarounds: specific tools, manual processes, hiring people, or doing nothing. The more specific, the better.]

*Routing: Feeds Skill 02 (Business Model) competitive alternatives map and Skill 01 validation signal strength. Strong workarounds = strong pain signal.*

**How did you discover this problem?**
[Personal experience? Customer conversations? Industry research? A different product you built?]

*Routing: Feeds Skill 01 founder-market fit assessment. Personal + domain experience = stronger fit.*

### 1.2 Solution

**What is your proposed solution?**
[Describe what you are building or plan to build. Be specific about the core functionality, not a feature list.]

*Routing: Feeds Skill 05 (Product) PRD and Skill 03 (Fundraising) pitch deck Slide 3.*

**What makes your approach different from existing solutions?**
[Not "better UI" — what structural, technical, or insight-driven advantage do you have?]

*Routing: Feeds Skill 02 (Business Model) competitive positioning and Skill 03 pitch deck Slide 8.*

**What is the single most important thing your product does for the customer?**
[One sentence. This becomes the tagline and the core of your pitch.]

*Routing: Feeds Skill 07 (Marketing & Brand) brand messaging and Skill 03 pitch deck Slide 1.*

### 1.3 Target Customer

**Describe your ideal first customer in detail:**

- Job title / role: [placeholder]
- Company size: [placeholder — number of employees or revenue range]
- Industry / vertical: [placeholder]
- Geography: [placeholder]
- Specific situation that makes them a buyer: [placeholder — what trigger event makes them search for a solution?]

*Routing: If founder cannot answer these specifically, prioritize Skill 01 (Idea Validation) to refine the customer archetype before proceeding.*

**How many of these customers exist?**
[Estimate: hundreds, thousands, hundreds of thousands? How do you know?]

*Routing: Feeds market sizing. If founder is guessing, WebSearch research will be needed for Business Plan Part IV.*

---

## Section 2: Validation Status

### 2.1 Customer Evidence

**Have you spoken to potential customers about this problem (not your solution)?**
- [ ] No — I have not spoken to any potential customers yet
- [ ] Yes, informally — a few conversations with friends/colleagues
- [ ] Yes — 5-10 structured conversations with potential customers
- [ ] Yes — 10+ structured conversations with strangers in the target segment

*Routing: No interviews → Skill 01 Workflow A or B. Informal only → Skill 01 Workflow B (interviews with strangers needed). 5-10 interviews → Skill 01 Workflow C (synthesis). 10+ interviews → may skip Skill 01 if evidence is strong.*

**What did they tell you? (key quotes or patterns)**
[Capture the 2-3 most telling things potential customers said — in their words, not yours]

*Routing: Feeds Skill 01 signal synthesis and Skill 03 pitch deck Slide 2 (Problem) proof points.*

**Have any potential customers committed to paying, signing up, or referring others?**
- [ ] No commitment of any kind
- [ ] Verbal interest ("that sounds cool")
- [ ] Waitlist signup or email registration
- [ ] Letter of intent or pilot agreement
- [ ] Pre-purchase or deposit
- [ ] Paying customer

*Routing: No commitment → Skill 01. Verbal only → weak signal (Skill 01 needed). Waitlist → moderate signal. LOI/pre-purchase/paying → strong signal, may skip Skill 01.*

### 2.2 Product Status

**What is the current state of your product?**
- [ ] Concept only — no prototype or code
- [ ] Wireframes or mockups
- [ ] Prototype (non-functional or limited functionality)
- [ ] MVP (functional, limited features, some users)
- [ ] Live product with active users
- [ ] Mature product with paying customers

*Routing: Concept/wireframes → Skill 05 (Product) to build PRD. MVP → Skill 01 Workflow D (PMF detection). Live product → skip Skill 05 PRD basics, focus on roadmap and prioritization.*

**If you have users, how many?**
- Total signups / users: [placeholder]
- Monthly active users: [placeholder]
- Paying customers: [placeholder]
- Monthly recurring revenue: [placeholder]

*Routing: Feeds Skill 08 (Growth & Analytics) baseline metrics and Skill 03 pitch deck Slide 6 (Traction).*

---

## Section 3: Founder & Team

### 3.1 Founder Background

**Your name:** [placeholder]

**Your background (1-2 sentences):**
[What you did before this — focus on what is relevant to this problem]

*Routing: Feeds Skill 01 founder-market fit and Skill 03 pitch deck Slide 7 (Team).*

**Domain expertise in this problem area:**
- [ ] Deep — I've worked in this industry for 2+ years
- [ ] Moderate — I've experienced this problem personally
- [ ] Light — I've researched it but have no direct experience
- [ ] None — I'm entering a new domain

*Routing: Deep/Moderate → stronger founder-market fit. Light/None → Skill 01 validation is critical before proceeding.*

**Technical ability:**
- [ ] Technical — I can build the product myself
- [ ] Semi-technical — I can build prototypes but need engineering help for production
- [ ] Non-technical — I need a technical co-founder or engineering team

*Routing: Non-technical → Skill 05 (Product) focuses on requirements and hiring; Skill 09 (Operations) prioritizes technical co-founder search.*

### 3.2 Team

**Current team:**

| Name | Role | Full-time? | Key expertise |
|------|------|-----------|--------------|
| [placeholder] | [placeholder] | [Y/N] | [placeholder] |
| [placeholder] | [placeholder] | [Y/N] | [placeholder] |
| [placeholder] | [placeholder] | [Y/N] | [placeholder] |

*Routing: Solo founder → Skill 09 (Operations) prioritizes co-founder/first-hire strategy. Team of 3+ → Skill 09 focuses on OKRs and structure.*

**Key skill gaps on the team:**
[What roles or expertise are you missing? Engineering, sales, design, domain expertise, fundraising experience?]

*Routing: Feeds Skill 09 (Operations) hiring plan and informs which skills need more support.*

**Advisors or mentors:**
[List anyone advising you — name, expertise, involvement level]

*Routing: Strong advisor network → reduces need for some skills (e.g., industry advisor may replace some validation work). Weak network → Skill 03 investor outreach strategy becomes more important.*

---

## Section 4: Funding & Financial Status

### 4.1 Current Financial Status

**Funding to date:**
- [ ] No funding — self-funded / bootstrapped
- [ ] Friends & family round: $[amount]
- [ ] Angel investment: $[amount]
- [ ] Pre-seed round: $[amount]
- [ ] Seed round: $[amount]
- [ ] Series A or later: $[amount]
- [ ] Grant or non-dilutive funding: $[amount]

*Routing: No funding + planning to raise → Skill 03 (Fundraising) priority. Already raised → Skill 10 (Finance) and Skill 12 (Legal) for cap table and compliance.*

**Current monthly burn rate:**
$[amount] per month

*Routing: Feeds Skill 10 (Finance & Accounting) burn rate analysis and runway calculation.*

**Current runway:**
[How many months until you run out of money at current burn rate?]

*Routing: < 6 months → urgent. Skill 03 (Fundraising) or revenue generation (Skill 06 Sales) is the immediate priority.*

**Monthly revenue (if any):**
$[amount] MRR / $[amount] ARR

*Routing: Feeds Skill 08 (Growth & Analytics) baseline and Skill 03 pitch deck Slide 6.*

### 4.2 Funding Plans

**Are you planning to raise capital?**
- [ ] No — bootstrapping
- [ ] Yes — actively raising now
- [ ] Yes — planning to raise in the next 3-6 months
- [ ] Undecided — need help deciding

*Routing: Bootstrapping → skip Skill 03 fundraising mechanics, focus on Skill 02 (self-sustaining business model) and Skill 10 (cash management). Actively raising → Skill 03 is urgent. Planning → Skill 03 preparation workflow. Undecided → Skill 03 Workflow A (raise decision).*

**If raising, target amount:**
$[placeholder]

**If raising, preferred instrument:**
- [ ] SAFE
- [ ] Convertible note
- [ ] Priced equity round
- [ ] Revenue-based financing
- [ ] Not sure — need guidance

*Routing: Feeds Skill 03 (Fundraising) and Skill 12 (Legal & Compliance) for terms and structure.*

**Any existing investors or cap table commitments?**
[List current investors, SAFE holders, option pool, or equity agreements]

*Routing: Feeds Skill 12 (Legal & Compliance) cap table cleanup and Skill 03 dilution modeling.*

---

## Section 5: Industry & Market Context

### 5.1 Industry

**Primary industry / vertical:**
[SaaS, fintech, healthtech, edtech, marketplace, e-commerce, hardware, consumer, B2B services, etc.]

*Routing: Regulated industries (fintech, healthtech, edtech) → Skill 12 (Legal & Compliance) runs early. Industry type influences which business model patterns are relevant (Skill 02).*

**Specific sub-sector (if applicable):**
[e.g., "B2B payments infrastructure" within fintech, or "employee wellness" within healthtech]

*Routing: Feeds WebSearch queries for market sizing and competitive analysis.*

### 5.2 Market

**Geographic target:**
- [ ] Local (single city / region)
- [ ] National (single country): [which country?]
- [ ] Multi-country: [which countries?]
- [ ] Global

*Routing: Multi-jurisdiction → Skill 12 (Legal & Compliance) complexity increases. Single market → simpler regulatory path.*

**Known competitors (list top 3-5):**

| Competitor | What they do | Their weakness (from your perspective) |
|-----------|-------------|---------------------------------------|
| [placeholder] | [placeholder] | [placeholder] |
| [placeholder] | [placeholder] | [placeholder] |
| [placeholder] | [placeholder] | [placeholder] |

*Routing: Feeds Skill 02 (Business Model) competitive positioning, Business Plan Part V, and Pitch Deck Slide 8. WebSearch will supplement with funding, pricing, and review data.*

**Is this industry regulated?**
- [ ] No significant regulation
- [ ] Light regulation (e.g., general data privacy — GDPR, CCPA)
- [ ] Moderate regulation (e.g., fintech compliance, educational standards)
- [ ] Heavy regulation (e.g., healthcare HIPAA, financial services, insurance)

*Routing: Moderate/Heavy → Skill 12 (Legal & Compliance) runs early in the sequence. Feeds Business Plan Part XII.*

---

## Section 6: Goals & Constraints

### 6.1 Immediate Goals

**What is the single most important thing you need help with right now?**
[One sentence. This is the strongest routing signal in the entire questionnaire.]

*Routing: Direct routing to the most relevant skill. This answer overrides stage detection if it points to a specific, actionable need.*

**What does success look like in 90 days?**
[Be specific: "10 paying customers at $99/mo" not "make progress"]

*Routing: Feeds Skill 08 (Growth & Analytics) target setting and Skill 09 (Operations) OKR definition.*

**What does success look like in 12 months?**
[Be specific: "$500K ARR, 5-person team, Series A raised" not "be successful"]

*Routing: Feeds Business Plan executive summary and 3-year projection anchoring in Skill 10.*

### 6.2 Constraints

**Time constraints:**
[Full-time on this? Part-time? Other commitments? Target launch date?]

*Routing: Part-time → adjusted timelines in Skill 04 (GTM) and Skill 05 (Product) roadmap.*

**Budget constraints:**
[How much can you invest before revenue or funding? Any non-negotiable expenses?]

*Routing: Tight budget → Skill 02 (Business Model) emphasizes capital-efficient models. Feeds Skill 10 burn rate scenarios.*

**Technical constraints:**
[Platform requirements? Integration needs? Technical debt? Regulatory technical requirements?]

*Routing: Feeds Skill 05 (Product) technical requirements section of PRD.*

**Regulatory constraints:**
[Any specific regulatory requirements, licenses, or compliance obligations?]

*Routing: Feeds Skill 12 (Legal & Compliance) directly.*

---

## Section 7: Scope & Deliverables

### 7.1 What Do You Want From This Session?

- [ ] **Validate my idea** — Run Skills 01-02 to determine GO/PIVOT/KILL
- [ ] **Prepare to raise** — Run the fundraising track (01 → 02 → 03 → 05 → 10)
- [ ] **Get launch ready** — Run the launch track (04 → 05 → 06 → 07)
- [ ] **Full business plan** — Run all 12 skills, generate Business Plan + Pitch Deck
- [ ] **Pitch deck only** — Run minimum skills, generate Pitch Deck
- [ ] **Specific skill(s)** — List: [placeholder]
- [ ] **I'm not sure** — Let the orchestrator recommend based on my situation

*Routing: This answer directly selects the workflow (A through E) in the orchestrator.*

### 7.2 Output Preferences

**How detailed should the outputs be?**
- [ ] Summary only — key decisions and next steps
- [ ] Standard — frameworks applied with recommendations
- [ ] Comprehensive — full analysis with supporting evidence

*Routing: Summary → faster runs, less research. Comprehensive → full research protocol, detailed artifacts.*

**Should the Business Plan include internet research for market/competitive data?**
- [ ] Yes — use WebSearch for current market data and competitor analysis
- [ ] No — use only the information I provide
- [ ] Yes, but only for specific sections: [placeholder]

*Routing: Determines whether Deep Research Protocol runs during artifact generation.*

---

## Intake Summary (Filled by Orchestrator)

After completing the intake, the orchestrator fills this summary:

```
Founder: [name]
Startup: [name or idea description]
Industry: [vertical]
Stage Detected: [Ideation / Pre-Launch / Launch / Growth / Scale]
Validation Status: [No validation / Informal / Structured interviews / Paying customers]
Product Status: [Concept / Wireframes / MVP / Live / Mature]
Funding Status: [Bootstrapped / Angel / Pre-seed / Seed / Series A+]
Team Size: [solo / 2-3 / 4-10 / 10+]
Immediate Goal: [from Section 6.1]
Run Type: [Single skill / Stage-based / Full system / Partial: pattern name]
Skills to Run: [list with order]
Research Required: [Yes / No / Partial]
Estimated Duration: [hours]
```

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
