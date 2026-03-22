# Sales Methodology Selector

> A decision tree and scoring tool for choosing the right sales methodology for your deal type, team maturity, and buyer complexity.

---

## Quick Reference: When to Use Each

| Methodology | Deal size | Sales cycle | Buyer complexity | Best stage |
|-------------|-----------|-------------|-----------------|-----------|
| **BANT** | < $25K ACV | < 60 days | Single buyer | Seed → Series A |
| **MEDDIC** | $25K–$500K+ ACV | 60–180+ days | Multiple stakeholders | Series A+ |
| **Challenger** | Any | Any | Buyers who don't know they have the problem | Any — especially for new categories |

---

## Decision Tree

```
STEP 1: What is your average deal size (ACV)?
│
├─ Under $10,000 ACV (SMB / transactional)
│   └─ Use BANT for lead qualification
│       → Volume is the game. Qualify fast and move on.
│       → See: BANT Scorecard below
│
├─ $10,000–$50,000 ACV (mid-market)
│   └─ STEP 2: How long is your typical sales cycle?
│       ├─ Under 30 days → BANT (fast qualification + simple process)
│       ├─ 30–90 days → BANT for qualification + MEDDIC elements for deal management
│       └─ Over 90 days → Full MEDDIC
│
└─ Over $50,000 ACV (enterprise)
    └─ STEP 3: Do buyers know they have the problem you solve?
        ├─ YES → Full MEDDIC (execution + stakeholder management)
        └─ NO (you're creating awareness) → Challenger first, then MEDDIC to close
            → Challenger creates the "aha" moment; MEDDIC maps the buying process
```

---

## BANT Qualification Scorecard

Use this for every inbound lead or early-stage prospect.

**Score each criterion:**
- 1 = Does not meet threshold (disqualify unless other criteria are very strong)
- 2 = Partially meets threshold (needs development)
- 3 = Fully meets threshold (advance deal)

| Criterion | Threshold | Score (1–3) | Notes |
|-----------|-----------|-------------|-------|
| **Budget** | Has confirmed budget OR strong business case to get it | [1/2/3] | [What they said] |
| **Authority** | Can make the decision OR directly influences the decision-maker | [1/2/3] | [Who they are] |
| **Need** | Has a specific, urgent problem your product solves (can articulate it in their words) | [1/2/3] | [Their words] |
| **Timeline** | Has a decision timeline within 90 days | [1/2/3] | [Their timeline] |

**BANT Total Score:** [sum] / 12

**Routing:**
- **10–12:** Fully qualified → Advance immediately to demo/evaluation
- **7–9:** Partially qualified → Develop 1–2 weak areas before committing AE time
- **Below 7:** Disqualify → Add to long-term nurture sequence

---

## MEDDIC Deal Scorecard

Use this for all deals > $25K ACV or > 60-day cycles. Update CRM fields weekly.

**Instructions:** For each component, rate completeness (0–100%) and add your evidence.

| Component | What you need to know | % Complete | Evidence / Notes |
|-----------|-----------------------|------------|-----------------|
| **Metrics** | Quantified business impact ($ or % improvement the buyer expects) | [0–100%] | [e.g., "They said solving this saves 10 hrs/week at $75/hr = $39K/year"] |
| **Economic Buyer** | Name, title, and contact of the person who controls budget and can say YES | [0–100%] | [e.g., "CFO John Smith — confirmed on call 2"] |
| **Decision Criteria** | The formal and informal criteria they use to choose a vendor | [0–100%] | [e.g., "Must integrate with Salesforce, under $30K, ease of implementation"] |
| **Decision Process** | Steps and timeline from evaluation to signed contract | [0–100%] | [e.g., "IT review (2 weeks) → ops sign-off → CFO approval. 6 weeks total."] |
| **Identify Pain** | Specific business problem with urgency ("what happens if not solved?") | [0–100%] | [e.g., "Monthly close takes 3 days; CFO presentation is always late"] |
| **Champion** | Internal advocate who wants you to win and will fight for you | [0–100%] | [e.g., "Head of Ops — requested the demo, has escalated to CFO herself"] |

**MEDDIC Average Completeness:** [Average of all %]

**Deal health routing:**
- **80–100% complete:** Healthy deal → forecast as "Best Case" or "Commit"
- **50–79% complete:** Needs development → identify the weakest component and build a plan
- **Below 50% complete:** At risk → do not forecast; invest in qualification
- **Missing Economic Buyer or Champion:** Do NOT advance to proposal stage

---

## Challenger Sale Assessment

Use this when you suspect buyers don't fully understand the problem you solve, or when "do nothing" is your biggest competitor.

**Challenger Readiness Assessment:**

| Question | YES | NO |
|----------|-----|----|
| Do most prospects you talk to say "we handle that with [workaround]" or "we don't really have that problem"? | | |
| Is "status quo" your most common loss reason? | | |
| Do you have a unique, data-backed insight about your buyers' industry that most of them haven't heard? | | |
| Can you teach a prospect something valuable in the first 10 minutes of a conversation — not about your product, but about their business? | | |

**Score:**
- **3–4 YES:** Use Challenger as your primary opening approach
- **1–2 YES:** Use elements of Challenger (especially the "teach" step) with MEDDIC backbone
- **0 YES:** Buyers already know they have the problem → skip Challenger, go straight to MEDDIC

---

## Methodology Training Checklist

Once you've selected a methodology, use this checklist to implement it:

### For BANT

- [ ] Add BANT fields (Budget, Authority, Need, Timeline) to CRM opportunity record
- [ ] Write the 4 discovery questions that surface BANT criteria (see discovery script)
- [ ] Define threshold for "qualified" (our standard: 3/4 criteria met)
- [ ] Train every rep to complete BANT before advancing a deal past Stage 2 (Engaged)
- [ ] Review: pipeline reviews check BANT score before deal gets AE time

### For MEDDIC

- [ ] Add all 6 MEDDIC fields to CRM opportunity record (required before Stage 4)
- [ ] Write the discovery questions for each MEDDIC component (see meddic-bant-challenger.md)
- [ ] Define deal advancement rules: no proposal without Economic Buyer identified and Champion confirmed
- [ ] Train every rep on weekly MEDDIC deal reviews: "Walk me through M-E-D-D-I-C for your top 3 deals"
- [ ] Set a deal health score alert: deals with MEDDIC < 50% get a coaching call within 48 hours

### For Challenger

- [ ] Build a "teach" narrative: 5–7 minutes of non-product insight that creates urgency
- [ ] Develop tailoring by buyer role: what does the "teach" look like for a CFO vs. a Head of Operations?
- [ ] Practice the reframe for "do nothing": quantify the cost of the status quo in their specific context
- [ ] Role-play the control techniques: how to handle "let me think about it" and "we'll follow up"
- [ ] Note: Challenger works best for creating urgency; pair with MEDDIC for deal management once urgency is established

---

## Hybrid Approach Guide

For most B2B SaaS companies:

```
Inbound lead comes in
→ Run BANT immediately (first 10 minutes of discovery call)
→ If BANT score ≥ 7/12 AND deal > $25K:
    → Switch to MEDDIC for deal management
→ If deal is stalled or prospect has no urgency:
    → Apply Challenger techniques to create urgency
    → Then continue with MEDDIC to close
```

**The rule:** BANT qualifies, MEDDIC maps the path to close, Challenger creates urgency when the buyer is in "do nothing" mode.

---

## Switching Methodologies

If your current methodology isn't working, diagnose before switching:

| Symptom | Root Cause | Fix |
|---------|-----------|-----|
| Long sales cycles with no advancement | MEDDIC components missing — especially Decision Process and Economic Buyer | Double down on MEDDIC, not switch |
| High volume of unqualified demos | Not running BANT before advancing | Add BANT gate before demo stage |
| Lots of discovery calls → no follow-through | Challenger insight isn't landing | Rewrite the "teach" narrative; test with 10 calls |
| Deals stall after proposal | No Champion fighting internally | Back up to Champion development in MEDDIC |

**Rule:** Before switching methodology, identify whether the issue is the methodology or the execution. Most teams execute a methodology poorly before declaring it doesn't work.

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
