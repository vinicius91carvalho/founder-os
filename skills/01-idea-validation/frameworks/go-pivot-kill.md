# GO / PIVOT / KILL Decision Framework

> A structured decision framework for reaching a defensible verdict after customer discovery. Uses validation scorecard data, PMF signals, and market evidence to determine whether to proceed, adjust, or abandon an idea.

---

## Framework Overview

The GO/PIVOT/KILL decision is the primary output of the Idea Validation skill. It should be made with evidence, not optimism. The most common failure mode is converting a PIVOT into a GO through motivated reasoning — founders who have invested months in an idea reinterpret weak signals as strong ones.

**This framework is designed to resist that bias by:**
1. Requiring pre-defined kill criteria (set before interviews, not after)
2. Separating the scoring from the interpretation
3. Providing a structured PIVOT diagnosis that prevents premature KILL decisions
4. Documenting the evidence so the decision can be reviewed by advisors

---

## Decision Thresholds

All thresholds are based on the Validation Scorecard (0–90 points).

| Score | Verdict | Action |
|---|---|---|
| 68–90 | **GO** | Proceed to Skill 02 (Business Model) |
| 54–67 | **Soft PIVOT** | Specific dimension is broken — identify it and fix it with 5 targeted interviews |
| 36–53 | **Hard PIVOT** | Multiple dimensions failing — requires meaningful hypothesis reformulation |
| 0–35 | **KILL** | Evidence doesn't support this idea in this form for this customer |

**Important calibration:** These thresholds assume you've completed ≥ 10 high-quality interviews with strangers. If you have fewer, or if most were with friends/network, discount your score by 10–15 points — the signal is less reliable.

---

## GO: What Strong Validation Looks Like

A genuine GO verdict requires ALL of the following:

### Hard GO criteria (all must be true)

- [ ] **Unsolicited problem mention**: ≥ 50% of subjects mentioned the problem without prompting
- [ ] **Specific incident recall**: ≥ 70% of subjects could describe a specific incident when the problem affected them — with dates, consequences, and context
- [ ] **Active workaround**: ≥ 50% of subjects described a current workaround or prior tool purchase
- [ ] **Prior spend**: At least one third of subjects spend money (even indirectly) addressing this problem today
- [ ] **Plausible TAM**: Evidence of ≥ $500M market, even with conservative assumptions
- [ ] **Falsifiable hypothesis met**: The specific positive signal you defined in your hypothesis before interviews was observed

### Soft GO criteria (at least 2 must be true)

- [ ] At least one subject committed to a waitlist, pre-order, or follow-up conversation
- [ ] At least one subject asked for referrals when told you were talking to more customers
- [ ] Desk research shows VC-funded competitors (market validation) or rapidly growing search volume
- [ ] Founder-market fit score ≥ 3/5

**GO: Example profile:**
> 12 interviews completed, 10 with strangers. 8/12 mentioned invoice reconciliation problems within 10 minutes unprompted. 7/12 described specific month-end incidents. 9/12 use spreadsheets + manual email as current workaround. 5/12 pay a VA or contractor to help. 2 subjects asked to be on a waiting list. TAM: 2M SMB companies × 60% with this problem × $1,200/year = $1.44B. Score: 74/90. Verdict: GO.

---

## PIVOT: Diagnosis and Variant Generation

PIVOT is not "we need to completely change everything." PIVOT means one specific thing is broken. Identifying the specific broken dimension determines what kind of pivot is needed.

### Pivot Diagnosis Matrix

| Low-Scoring Section | Root Cause | Pivot Type | Action |
|---|---|---|---|
| Problem Frequency (1.1) low | Wrong customer segment — you're talking to people who don't experience this problem at the same intensity | **Segment pivot** | Identify a sub-segment that experiences the problem more acutely. Run 5 targeted interviews |
| Problem Intensity (1.2) low | Problem exists but isn't painful enough to motivate buying behavior | **Severity pivot** | Find a context where the same problem has higher stakes (e.g., from SMBs to regulated industries where the consequence is compliance failure) |
| Workarounds (1.3) low | People know the problem exists but aren't trying to solve it | **Urgency pivot** | Either the problem isn't mission-critical enough, or customers lack awareness of the cost. Explore whether a triggering event (e.g., audit, funding round) makes it urgent |
| Willingness to Pay (1.4) low | Right problem, wrong pricing model or wrong buyer | **Monetization pivot** | Explore whether a different buyer (e.g., company vs. individual), different pricing model (subscription vs. usage), or different anchor (ROI framing vs. cost framing) changes willingness |
| Market Size (2.1) low | Problem is real but niche | **Market pivot** | Determine whether this can be a wedge into a larger adjacent market. If yes, proceed as beachhead. If no, consider KILL |
| Competitor Gaps (2.2) low | Good solutions already exist | **Differentiation pivot** | Map the 1–2 dimensions where competitors genuinely fail. Build only there |
| Market Signals (2.3) low | Demand is real but early | **Timing pivot** | May be a market timing problem — the problem exists but the infrastructure/awareness/regulation isn't there yet. Evaluate whether a 2-year wait changes the math |
| Founder-Market Fit (3.x) low | Right idea, wrong team | **Team pivot** | Identify a co-founder or early hire who supplies the missing dimension. This is fixable — unlike market problems |

### Pivot Hypothesis Template

After diagnosing the broken dimension, write a new pivot hypothesis:

**Current hypothesis:**
> [Failing hypothesis as originally stated]

**Broken dimension:**
> [Which specific scorecard section is the primary failure point]

**Root cause:**
> [Why is that dimension failing? What does the evidence actually say?]

**Pivot hypothesis:**
> "We now believe [revised customer segment] experiences [revised or reframed problem] when [revised situation]. We'll confirm this pivot if [specific positive signal]. We'll abandon this pivot if [specific kill signal]."

**Evidence to preserve from current hypothesis:**
> [What signals were positive and should carry forward to the new hypothesis? Don't discard good data during a pivot]

**Test plan:**
> Run [N] interviews targeting [revised segment]. Focus questions on [specific dimension being tested]. Decide within [timeframe].

**PIVOT: Example profile:**
> 10 interviews with SMB founders about vendor payment automation. Score: 48/90. Failure: Section 1.4 (WTP) = 2/10 — founders acknowledged the problem but said "we just handle it manually, it's not worth a tool." Root cause: SMBs don't buy SaaS for this — they use their bookkeeper. Pivot hypothesis: Accounting firms serving 10–50 SMB clients have the same problem but at 10x scale and pay for tools. Pivot type: Segment pivot from SMB buyers to accounting firm buyers. Re-run 5 interviews with accounting firm ops managers.

---

## KILL: When to Stop

KILL is the hardest verdict to reach and the most valuable one. The cost of continuing to pursue a KILL-grade idea is measured in years, not weeks.

### Hard KILL criteria (any one is sufficient)

- **Zero problem recognition**: After 10+ well-conducted interviews with your target segment, fewer than 3 subjects described the problem in their own words without prompting
- **No workarounds**: No subject described a workaround, prior tool purchase, or prior search for a solution — suggesting the problem isn't acute enough to motivate action
- **Zero willingness to pay**: No subject spent any money or time on the problem, and no subject would commit to even a waitlist
- **Pre-defined kill criterion met**: The specific negative signal you defined before interviews was observed at or above your threshold
- **Strong existing solution**: A dominant incumbent solves the problem well, has high customer satisfaction, and your differentiation advantage is unclear

### KILL vs. PIVOT disambiguation

**KILL**, not PIVOT, when:
- You've run 2+ rounds of interviews with reformulated hypotheses and signal is not improving
- The market size is below $100M with no plausible path to expansion
- The problem is real but a dominant, well-funded incumbent already owns the solution and customer satisfaction is high
- You've been unable to find even 5 people willing to talk to you about the problem — inaccessibility of customers is itself a KILL signal

**PIVOT**, not KILL, when:
- Some signal exists — at least some subjects expressed the problem — but the current customer segment, pricing, or framing isn't working
- You've only run one round of interviews
- The failure is in founder-market fit (fixable with the right hire) rather than in market or problem

### KILL documentation

When you KILL an idea, document:

1. **Hypothesis tested:** [What did you believe?]
2. **Evidence collected:** [Interviews conducted, desk research done]
3. **Specific kill signals:** [What specifically caused the KILL verdict?]
4. **What you learned:** [Customer behavior, market characteristics, assumptions that proved wrong]
5. **Adjacent ideas worth exploring:** [What did you learn that might point toward a better idea?]

**KILL: Example profile:**
> 14 interviews with gym owners about member retention software. Score: 28/90. Key signals: 11/14 subjects said "we already use [incumbent] and it works fine." 0 subjects described unsolicited workarounds. 2 subjects described minor frustrations with [incumbent] but neither was willing to switch. Market dominated by one well-funded incumbent. Verdict: KILL. Learnings: Gym owners do have tech budget, but they're locked in. Adjacent opportunity: fitness studios (yoga, pilates, CrossFit) underserved by enterprise-focused incumbents. Carry hypothesis forward with studio segment.

---

## PMF Signals Reference

For founders who have an MVP (Workflow D), these are the specific signals that indicate Product-Market Fit — distinct from initial traction:

### Strong PMF signals (each is meaningful on its own)

| Signal | What it means | How to measure |
|---|---|---|
| **Unsolicited referrals** | Users are telling their network without being asked | Track signup source — "How did you hear about us?" |
| **Interrupted pitches** | Users stop your pitch to ask "when can I buy this?" | Note in interview transcripts |
| **Pre-purchase on mockups** | Users offer to pay before the product is built | Track payment commitments before launch |
| **Workaround retention** | Users continue using your MVP despite obvious missing features | Churn rate of early users; feature request patterns (asking for more, not complaining about what's there) |
| **Sean Ellis score ≥ 40%** | When asked "how disappointed would you be if this product disappeared?", 40%+ say "very disappointed" | Run this specific survey after users have experienced core value |
| **Organic growth without spending** | User count growing without paid acquisition or active promotion | Track acquisition channel breakdown |

### Weak traction signals (not PMF — don't over-interpret)

| Signal | Why it's not PMF | What it actually measures |
|---|---|---|
| High signup rate from launch push | Launch energy, not sustained demand | Product Hunt / press-driven curiosity |
| "This is cool" social media mentions | Curiosity, not need | Novelty appeal |
| Friends and network using it | Social obligation, not genuine need | Network proximity |
| Revenue in month 1 from founders' network | Personal relationships, not market pull | Network monetization |
| Press coverage | Visibility, not product-market fit | Brand awareness |

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
