# Cap Table Template with Dilution Scenarios

> **Purpose:** Maintain a complete, accurate cap table that shows who owns what — both currently and on a fully diluted basis — and how that ownership changes with financing events.

---

> **LEGAL DISCLAIMER:** This template is educational only. Cap tables have legal, tax, and financial consequences. Errors in cap tables can create securities law issues, tax problems, and disputes. For any financing round, a qualified startup attorney must review and confirm the cap table. **Do not use this template as the authoritative legal record of ownership without attorney verification.**

---

## Cap Table Fundamentals

**Two views of the cap table — both are required:**

1. **Current (As-Issued) Cap Table:** Shows only shares that have actually been issued. Does not include unexercised options, warrants, or unconverted instruments (SAFEs, notes).

2. **Fully Diluted Cap Table:** Shows ownership assuming ALL potential shares are issued — options (whether vested or not), warrants, SAFEs, convertible notes. This is the number that matters for real ownership calculations.

**The most common cap table mistake:** Founders tell early employees "you're getting 1% of the company" when they mean 1% of current shares. But if there's a 15% option pool and outstanding SAFEs that will convert to 25% of the company, the employee's actual ownership is much less than 1% on a fully diluted basis. Always communicate in fully diluted terms.

---

## Company: [Company Name]

**Cap Table Date:** [YYYY-MM-DD]
**Prepared by:** [Name]
**Reviewed by:** [Attorney Name, if applicable]
**Status:** [Working draft / Attorney-confirmed / Data room ready]

---

## Part 1: Current (As-Issued) Cap Table

*Shows only actually issued shares, as of the cap table date.*

### Common Stock

| Shareholder | Type | Shares | % of Common | Notes |
|------------|------|--------|-------------|-------|
| [Founder 1 Name] | Common (Restricted) | [X,XXX,XXX] | [X%] | [Vesting: X% vested as of date] |
| [Founder 2 Name] | Common (Restricted) | [X,XXX,XXX] | [X%] | |
| [Early Employee] | Common (Restricted) | [X,XXX] | [X%] | |
| **Common Stock Subtotal** | | **[X,XXX,XXX]** | **[X%]** | |

### Preferred Stock (if any priced rounds)

| Investor | Series | Shares | Price Paid | % of Preferred | Notes |
|---------|--------|--------|-----------|---------------|-------|
| [Investor] | Series A Preferred | [X,XXX,XXX] | $[X] per share | [X%] | [Liquidation preference: $X] |
| **Preferred Subtotal** | | **[X,XXX,XXX]** | | | |

### Issued Option Pool (Granted Options)

| Employee | Grant Date | Options Granted | Vested | Unvested | Exercise Price | Type |
|---------|-----------|----------------|--------|---------|---------------|------|
| [Employee 1] | [Date] | [X,XXX] | [X,XXX] | [X,XXX] | $[X.XX] | ISO |
| [Employee 2] | [Date] | [X,XXX] | [X,XXX] | [X,XXX] | $[X.XX] | NSO |
| **Options Granted Subtotal** | | **[X,XXX]** | | | | |

### Available Option Pool (Authorized but Unissued)

| Pool Authorization | Authorized | Issued | Available |
|-------------------|-----------|-------|---------|
| Stock Incentive Plan | [X,XXX,XXX] | [X,XXX] | [X,XXX] |

**Current Total Authorized Shares:** [X,XXX,XXX]
**Current Total Issued and Outstanding Shares:** [X,XXX,XXX]

---

## Part 2: Fully Diluted Cap Table

*Assumes all options are exercised, all SAFEs and notes are converted. This is the true ownership picture.*

### Fully Diluted Share Count

| Ownership Category | Shares (FD) | % Fully Diluted | Notes |
|-------------------|------------|----------------|-------|
| Founders (all) | [X,XXX,XXX] | [X%] | |
| Investors — Common | [X,XXX] | [X%] | |
| Investors — Preferred (as-converted) | [X,XXX,XXX] | [X%] | |
| Option Pool — Granted (all, vested + unvested) | [X,XXX] | [X%] | |
| Option Pool — Available (unissued) | [X,XXX] | [X%] | |
| SAFEs (converted at cap) | [X,XXX,XXX] | [X%] | See Part 3 for conversion math |
| Convertible Notes (converted) | [X,XXX] | [X%] | See Part 3 for conversion math |
| Warrants | [X,XXX] | [X%] | |
| **TOTAL FULLY DILUTED** | **[X,XXX,XXX]** | **100%** | |

### Key Ownership Summary (Fully Diluted)

| Stakeholder | Shares (FD) | % Fully Diluted |
|------------|------------|----------------|
| **All Founders (combined)** | [X,XXX,XXX] | **[X%]** |
| **All Investors (combined)** | [X,XXX,XXX] | **[X%]** |
| **Option Pool (granted + available)** | [X,XXX,XXX] | **[X%]** |
| **Outstanding Instruments (SAFEs, notes)** | [X,XXX,XXX] | **[X%]** |
| **Total** | | **100%** |

---

## Part 3: Outstanding Instruments Register

*Every unconverted instrument that will become equity in the future.*

### SAFEs Outstanding

| Investor | Date Issued | Investment Amount | Valuation Cap | Discount | Type | Notes |
|---------|------------|-----------------|--------------|---------|------|-------|
| [Investor A] | [Date] | $[Amount] | $[Cap] | [X%] | Post-money | [MFN / No MFN] |
| [Investor B] | [Date] | $[Amount] | $[Cap] | [X%] | Post-money | |
| **SAFE Total** | | **$[Amount]** | | | | |

**SAFE conversion modeling at hypothetical Series A:**

| SAFE | Investment | Cap | Discount | Conversion Price | Shares at Conversion | % Ownership at Series A |
|-----|-----------|-----|---------|-----------------|---------------------|------------------------|
| [Investor A] | $[Amount] | $[Cap] | [X%] | $[Price] | [X,XXX shares] | [X%] |
| [Investor B] | $[Amount] | $[Cap] | [X%] | $[Price] | [X,XXX shares] | [X%] |

*Conversion price = lower of: (Cap ÷ Fully Diluted Shares at Conversion) OR (Series A Price × (1 − Discount))*

### Convertible Notes Outstanding

| Investor | Issue Date | Principal | Interest Rate | Maturity Date | Cap | Discount | Accrued Interest |
|---------|-----------|----------|--------------|--------------|-----|---------|-----------------|
| [Investor] | [Date] | $[Amount] | [X%] | [Date] | $[Cap] | [X%] | $[Amount] |
| **Note Total** | | **$[Amount]** | | | | | |

---

## Part 4: Dilution Scenarios

*Model how ownership changes under different financing scenarios.*

### Scenario: Pre-Money vs. Post-Money for Next Round

**Assumptions:**
- Current fully diluted shares: [X,XXX,XXX]
- Target raise: $[Amount]
- Pre-money valuation: $[Amount]
- Post-money valuation: $[Pre + Raise]
- New shares issued to investor: [Raise ÷ Price per share = X shares]

| Stakeholder | Pre-Round (FD) % | Post-Round (FD) % | Change |
|------------|-----------------|-------------------|--------|
| [Founder 1] | [X%] | [X%] | [−X%] |
| [Founder 2] | [X%] | [X%] | [−X%] |
| Prior investors / SAFEs | [X%] | [X%] | [X%] |
| New investor | — | [X%] | +[X%] |
| Option pool (existing) | [X%] | [X%] | [−X%] |
| Option pool refresh | — | [X%] | +[X%] |
| **Total** | **100%** | **100%** | — |

*Note: Option pool refreshes often happen pre-money, which dilutes founders (not the new investor). This is an important negotiating point at Series A.*

### Scenario: SAFE Stack Dilution Example

*Illustrating why stacked SAFEs can surprise founders*

| SAFE | Amount | Cap | Implied % at Cap |
|------|--------|-----|-----------------|
| SAFE 1 (Angel A) | $100,000 | $4,000,000 | 2.5% |
| SAFE 2 (Angel B) | $250,000 | $4,000,000 | 6.25% |
| SAFE 3 (Angel C) | $500,000 | $5,000,000 | 10% |
| SAFE 4 (Fund D) | $1,000,000 | $6,000,000 | 16.7% |
| **Total SAFEs** | **$1,850,000** | | **~35.5% committed** |

*Before any Series A, founders have committed ~35.5% of the fully diluted company to SAFE holders at these caps. Model this before each SAFE issuance.*

---

## Part 5: Cap Table Governance

### Update Protocol

The cap table must be updated after every transaction:

| Transaction Type | Cap Table Update Required | Timeline |
|----------------|--------------------------|---------|
| New SAFE issued | Yes — add to instruments register | Same day |
| New option grant | Yes — add to options table | Within 1 week of board approval |
| Option exercise | Yes — move from options to common stock | Same day |
| Financing close | Yes — reflect converted instruments and new shares | Closing day |
| Employee departure | Yes — update vesting status, note any repurchase | Within 1 week |
| Share transfer | Yes — update ownership | Same day |

### Access and Sharing

| Stakeholder | Access Level | Format |
|-----------|-------------|--------|
| Founders | Full access | Live spreadsheet or equity management software |
| Board members | Full access | Quarterly update, full data room access |
| Investors with information rights | Summary view | Quarterly investor update |
| Employees with equity | Their grant only | Grant letter + vesting schedule |
| External counsel | Full access | For financing transactions |
| Potential acquirers (in LOI process) | Full access | Data room |

**Equity management software options:** Carta, Pulley, Capshare, or LTSE Equity. Recommended at > 20 employees or > 5 financing events — manual spreadsheets become error-prone.

---

> **LEGAL DISCLAIMER:** This cap table template is for educational and planning purposes only. It is not a legal record of ownership. Cap table errors can create securities law violations and shareholder disputes. All financing transactions, equity grants, and ownership transfers must be documented with properly executed legal agreements. Consult a qualified startup attorney for all cap table-related legal matters.
