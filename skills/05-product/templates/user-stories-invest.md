# User Stories with INVEST Checklist

> User stories describe what a user wants to accomplish and why. INVEST is a validation checklist that ensures stories are sprint-ready before they enter planning.

---

## What Makes a Good User Story

A user story answers three questions:
1. **Who** is the user? (be specific — not "a user", but "an admin user" or "a first-time visitor")
2. **What** do they want to do?
3. **Why** do they want to do it? (the outcome, not the feature)

**Standard format:**
```
As a [specific type of user],
I want to [take a specific action],
So that [I achieve a specific outcome or benefit].
```

**Acceptance criteria format (Given/When/Then):**
```
Given [precondition — the state of the system before the action],
When [the user takes a specific action],
Then [the expected observable result].
```

---

## INVEST Criteria Checklist

Before any story enters sprint planning, validate it against all 6 INVEST criteria:

### I — Independent

**Question:** Can this story be built and shipped without another story being completed first?

**Check:**
- [ ] This story does not depend on an unshipped story (or the dependency is in the same sprint)
- [ ] This story can be tested and verified on its own
- [ ] If there is a dependency, it is explicitly documented below the story

**Common violations:**
- "As a user, I want to export filtered reports" — depends on "filter reports" being shipped first
- "As a user, I want to receive email notifications" — depends on notification preferences story

**Fix:** Break into two stories. Ship the dependency first, or combine if they're tiny.

---

### N — Negotiable

**Question:** Is the implementation approach flexible, or is the story prescribing a technical solution?

**Check:**
- [ ] The story describes WHAT the user wants, not HOW to build it
- [ ] Engineers have freedom to choose the implementation approach
- [ ] If a specific implementation is required (regulatory, security), it's documented as a constraint, not in the story itself

**Common violations:**
- "As a user, I want a dropdown menu (using React Select v5) to filter by category" — prescribes the component library
- "As a user, I want data cached in Redis so the dashboard loads faster" — prescribes the caching mechanism

**Fix:** Remove implementation details. Move technical constraints to the "Technical Considerations" section of the PRD.

---

### V — Valuable

**Question:** Does this story deliver value to the end user — not just to the engineering team?

**Check:**
- [ ] A real user would recognize the value of this story
- [ ] The "so that" clause describes a user outcome, not an internal benefit
- [ ] The story is not purely a technical refactor dressed up as a user story

**Common violations:**
- "As a developer, I want to refactor the authentication module so it's easier to maintain" — internal value only
- "As a user, I want the database schema to support multi-tenancy" — technical concern

**Fix:** If the story is internal/technical, write it as a task or spike, not a user story. If there IS user value (refactor enables a user-facing improvement), describe the user-facing outcome.

---

### E — Estimable

**Question:** Can engineers give a rough estimate for this story (in hours, days, or story points)?

**Check:**
- [ ] Engineers can estimate this story without major unknowns
- [ ] If there are unknowns, a spike (time-boxed research task) has been scheduled first
- [ ] The story is specific enough that two engineers would give similar estimates

**Common violations:**
- "As a user, I want better search" — too vague for any estimate
- "As an enterprise admin, I want SSO integration" — too large; needs decomposition

**Fix:** If the story is too vague, add acceptance criteria until it becomes estimable. If it's too large, decompose it into smaller stories.

---

### S — Small

**Question:** Can this story be completed in a single sprint (1–2 weeks)?

**Check:**
- [ ] This story can be built, reviewed, tested, and shipped within one sprint
- [ ] The story is not an epic disguised as a user story
- [ ] Estimate is ≤ [your team's sprint capacity / 3] — rough rule: no single story should consume more than 1/3 of sprint capacity

**Common violations:**
- "As a user, I want a full reporting module" — this is an epic with 10+ stories
- "As an admin, I want to configure all notification settings" — 5+ distinct settings = 5+ stories

**Fix:** Decompose into smaller stories using the "thin slice" approach — each slice delivers some vertical value, even if minimal.

**Thin slice rule:** Instead of building all of a feature, build ONE path through it end-to-end. Example: instead of "full notification settings," start with "toggle email notifications on/off."

---

### T — Testable

**Question:** Are there clear acceptance criteria that a QA engineer could use to confirm "done"?

**Check:**
- [ ] At least one Given/When/Then acceptance criterion is written
- [ ] Each criterion is observable — can be verified by looking at the UI or checking a system state
- [ ] Edge cases and error states are included (not just the happy path)

**Common violations:**
- "The UI should feel faster" — not measurable
- "The search should return better results" — no definition of "better"
- Story with no acceptance criteria at all

**Fix:** Write at least one happy-path Given/When/Then. Then ask "what could go wrong?" and write acceptance criteria for those cases too.

---

## Story Writing Guide

### Step 1: Identify the User

Do not use "a user." Be specific:
- Admin user
- Free-tier user who has not upgraded
- First-time visitor (no account)
- Power user (uses the product daily)
- [Your product's specific user types]

### Step 2: Describe the Action

Use action verbs. Describe what the user does, not what the system does.

**Weak:** "I want notifications to work better"
**Strong:** "I want to receive an email notification within 5 minutes when someone comments on my project"

### Step 3: State the Outcome (the "So That")

The "so that" is the WHY. It should describe a user benefit, not a feature benefit.

**Weak:** "So that the notification feature is complete"
**Strong:** "So that I can respond quickly to collaborators without checking the app manually"

### Step 4: Write Acceptance Criteria

For every story:
1. Write the happy path (the normal successful case)
2. Write at least one error state (what happens when something goes wrong)
3. Write at least one edge case (boundary conditions)

---

## Story Templates

### Template 1: Standard Feature Story

```
As a [specific user type],
I want to [specific action],
So that [specific outcome].

Acceptance Criteria:
- Given [normal starting state], when [I take the action], then [expected result]
- Given [error condition], when [I take the action], then [system handles it gracefully with message: "[exact error text]"]
- Given [edge case — e.g., empty state, maximum limit], when [I take the action], then [expected behavior]

INVEST Check:
[ ] I — Independent (no unshipped dependencies, or dependency documented)
[ ] N — Negotiable (no implementation details in story text)
[ ] V — Valuable (delivers user outcome, not just internal value)
[ ] E — Estimable (engineers can estimate without major unknowns)
[ ] S — Small (completable in one sprint)
[ ] T — Testable (acceptance criteria are observable and specific)

Effort Estimate: [Story points or days]
Dependencies: [Story IDs or "None"]
Priority: [RICE score from roadmap, or High/Medium/Low]
Sprint: [Target sprint or "Backlog"]
```

### Template 2: Bug Fix Story

```
As a [user type who encounters this bug],
I want [the correct behavior],
So that [I can accomplish my goal without the workaround].

Current behavior (the bug):
[Describe what currently happens]

Expected behavior (the fix):
[Describe what should happen]

Steps to reproduce:
1. [Step 1]
2. [Step 2]
3. [Observe incorrect behavior]

Acceptance Criteria:
- Given [the scenario where the bug occurs], when [I take the action], then [the correct behavior now occurs]
- Given [the bug scenario], when [I take the action], then [the old incorrect behavior does NOT occur]

Affected users: [Estimate / segment]
Severity: [P1 = blocks key workflow / P2 = significant degradation / P3 = minor inconvenience]
```

### Template 3: Technical Story (Infrastructure, Refactor)

```
Technical Task: [Name]
Type: [ ] Refactor [ ] Infrastructure [ ] Performance [ ] Security [ ] Spike

Context:
[Why is this work needed? What user-facing improvement does it enable, or what risk does it mitigate?]

Scope:
[What will be changed? What will NOT be changed?]

Acceptance Criteria:
- [Observable verification that the work is done correctly]
- [Performance benchmark or test that passes]
- [No regression in existing functionality — specify test suite]

Effort Estimate: [Hours or days]
Risk: [What could go wrong? Mitigation plan?]
```

### Template 4: Spike / Research Story

```
Spike: [Research question]
Time-box: [Maximum hours or days to spend — do not exceed]

Question to answer:
[Specific question this spike must answer — not "explore X" but "determine whether X is feasible and estimate effort"]

Output required:
[ ] Feasibility verdict (Go/No-Go)
[ ] Effort estimate for the actual implementation story
[ ] Technical approach recommendation
[ ] Risks and unknowns identified

Acceptance criteria:
- The spike produces a written recommendation (not just verbal)
- Engineers who were not involved in the spike can read the output and give an estimate
```

---

## Story Decomposition Patterns

When a story is too large (fails S), use one of these decomposition patterns:

### Pattern 1: Thin Slice (recommended)
Build one vertical slice end-to-end before adding breadth.
- Epic: "User can manage notification preferences"
- Slice 1: "User can toggle all notifications on/off"
- Slice 2: "User can toggle email vs. in-app per category"
- Slice 3: "User can set notification frequency (instant, daily digest)"

### Pattern 2: Happy Path First
Build the successful path, then handle errors and edge cases.
- Story 1: "User can submit a form successfully" (happy path)
- Story 2: "Form validates inputs and shows errors" (validation)
- Story 3: "Form handles server errors gracefully" (error states)

### Pattern 3: Simplify Scope (MVP slice)
Identify the minimum version that delivers the core value.
- Full: "User can filter, sort, and search the table"
- MVP: "User can search the table by name" (most common use case)
- Later: Add filter and sort after measuring usage

### Pattern 4: Spike First
If the story can't be estimated, spike it first.
- Spike: "Determine feasibility and estimate effort for SSO integration" (2-day timebox)
- Result: Now you can write the real implementation stories with accurate estimates

---

## Quality Checklist Before Sprint Planning

For each story entering sprint planning:

- [ ] Written in standard user story format (As a / I want / So that)
- [ ] At least one Given/When/Then acceptance criterion
- [ ] At least one error/edge case acceptance criterion
- [ ] INVEST: all 6 criteria checked
- [ ] Effort estimate agreed upon by at least one engineer
- [ ] Dependencies identified and either resolved or scheduled in same sprint
- [ ] Story is linked to parent PRD
- [ ] Success metric from PRD is instrumented (or instrumentation story is in sprint)

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
