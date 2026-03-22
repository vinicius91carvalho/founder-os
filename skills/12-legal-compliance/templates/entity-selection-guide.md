# Entity Selection Guide

> **Purpose:** Help founders understand the key factors in entity selection and navigate the decision — then take those decisions to an attorney for proper implementation.

---

> **LEGAL DISCLAIMER:** This guide is educational and informational only. It does not constitute legal advice. Entity selection has significant legal, tax, and structural consequences that vary by jurisdiction. **Consult a qualified attorney and tax advisor before forming any business entity.** The information below reflects general practices in the United States and may not apply to other jurisdictions.

---

## Why Entity Selection Matters

The entity you form determines:
- Who is liable for business debts and lawsuits
- How business income is taxed (corporate tax vs. pass-through)
- How you can issue equity to founders, employees, and investors
- Who can invest and on what terms
- How the business is governed and decisions are made
- How complex and costly administration is

**The cost of getting this wrong:** Changing entity types or restructuring is expensive and time-consuming. Converting an LLC to a C-Corp before a VC round can take weeks and cost $15,000–$30,000 in legal fees. Doing it right at formation is far cheaper.

---

## Decision Tree

```
STEP 1: Are you planning to raise venture capital?
│
├─ YES → STOP HERE: Delaware C-Corporation.
│
│   This is not a creative decision. 95%+ of venture-backed companies
│   are Delaware C-Corps. VCs require it. Their attorneys know it.
│   The law is settled. Do not try to negotiate a different structure.
│
│   → Skip to: Delaware C-Corp formation checklist below
│
└─ NO → Continue to Step 2
│
STEP 2: Will you have cofounders or issue equity to employees?
│
├─ YES → Delaware C-Corp is still the recommended default.
│
│   C-Corporations handle equity compensation (stock options, restricted stock)
│   far better than LLCs. If equity is central to your model, C-Corp is simpler.
│
│   Exceptions exist (Wyoming LLC with equity provisions, etc.) but require
│   specialized legal advice. Don't deviate from C-Corp without attorney input.
│
│   → Skip to: Delaware C-Corp formation checklist below
│
└─ NO → Continue to Step 3
│
STEP 3: Do you want pass-through taxation (business income taxed at personal level)?
│
├─ YES → LLC (most flexible pass-through option)
│
│   For a single-founder or small team business not raising VC:
│   - Wyoming LLC: low maintenance fees, strong privacy, no state income tax
│   - Your home state LLC: simpler administration if operating there
│   - Delaware LLC: good option if you may add investors later (not VCs)
│
│   Note: If S-Corp election is considered, consult a tax attorney.
│   S-Corps have strict requirements: max 100 shareholders, US persons only,
│   one class of stock — these restrictions are incompatible with growth.
│
└─ NO → C-Corp in your state of choice (usually Delaware)
```

---

## Entity Comparison Table

| Factor | Delaware C-Corp | Delaware LLC | Wyoming LLC | S-Corp |
|--------|----------------|-------------|-------------|--------|
| **VC financeable** | Yes | Rarely | No | No |
| **Pass-through tax** | No (double tax) | Yes | Yes | Yes |
| **Employee stock options** | Standard, simple | Complex | Complex | Restricted |
| **Shareholders** | Unlimited | Unlimited | Unlimited | Max 100 |
| **Shareholder nationality** | Any | Any | Any | US persons only |
| **Classes of stock** | Multiple | Membership units | Membership units | One class only |
| **Board required** | Yes | No | No | Yes |
| **Delaware franchise tax** | Yes ($400+/year) | No | No | Depends |
| **State income tax** | No (if no DE activity) | No | No | Depends |
| **Standard for startups** | Yes | Sometimes | No | No |

---

## Delaware C-Corp Formation Checklist

*This is an educational checklist. Work with a startup attorney to complete these steps.*

### Pre-Formation
- [ ] Confirm all founders are agreed on equity split and vesting schedule
- [ ] Identify the registered agent in Delaware (required; ~$50–150/year)
- [ ] Select a startup attorney (see attorney selection guidance in Skill 12 SKILL.md)
- [ ] Choose company name and verify availability in Delaware

### Formation Documents
- [ ] File Certificate of Incorporation with Delaware Division of Corporations
  - Standard terms: unlimited authorized shares of common stock (or preferred if warranted)
  - Par value: $0.00001 per share (minimizes Delaware franchise tax)
  - Typical authorized shares at formation: 10,000,000–20,000,000
  - Filing fee: ~$89 standard / $1,000 expedited
- [ ] Adopt Bylaws (governs company operations, voting, meetings)
- [ ] Hold initial Board Meeting or execute written consent:
  - Approve bylaws
  - Elect officers (President/CEO, Secretary, Treasurer at minimum)
  - Authorize share issuance
  - Open bank account

### Founder Stock Issuance
- [ ] Issue founder shares per agreed equity split
- [ ] Apply vesting schedule (4-year with 1-year cliff standard)
- [ ] Sign Stock Purchase Agreement for each founder
- [ ] **FILE 83(b) ELECTION WITHIN 30 DAYS OF GRANT DATE** — see below
- [ ] Sign PIIA (Proprietary Information and Inventions Assignment) for each founder

### Tax and Regulatory
- [ ] Obtain Employer Identification Number (EIN) from IRS (free, same day at IRS.gov)
- [ ] Register in your home state if operating there (foreign corporation registration)
- [ ] Open business bank account (requires EIN and incorporation documents)
- [ ] Set up accounting system (QuickBooks, see Skill 10)

### Annual Maintenance (Ongoing)
- [ ] File Delaware Annual Report and pay franchise tax (due March 1 each year)
- [ ] File foreign qualification annual reports in other states where you have employees
- [ ] Hold annual Board meeting or execute written consents
- [ ] Maintain corporate minute book

---

## The 83(b) Election — Detailed Guide

**What it is:** An IRS form electing to pay tax on restricted stock at the time of grant, rather than at each vesting event.

**Why it matters:** Founder shares are typically issued as "restricted stock" — subject to vesting. Without the 83(b) election:
- At each vesting event, the IRS treats newly vested shares as compensation income
- Tax is owed on the fair market value at vesting (which may be substantial by the time of cliff vesting)
- Example: 1M shares vest at year 1 cliff when company is worth $5M ($5/share). Without 83(b): owe income tax on $5M × 1M shares = taxes on $5M × your rate.

**With the 83(b) election:**
- You elect to be taxed at grant date (when shares are worth, say, $0.0001 each)
- Tax at grant: essentially $0
- Future appreciation is taxed as capital gains when shares are sold (lower rate, and only when you actually receive cash)

**The 30-day rule:** The election must be filed with the IRS within 30 days of the grant date. This deadline is absolute — there are no extensions. Missing it cannot be fixed retroactively.

**How to file:**
1. Complete Form 83(b) — a brief one-page form
2. Sign and date it within 30 days of the grant date
3. Mail to the IRS service center where you file your personal tax return (certified mail, return receipt)
4. Send a copy to the company (keeps it in corporate records)
5. Attach a copy to your personal tax return for the year of the election
6. Keep the certified mail receipt and IRS acknowledgment permanently

**Verify with your attorney that:**
- The form is complete and accurate
- The grant date is correctly identified
- The filing was actually submitted on time
- Copies are properly maintained

---

## State Selection: Delaware vs. Home State

**Delaware advantages:**
- Court of Chancery: specialized business court, predictable outcomes
- 200+ years of corporate case law
- Investor and attorney familiarity — nationwide ecosystem
- Strong precedent on fiduciary duties, M&A, and governance

**Home state advantages:**
- No foreign qualification requirement (saves $500–2,000/year in fees and filing burden)
- May be simpler to maintain if you never operate in multiple states

**Decision rule:**
- Raising VC: Delaware always
- < 3 employees and no plans to raise: home state LLC may be simpler
- Somewhere in between: ask your attorney

---

> **LEGAL DISCLAIMER:** This guide is educational only and does not constitute legal advice. Entity selection has significant legal and tax consequences. Consult a qualified attorney and tax advisor licensed in your jurisdiction before forming any business entity. Laws vary by jurisdiction and change frequently.
