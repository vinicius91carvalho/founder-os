# Vesting Schedule Template and Calculator

> **Purpose:** Document, visualize, and communicate vesting schedules for founders and employees. Includes worked examples and a calculation framework.

---

> **LEGAL DISCLAIMER:** This template is educational only. Vesting schedules have significant legal, tax, and financial consequences. All equity grants must be properly documented with attorney-drafted agreements. The 83(b) election (for restricted stock) must be filed within 30 days — this template explains what it is but cannot file it for you. Consult a qualified startup attorney and tax advisor.

---

## Vesting Fundamentals

**What vesting is:** Vesting is the process by which equity is "earned" over time. Founders and employees are typically granted their full equity at hire, but it becomes unconditionally theirs only after vesting. Unvested shares are subject to company repurchase if the person leaves before fully vesting.

**Why vesting exists:** Vesting protects the company (and other shareholders) from a situation where a cofounder leaves in month 6 but walks away with 25% of the company. It aligns incentives: equity is earned by staying and contributing.

**The standard (4-year / 1-year cliff):**
- Year 1: 25% vests at the 1-year anniversary (the "cliff")
- Years 2–4: Remaining 75% vests monthly (1/36 per month = ~2.08%/month)
- Total: 100% vested at the 4-year mark

---

## Section 1: Vesting Schedule for [Name / Role]

**Grant recipient:** [Name]
**Role:** [Job Title]
**Grant type:** [Restricted Stock / Stock Option (ISO or NSO)]
**Grant date:** [YYYY-MM-DD]
**Total shares granted:** [X,XXX,XXX shares]
**Vesting schedule:** [4-year with 1-year cliff / Custom — describe]
**Exercise price (options only):** $[X.XXXX] per share (= 409A FMV at grant date)
**Expiration date (options only):** [10 years from grant date = YYYY-MM-DD]
**83(b) election (restricted stock only):** [ ] Filed on [Date] / [ ] PENDING — DEADLINE: [Grant date + 30 days]

---

## Section 2: Vesting Schedule Calculation

### Standard 4-Year, 1-Year Cliff

*Fill in: Grant Date, Total Shares, and Cliff Date (= Grant Date + 1 year)*

**Formula:**
- Cliff shares: Total Shares × 25% = [X,XXX] shares vest at cliff
- Monthly vest post-cliff: (Total Shares × 75%) ÷ 36 months = [X,XXX] shares/month
- Monthly vest as % of total: 75% ÷ 36 = ~2.083% per month

### Year-by-Year Summary

| Year | Shares Vesting | Cumulative Vested | % Vested | Date |
|------|---------------|------------------|---------|------|
| Year 1 (cliff) | [25% × total] | [25% × total] | 25% | [Grant date + 1 year] |
| Year 2 (monthly) | [12 × monthly] | [25% + 25% = 50%] | 50% | [Grant date + 2 years] |
| Year 3 (monthly) | [12 × monthly] | [75%] | 75% | [Grant date + 3 years] |
| Year 4 (monthly) | [12 × monthly] | [100%] | 100% | [Grant date + 4 years] |

### Month-by-Month Detail (First 18 Months)

| Month | Date | Shares Vesting | Cumulative Vested | % Vested |
|-------|------|---------------|------------------|---------|
| 1–11 | [Each month] | 0 | 0 | 0% |
| 12 (Cliff) | [Date] | [25% of total] | [25% of total] | 25% |
| 13 | [Date] | [Monthly amount] | [Cliff + 1×monthly] | [%] |
| 14 | [Date] | [Monthly amount] | [Cliff + 2×monthly] | [%] |
| 15 | [Date] | [Monthly amount] | [Cliff + 3×monthly] | [%] |
| 16 | [Date] | [Monthly amount] | | |
| 17 | [Date] | [Monthly amount] | | |
| 18 | [Date] | [Monthly amount] | [50%] | 50% |

---

## Section 3: Worked Examples

### Example 1: Founder with 5,000,000 Shares, 4-Year / 1-Year Cliff

| Milestone | Date | Cumulative Vested | % Vested |
|-----------|------|------------------|---------|
| Grant date | Jan 1, 2025 | 0 | 0% |
| Month 6 | Jul 1, 2025 | 0 | 0% |
| Month 11 | Dec 1, 2025 | 0 | 0% |
| **1-Year Cliff** | **Jan 1, 2026** | **1,250,000** | **25%** |
| Month 13 | Feb 1, 2026 | 1,354,167 | 27.08% |
| Month 18 | Jul 1, 2026 | 2,500,000 | 50% |
| Month 24 | Jan 1, 2027 | 2,500,000 | 50% |
| Month 30 | Jul 1, 2027 | 3,750,000 | 75% |
| Month 36 | Jan 1, 2028 | 3,750,000 | 75% |
| **Full vest** | **Jan 1, 2029** | **5,000,000** | **100%** |

**Monthly vest post-cliff:** 5,000,000 × 75% ÷ 36 = 104,167 shares/month

**Scenario: Founder departs at Month 20 (August 2026):**
- Vested shares: 1,250,000 (cliff) + 8 months × 104,167 = 2,083,336 shares (41.7%)
- Unvested shares: 2,916,664 shares (subject to company repurchase option at original price)
- Remaining cliff for a new co-founder hire who replaces this founder: those unvested shares typically return to the option pool

---

### Example 2: Employee with 200,000 Stock Options, 4-Year / 1-Year Cliff

**Grant details:**
- Grant date: March 1, 2025
- Total options: 200,000 shares
- Exercise price (= 409A): $0.50/share
- Total cost to exercise all: $100,000

| Milestone | Date | Options Vested | Cumulative | Notes |
|-----------|------|----------------|-----------|-------|
| Grant date | Mar 1, 2025 | 0 | 0 | — |
| 1-Year Cliff | Mar 1, 2026 | 50,000 | 50,000 | Can exercise these 50k for $25,000 |
| Month 18 | Sep 1, 2026 | 12,500 (est.) | 75,000 | 37.5% vested |
| Month 24 | Mar 1, 2027 | 12,500 (est.) | 100,000 | 50% vested |
| Full vest | Mar 1, 2029 | 12,500 last | 200,000 | 100% vested |

**Monthly vest post-cliff:** 200,000 × 75% ÷ 36 = 4,167 options/month

**Exercise window consideration:** Standard options must be exercised within 90 days of departure. If the employee leaves at Month 30 (75% vested), they have 90 days to exercise 150,000 options at $0.50 = $75,000 cash outlay, on options that are currently worth more on paper but illiquid. This is a common burden — consider whether your company will extend the exercise window.

---

### Example 3: Accelerated Vesting on Acquisition (Double Trigger)

**Setup:** Employee has 200,000 options, 50% vested (100,000 options vested). Company is acquired.

| Scenario | Trigger 1 | Trigger 2 | Unvested Options |
|----------|---------|---------|-----------------|
| Company acquired, employee retained | YES | NO (not terminated) | Continue vesting per schedule |
| Company acquired, employee terminated | YES | YES | 100% of unvested (100,000) accelerates immediately |
| Company NOT acquired | — | — | Continue vesting |

**With double trigger acceleration:**
- At acquisition + termination: employee immediately vests remaining 100,000 options
- Total exercisable: 200,000 options
- Tax: exercise within 90 days typically; consult tax advisor on ISO vs NSO treatment

---

## Section 4: Vesting Schedule Register

*Track all active grants in the company*

| Grantee | Role | Grant Type | Grant Date | Total Shares | Cliff Date | Full Vest Date | Status | Current % Vested |
|---------|------|-----------|-----------|-------------|-----------|---------------|--------|-----------------|
| [Name] | [Title] | [RSA / ISO / NSO] | [Date] | [X,XXX] | [Date] | [Date] | [Active/Departed] | [X%] |
| [Name] | | | | | | | | |

**Total options outstanding:** [X,XXX shares]
**Total restricted shares outstanding:** [X,XXX shares]
**Vesting schedule for option pool:** Options authorized: [X,XXX] / Issued: [X,XXX] / Available: [X,XXX]

---

## Section 5: 409A and Option Pricing

**Why options must be priced correctly:**
- ISOs (Incentive Stock Options) get favorable tax treatment only if granted at or above the 409A fair market value
- Options granted BELOW 409A value create immediate taxable income for the recipient under IRC Section 409A
- The company may face penalties as well

**When to get a new 409A valuation:**
| Trigger | Action Required |
|---------|----------------|
| Before first option grant | Obtain 409A |
| After any financing event (SAFE, priced round) | Obtain new 409A |
| 12 months after last valuation | Obtain new 409A |
| After material event (major customer, large revenue milestone, acquisition conversation) | Obtain new 409A |

**409A valuation cost:** $2,000–$8,000 from qualified appraisal firms. Common providers: Carta, Pulley, 409A Valuations Inc., Big 4 accounting firms (for larger companies).

**409A validity period:** 12 months OR until a material event — whichever comes first.

**Current 409A status for [Company]:**
- Last valuation date: [YYYY-MM-DD]
- Current FMV per share: $[X.XXXX]
- Expiration date: [YYYY-MM-DD]
- Status: [Current / Expired / Not obtained]

---

> **LEGAL DISCLAIMER:** This template is educational only. All equity grants require properly executed legal agreements (Stock Purchase Agreement, Option Agreement, etc.) drafted by a startup attorney. 83(b) elections must be filed within 30 days of restricted stock grants. 409A valuations must be current when options are granted. Tax treatment of equity depends on your specific situation — consult a tax advisor.
