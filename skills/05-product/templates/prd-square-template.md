# PRD Template — Square/Kevin Yien Format

> Based on the PRD format used at Square, popularized by Kevin Yien. This format prioritizes problem clarity, explicit non-goals, and measurable outcomes over feature lists.

---

## How to Use This Template

Fill every section. Do not skip non-goals — they are as important as what you ARE building. A PRD is not a design spec; it does not describe how to build the feature, only what problem it solves and how you will know it's solved.

**Time to complete:** 2–4 hours for a new feature; 30–60 minutes for a small improvement.
**Reviewers needed before work begins:** Engineering lead, design lead, relevant stakeholders.

---

## PRD: [Feature Name]

**Author:** [Your name]
**Date created:** [YYYY-MM-DD]
**Last updated:** [YYYY-MM-DD]
**Status:** [ ] Draft → [ ] In Review → [ ] Approved → [ ] In Progress → [ ] Shipped
**RICE Score:** [Score from RICE calculation — see roadmap-rice.md]
**Target launch:** [Sprint date or quarter — e.g., "Q2 2024" or "Sprint 12"]
**Engineering owner:** [Name or TBD]
**Design owner:** [Name or TBD]

---

## 1. Problem

> *What specific problem does this solve, for whom, and how do we know it's real?*

### Problem Statement

[Write 2–4 sentences. Must include: (1) the observed behavior or pain, (2) who experiences it and how frequently, (3) the impact — what happens when the problem goes unsolved.]

**Template:**
> We have observed [specific behavior/complaint/data point]. This affects [specific user segment] [frequency — daily/weekly/on every X workflow]. The current workaround is [what users do today], which causes [cost in time/money/frustration/churn]. If we solve this, we expect [measurable outcome].

**Example:**
> We have observed that power users export data to CSV manually every Monday morning to build weekly reports. This affects ~200 business-tier users (37% of revenue base) weekly. The current workaround requires 20–30 minutes of copy-paste work. If we provide scheduled automated exports, we expect to reduce weekly support tickets about exports by 60% and improve business-tier retention by 5%.

**Your problem statement:**
> [Write your 2–4 sentence problem statement here]

### Evidence of the Problem

List the evidence that this problem is real and important:

- **Customer interviews:** [How many customers described this problem, verbatim quote(s) if available]
- **Support tickets:** [Number of tickets in last 90 days mentioning this issue — link to saved filter]
- **Analytics data:** [Event/funnel data showing drop-off, abandonment, or workaround behavior]
- **Sales blockers:** [Have deals been lost or delayed because of this? How many? Revenue at stake?]
- **Competitor analysis:** [Do competitors solve this? If so, how — and why is that insufficient?]

### Affected User Segments

| Segment | Size (approx.) | Frequency of pain | Revenue impact |
|---------|---------------|-------------------|----------------|
| [e.g., Business-tier users] | [e.g., 200 accounts] | [e.g., Weekly] | [e.g., $X ARR] |
| [Segment 2] | [Size] | [Frequency] | [Revenue] |

---

## 2. Solution

> *What are we building, and why is this the right approach?*

### Proposed Solution

[2–3 sentences describing the solution at a conceptual level. Do NOT describe the implementation. Describe the user experience and the outcome.]

**Example:**
> Users will be able to schedule recurring CSV exports from any filtered view. Reports will be emailed at a configured time (daily, weekly, monthly) to a list of recipients. Users can pause, edit, or delete schedules without contacting support.

**Your solution description:**
> [Write your 2–3 sentence solution description here]

### Why This Approach

[Why is this the right solution among alternatives? 3–5 bullets explaining the reasoning.]

- [Reason 1: e.g., "Scheduled email aligns with how users already consume data — their inbox"]
- [Reason 2: e.g., "No new interface paradigm to learn — extends existing export functionality"]
- [Reason 3: e.g., "Fastest path to value — can ship in 2 weeks vs. 6 weeks for a full reporting module"]

### Alternatives Considered

| Alternative | Why We Rejected It |
|-------------|-------------------|
| [Option A: e.g., Build a full in-app reporting module] | [Rationale: e.g., 3x effort, solves more than the current problem, delays shipping by 6 weeks] |
| [Option B: e.g., Partner with a BI tool] | [Rationale: e.g., Adds external dependency, pricing complexity, onboarding friction] |

### User Experience Overview

[Optional: Link to wireframes or mockups. Do not describe implementation details here.]

- Figma link: [URL or "TBD"]
- Key user flow: [Step 1 → Step 2 → Step 3 — describe in plain language]

---

## 3. Non-Goals

> *What will this feature explicitly NOT do in this version? This section is mandatory.*

**Purpose:** Non-goals protect scope and align stakeholders. If something isn't listed as a non-goal, engineers and stakeholders will assume it's in scope.

### This version will NOT:

- [ ] **[Non-goal 1]:** [Describe what's excluded and why]
  - Example: "Support exports in formats other than CSV (e.g., Excel, PDF). Rationale: CSV covers 90% of use cases; additional formats can be added in v2 based on demand."

- [ ] **[Non-goal 2]:** [Describe what's excluded and why]
  - Example: "Allow scheduling for real-time dashboards or live data views. Rationale: Technical complexity; scheduled exports apply only to static filtered views in v1."

- [ ] **[Non-goal 3]:** [Describe what's excluded and why]
  - Example: "Provide analytics on export usage (who viewed, download counts). Rationale: Out of scope for this sprint; can be added later if there's demand."

- [ ] **[Non-goal 4]:** [Add as needed]

- [ ] **[Non-goal 5]:** [Add as needed]

**Explicitly out of scope user segments:**
- [e.g., "Free-tier users — scheduled exports are a business-tier feature"]

---

## 4. Success Metrics

> *How will we know this feature worked? Define measurable outcomes before building.*

### Primary Success Metric

**Metric:** [One specific metric that, if moved, proves this feature worked]
**Current baseline:** [Current value — e.g., "37% of business users export manually each week"]
**Target:** [What we expect it to be 30/60/90 days after launch — e.g., "Reduce manual export behavior by 40%"]
**Measurement method:** [How you will track it — e.g., "Mixpanel event: 'scheduled_export_created'"]
**Timeline:** [When you will evaluate — e.g., "60 days post-launch"]

### Secondary Metrics

| Metric | Current | Target | Measurement |
|--------|---------|--------|-------------|
| [e.g., Support tickets about exports] | [e.g., 15/week] | [e.g., < 6/week] | [Zendesk tag: "export"] |
| [e.g., Business-tier churn rate] | [e.g., 2.5%/month] | [e.g., 2.0%/month] | [Stripe + internal] |
| [Metric 3] | [Baseline] | [Target] | [Source] |

### Counter-Metrics (watch for negative side effects)

| Counter-metric | Why it matters | Acceptable threshold |
|----------------|---------------|---------------------|
| [e.g., Email deliverability complaints] | [Automated emails at scale can trigger spam filters] | [< 0.1% complaint rate] |
| [e.g., Server load during export jobs] | [Scheduled exports could spike compute] | [P95 export time < 30s] |

### Instrumentation Plan

List the events that need to be tracked before this feature can be measured:

- [ ] Event: `[event_name]` — triggered when [user action]
- [ ] Event: `[event_name]` — triggered when [user action]
- [ ] Property: `[property_name]` on `[entity]` — captures [what data]

*Note: Coordinate instrumentation with Skill 08 (Growth & Analytics) before engineering begins.*

---

## 5. User Stories

> *Break the feature into sprint-ready stories. Each story must pass INVEST criteria.*

See `templates/user-stories-invest.md` for INVEST validation checklist.

### Epic: [Feature Name]

**Epic goal:** [1 sentence — what the user can do when all stories are complete]

---

**Story 1:** [Short story title]

```
As a [specific user type],
I want to [action],
So that [outcome/benefit].
```

**Acceptance Criteria:**
- [ ] Given [precondition], when [action], then [expected result]
- [ ] Given [precondition], when [action], then [expected result]
- [ ] Given [edge case], when [action], then [expected result — graceful handling]

**INVEST check:** [ ] I [ ] N [ ] V [ ] E [ ] S [ ] T
**Effort estimate:** [e.g., 2 story points / 3 days]
**Dependencies:** [Other stories or external systems this depends on, or "None"]

---

**Story 2:** [Short story title]

```
As a [specific user type],
I want to [action],
So that [outcome/benefit].
```

**Acceptance Criteria:**
- [ ] Given [precondition], when [action], then [expected result]
- [ ] Given [precondition], when [action], then [expected result]

**INVEST check:** [ ] I [ ] N [ ] V [ ] E [ ] S [ ] T
**Effort estimate:** [e.g., 1 story point / 1 day]
**Dependencies:** [Story 1 must ship first, or "None"]

---

**Story 3:** [Add as many stories as needed]

*[Repeat story structure above]*

---

## 6. Technical Considerations

> *Not a technical spec — flag constraints and risks for engineering to investigate.*

**Note:** This section is written by the PM with input from engineering. Engineering owns the technical design; this section surfaces known risks and constraints.

### Known Technical Constraints

- [e.g., "Current export infrastructure is synchronous; scheduled exports will require async job queue — confirm approach with backend lead"]
- [e.g., "Email sending must comply with CAN-SPAM; use existing Sendgrid integration, not ad hoc SMTP"]
- [Constraint 3]

### External Dependencies

| Dependency | Owner | Risk Level | Fallback |
|------------|-------|-----------|----------|
| [e.g., Sendgrid API] | [Infrastructure team] | [Low — existing integration] | [Queue and retry on failure] |
| [Dependency 2] | [Owner] | [Risk level] | [Fallback plan] |

### Data & Privacy Considerations

- [e.g., "Exported data may contain PII — ensure export emails are sent only to verified account owners"]
- [e.g., "Scheduled export job runs in background — ensure user credentials are not cached in job queue"]
- [Consideration 3]

### Performance & Scale

- [e.g., "Assume up to 500 concurrent scheduled exports at peak — discuss with engineering if this hits infra limits"]
- [Scale consideration 2]

---

## 7. Open Questions

> *Unresolved questions that must be answered before or during development.*

| # | Question | Owner | Deadline | Resolution |
|---|----------|-------|----------|------------|
| 1 | [e.g., Should free users see scheduled exports as a locked/upsell feature?] | [PM] | [Date] | [ ] Open / [Answer when resolved] |
| 2 | [e.g., What happens if export fails — email user? Silent retry?] | [Eng + PM] | [Date] | [ ] Open |
| 3 | [Add as needed] | | | |

---

## 8. Stakeholder Sign-Off

> *PRD requires explicit sign-off before sprint planning begins.*

| Stakeholder | Role | Sign-off | Date |
|-------------|------|---------|------|
| [Name] | Engineering Lead | [ ] Approved / [ ] Changes Needed | [Date] |
| [Name] | Design Lead | [ ] Approved / [ ] Changes Needed | [Date] |
| [Name] | [Other stakeholder] | [ ] Approved / [ ] Changes Needed | [Date] |

**Notes from review:**
> [Capture any changes requested or conditions on approval]

---

## Revision History

| Version | Date | Author | Summary of Changes |
|---------|------|--------|-------------------|
| v1.0 | [YYYY-MM-DD] | [Name] | Initial draft |
| v1.1 | [YYYY-MM-DD] | [Name] | [What changed] |

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
