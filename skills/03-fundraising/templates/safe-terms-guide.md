# SAFE Terms Guide

> Educational reference on SAFE (Simple Agreement for Future Equity) mechanics, key terms, and negotiation guidance for pre-seed and seed fundraising. Use this to understand and evaluate SAFE terms before signing.

*Note: This section is educational. Consult a qualified startup attorney before signing any SAFE or investment document.*

---

## What is a SAFE?

A SAFE (Simple Agreement for Future Equity) is an investment instrument created by Y Combinator in 2013. It is the most common pre-seed and seed investment document in US startup fundraising as of 2024.

**How it works:**
1. Investor gives the company money NOW in exchange for a promise to receive equity in the FUTURE
2. The equity conversion happens at a "Qualified Financing" (typically a priced Series A or seed round meeting a minimum threshold, e.g., $1M raised)
3. The conversion price is determined at the time of the qualified financing, but is subject to modifiers (cap, discount) that were set in the SAFE

**Key advantages over convertible notes:**
- No interest rate (SAFEs don't accrue interest)
- No maturity date (SAFEs don't expire and force conversion)
- Simpler and shorter document (2–5 pages vs. 10+ for a convertible note)
- Investor-founder alignment is cleaner (no interest clock ticking against the company)

**YC standard SAFEs are free to use:** Download at YC.com. Do NOT customize the standard template — the value of YC SAFEs is their familiarity to investors and attorneys. Customization increases legal costs and creates uncertainty.

---

## The Two Most Important SAFE Terms

### 1. Valuation Cap

**What it is:** The maximum valuation at which the SAFE converts to equity. If the company raises a priced round at a valuation above the cap, the SAFE investor converts at the cap — effectively getting more shares than later investors who invested at the higher valuation.

**Example:**
- SAFE has a $6M post-money valuation cap
- Investor puts in $500K
- Series A is raised at $20M pre-money valuation
- The SAFE investor converts at $6M, not $20M
- At $6M: investor's $500K / $6M = 8.33% of the company (on a cap table basis)
- If they had converted at the Series A price: $500K / $20M = 2.5%
- The cap gives them 3.3× more ownership — that's the reward for investing earlier

**What's a fair cap?**

| Stage | Typical pre-money valuation cap range |
|---|---|
| Pre-seed (no revenue, early team) | $3M–$8M |
| Seed (early traction, some revenue) | $8M–$20M |
| Seed extended (meaningful traction) | $15M–$30M |

*Regional variation is significant — these ranges apply to US tech startups. Adjust for geography.*

**Founder perspective:** A lower cap means you give up more equity to early investors. A higher cap means early investors get less upside for their early risk. Both parties should understand this tradeoff explicitly.

**What if there's no cap?** An uncapped SAFE means the investor converts at whatever the next round's price is — they take all the price risk. This is rare and generally advantageous to founders but unfair to investors who took early risk.

---

### 2. Discount Rate

**What it is:** A percentage reduction in the conversion price relative to the Series A price. A 20% discount means the SAFE investor converts at 80% of whatever the Series A price is.

**Example:**
- SAFE has 20% discount, no cap
- Series A price: $1.00/share
- SAFE investor converts at $0.80/share
- They get 25% more shares than Series A investors for the same investment

**Cap vs. discount: which applies?**

Most SAFEs have BOTH a cap and a discount. At conversion, the investor gets whichever provides MORE shares (i.e., the better deal for the investor).

**Standard discount rates:** 15–20%. Less than 15% is uncommon for SAFEs with caps (discount becomes almost irrelevant). More than 25% is aggressive and may signal an unsophisticated negotiation.

**Pro tip:** If you're offering a low cap, you can offer no discount (or 10%). If you're offering a high cap, a 20% discount compensates the investor. Both serve the same purpose — rewarding early risk.

---

## SAFE Structure: Post-Money vs. Pre-Money

YC updated the standard SAFE in 2018. The current standard is the **post-money SAFE**.

| | Pre-money SAFE (2013 version) | Post-money SAFE (2018 version — current standard) |
|---|---|---|
| **Cap calculation basis** | Valuation cap is calculated BEFORE SAFE money is counted | Valuation cap is calculated AFTER SAFE money is counted |
| **Founder dilution clarity** | Hard for founders to calculate exact dilution | Easy — you know exactly what % each SAFE investor gets |
| **Investor calculation** | Investor doesn't know their exact ownership until next round | Investor knows ownership % immediately: investment ÷ cap |
| **Which is used today** | Rarely — legacy only | Universal for new SAFEs |

**Post-money SAFE example:**
- SAFE: $500K on $6M post-money cap
- Investor ownership: $500K ÷ $6M = 8.33% (before any further dilution from future rounds)
- Founders know immediately: "This SAFE investor will own 8.33% after this SAFE closes"

**Important:** The post-money cap means the SAFE money itself is included in the denominator. Multiple SAFEs issued at the same cap each dilute the others. If you raise $1.5M across three $500K SAFEs all at a $6M cap, the investors collectively own 25% ($1.5M ÷ $6M) — not 8.33% × 3 = 25%.

---

## MFN (Most Favored Nation) Clause

**What it is:** An MFN provision says that if the company issues future SAFEs on better terms, the current SAFE investor automatically gets those better terms.

**When it appears:** Uncapped SAFEs (the investor is taking all price risk, so MFN protects them from being leapfrogged by future investors with caps).

**Founder perspective:** MFN clauses are generally fair when they accompany uncapped SAFEs. They're problematic if applied broadly — if every SAFE investor has MFN rights, it can cause administrative headaches at conversion when some investors trigger the MFN on others.

**Standard practice:** Uncapped SAFE without discount → MFN is expected. Capped SAFE with discount → MFN is rare and unnecessary.

---

## Pro-Rata Rights

**What it is:** The right (not obligation) of a SAFE investor to invest their proportional share in the NEXT priced round, to maintain their ownership percentage.

**Example:**
- SAFE investor owns 8.33% at the time of Series A
- Pro-rata right means they can invest up to 8.33% of the Series A round to avoid dilution
- At a $3M Series A: they can invest up to $250K

**Founder perspective:**
- Pro-rata rights reduce the amount of new capital available to outside investors
- Strong lead investors may require pro-rata as a condition of their check
- Many angels waive pro-rata or have "major investor" thresholds ($50K+ checks often have pro-rata; smaller checks often don't)

**Negotiation:** You can grant pro-rata to your largest SAFE investors and exclude smaller ones. Common threshold: pro-rata rights for investors with $[X]+ invested. This is a reasonable negotiating position.

---

## Conversion Mechanics

When a qualifying financing occurs, here's the sequence:

1. **Qualifying Financing** (a priced round meeting the threshold defined in the SAFE, typically raising ≥ $1M in a single transaction) triggers SAFE conversion

2. **Conversion price calculation:**
   - With cap only: Conversion Price = Cap ÷ Shares Outstanding (fully diluted, pre-money)
   - With discount only: Conversion Price = Series A Price × (1 − Discount %)
   - With both: Investor receives whichever price gives them MORE shares

3. **Shares issued:** SAFE investor receives: SAFE investment amount ÷ Conversion Price = shares

4. **Cap table update:** New shares are issued to SAFE investors alongside (and before) Series A preferred shares

5. **Option pool:** Check whether the cap in your SAFE is calculated before or after the pre-Series-A option pool shuffle — this can significantly affect SAFE investor dilution

---

## Key Negotiation Points

*Note: This section is educational. Consult a qualified startup attorney before making any decisions about SAFE terms.*

### Founder-friendly positions

| Term | Founder-friendly | Investor-friendly |
|---|---|---|
| Valuation cap | Higher cap | Lower cap |
| Discount | No discount / 10% | 20–25% discount |
| Pro-rata | Limited or none | Full pro-rata |
| MFN | None | Required for uncapped |
| Conversion threshold | High ($2M+ qualified financing) | Low ($500K+ triggers conversion) |

### When to negotiate vs. accept

**Accept standard terms without negotiation:**
- Cap and discount rates within market norms (see tables above)
- Post-money SAFE structure (this is now universal standard)
- Standard YC boilerplate without custom additions

**Negotiate firmly:**
- Cap rate below $4M for pre-seed stage (too low — excessive dilution for early stage)
- Participating preferred added to SAFE terms (non-standard, reject)
- Multiple rounds of investment rights baked in
- Major investor threshold (should be ≥ $50K for pro-rata)
- Anything that gives the investor board rights (SAFEs should not confer board seats)

**Reject outright (these are non-standard and founder-unfriendly):**
- Board seat as a condition of the SAFE
- Participating preferred on SAFE conversion
- Anti-dilution ratchet provisions
- Right to veto future financing rounds
- IP assignment conditions

---

## SAFE vs. Convertible Note Comparison

| Feature | SAFE | Convertible Note |
|---|---|---|
| Interest | None | Typically 5–8% annual |
| Maturity | None (doesn't expire) | Typically 18–24 months |
| Default risk | None | Yes — note matures and company may owe payment |
| Typical document length | 2–5 pages | 8–15 pages |
| Legal cost | $1,000–$3,000 | $5,000–$15,000 |
| Standard template | YC standard — widely accepted | Varies by law firm |
| Best for | Pre-seed, seed, small checks | Cases where investors require notes |
| Conversion mechanics | At qualified financing | At maturity or qualified financing |

**When a convertible note is better than a SAFE:**
- Investor is a bank or institutional lender (regulatory reasons)
- Investor is in a country where SAFEs aren't legally recognized
- You're in Canada, UK, or another jurisdiction where YC SAFEs aren't standard

---

## Post-Closing Checklist

After SAFE(s) are signed:

- [ ] Executed SAFE filed with company records
- [ ] Board resolution authorizing the SAFE (required for C-corp)
- [ ] Cap table updated to reflect outstanding SAFEs
- [ ] Investor added to any investor update distribution list
- [ ] 83(b) election filed within 30 days IF founder equity was issued at the same time (SAFE investors don't need 83(b) — this is for founder equity with vesting)
- [ ] Company bank account updated to reflect new deposit

---

> **Legal Disclaimer:** This content is educational and informational only. It does not constitute legal advice and should not be relied upon as such. Laws and regulations vary by jurisdiction and change frequently. The information provided may not reflect the most current legal developments. Consult a qualified attorney licensed in your jurisdiction before making legal decisions, forming entities, signing agreements, or issuing equity.

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
