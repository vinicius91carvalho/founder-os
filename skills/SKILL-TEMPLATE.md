# [Skill Name]

> One-line description of what this skill helps founders accomplish.

## Diagnostic

Before giving advice, assess the founder's current state in this domain. Ask these questions to route to the right workflow:

### State Assessment

| State | Description | Route To |
|-------|-------------|----------|
| **State 1** | [Description of earliest/least mature state] | Workflow A |
| **State 2** | [Description of intermediate state] | Workflow B |
| **State 3** | [Description of advanced state] | Workflow C |
| **State 4** | [Description of mature/scaling state] | Workflow D |

### Diagnostic Questions

1. [Question that distinguishes State 1 from State 2]
2. [Question that distinguishes State 2 from State 3]
3. [Question that surfaces hidden risks or assumptions]
4. [Question that reveals constraints — time, budget, team, regulatory]

### Routing Logic

```
IF [condition] → Route to Workflow A
ELIF [condition] → Route to Workflow B
ELIF [condition] → Route to Workflow C
ELSE → Route to Workflow D
```

---

## Workflows

### Workflow A: [Name — for State 1]

**Objective:** [What the founder achieves by completing this workflow]

**Steps:**

1. **[Step name]**
   - Action: [What to do]
   - Output: [What this step produces]
   - Decision point: [What determines next action]

2. **[Step name]**
   - Action: [What to do]
   - Output: [What this step produces]
   - Checkpoint: [How to verify this step was done correctly]

3. **[Step name]**
   - Action: [What to do]
   - Output: [What this step produces]
   - Next: [What happens after this step — another workflow, another skill, or done]

### Workflow B: [Name — for State 2]

[Same structure as Workflow A]

### Workflow C: [Name — for State 3]

[Same structure as Workflow A]

### Workflow D: [Name — for State 4]

[Same structure as Workflow A]

---

## Frameworks

### [Framework 1 Name]

**Source:** [Who created this / where it comes from]
**When to use:** [Specific situation where this framework applies]

**Steps:**

1. [Step with specific criteria, thresholds, or examples]
2. [Step with specific criteria, thresholds, or examples]
3. [Step with specific criteria, thresholds, or examples]

**Example application:**
> [Brief worked example showing the framework applied to a real scenario]

### [Framework 2 Name]

[Same structure]

---

## Templates

Reference templates in the `templates/` subdirectory. Each template should be fillable — containing placeholder prompts that guide the founder through completion, not just descriptions of what should go there.

| Template | File | Purpose |
|----------|------|---------|
| [Template 1] | `templates/[filename].md` | [What it helps the founder produce] |
| [Template 2] | `templates/[filename].md` | [What it helps the founder produce] |
| [Template 3] | `templates/[filename].md` | [What it helps the founder produce] |

---

## Decision Trees

### [Decision 1: Common decision founders face in this domain]

```
START: [Initial question]
│
├─ YES → [Next question or action]
│   ├─ [Condition A] → [Recommendation with reasoning]
│   └─ [Condition B] → [Recommendation with reasoning]
│
└─ NO → [Next question or action]
    ├─ [Condition C] → [Recommendation with reasoning]
    └─ [Condition D] → [Recommendation with reasoning]
```

### [Decision 2: Another common decision]

[Same structure]

---

## Anti-Patterns

### 1. [Anti-pattern name]

- **What it looks like:** [Observable behavior]
- **Why founders do it:** [Root cause — usually fear, ignorance, or misaligned incentives]
- **Why it's harmful:** [Specific consequences]
- **What to do instead:** [Concrete alternative action]

### 2. [Anti-pattern name]

[Same structure — minimum 5 anti-patterns per skill]

### 3. [Anti-pattern name]

[Same structure]

### 4. [Anti-pattern name]

[Same structure]

### 5. [Anti-pattern name]

[Same structure]

---

## Interconnections

### Inputs (what this skill receives from other skills)

| From Skill | Data Received | How It's Used |
|------------|---------------|---------------|
| [Skill ##] | [Specific output] | [How this skill uses it] |

### Outputs (what this skill produces for other skills)

| To Skill | Data Produced | Format |
|----------|---------------|--------|
| [Skill ##] | [Specific output] | [How it should be structured for the consuming skill] |

### Context Passing

When this skill completes, pass the following to the orchestrator:
- [Key output 1]
- [Key output 2]
- [Key decision or verdict]

---

## Artifacts

### [Artifact 1 Name]

- **Type:** [Document type — plan, analysis, template, calculator]
- **Generated when:** [Trigger — which workflow step produces this]
- **Format:** Follow `shared/artifact-format.md`
- **Sections:** [List of sections in the artifact]
- **Disclaimer:** [Which disclaimer from `shared/disclaimer-templates.md` to include]
