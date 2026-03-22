# Business Model Patterns Reference

> 55+ business model patterns organized by category with selection criteria, examples, and common failure modes. Use this during Workflow A (Model Selection) to identify patterns relevant to your product and customer type.

---

## How to Use This Reference

1. Identify your product category and primary value delivery mechanism
2. Browse the relevant category section
3. For each candidate pattern: read the selection criteria and identify 2–3 companies that succeeded with this model and 1 that failed
4. Shortlist 2–3 candidate patterns for deeper analysis
5. Test model fit against your customer interviews

---

## Category 1: SaaS and Software Models

### Pattern 01: Per-Seat Subscription

**How it works:** Each user (seat) pays a monthly or annual fee. Revenue scales with number of users.

**Select when:**
- Product is used by individuals, not shared company-wide
- Value per additional user is roughly equal (all seats are equivalent)
- Company can track actual user count with reasonable enforcement

**Revenue characteristics:** Predictable. Natural expansion motion (new hires → new seats). Risk: customers cut seats during downturns.

**Examples:** Slack (before usage-based shift), HubSpot CRM, GitHub

**Common failure mode:** If the product is used company-wide but not by every individual, per-seat pricing creates friction. Finance buys one login and 10 people share it. Shift to flat-rate or company-size tiers instead.

**Unit economics targets:** LTV:CAC ≥ 3:1, Payback ≤ 18 months, Gross margin ≥ 70%

---

### Pattern 02: Flat-Rate Subscription

**How it works:** One price for the entire company regardless of user count.

**Select when:**
- Product is organization-wide (everyone uses it)
- User count is hard to track or enforce
- Enterprise customers prefer simplicity in procurement

**Revenue characteristics:** Simple to sell, simple to understand. Limited natural expansion unless price scales with company size or usage tier.

**Examples:** Basecamp, some enterprise software with enterprise agreements

**Common failure mode:** A small company pays the same as a 1,000-person company. You leave revenue on the table at large customers and overprice small ones. Fix: company-size tiers (Startup / Growth / Enterprise flat rates).

---

### Pattern 03: Usage-Based (Pay-As-You-Go)

**How it works:** Customers pay based on actual consumption — API calls, rows processed, emails sent, storage used, transactions, compute time.

**Select when:**
- Product usage is variable across customers (some use 10× what others use)
- Customers are sensitive to starting costs (usage-based reduces barrier)
- Product is infrastructure-type (developer tools, APIs, data pipelines)

**Revenue characteristics:** Variable and unpredictable. Aligns revenue with customer value — high-value customers pay more. Risk: customer usage forecasting is difficult; revenue can swing.

**Examples:** Stripe (% of transactions), Twilio (per message/call), AWS (per compute/storage unit), Snowflake (per credit used)

**Common failure mode:** Customers are afraid of unpredictable bills. Solution: offer usage-based with committed minimum (annual commitment with overage pricing). This combines predictability for the customer with upside for you.

---

### Pattern 04: Tiered Subscription (Feature Gating)

**How it works:** Multiple tiers at different price points with progressively more features, users, or limits.

**Select when:**
- You serve multiple customer segments with different needs and willingness to pay
- Features can be meaningfully separated into "good, better, best"
- You want a natural expansion path as customers grow

**Revenue characteristics:** Most popular SaaS model. Natural upsell path. Risk: over-engineering tiers or creating confusing feature matrices.

**Examples:** Notion (Free / Plus / Business / Enterprise), Intercom, Zendesk

**Common failure mode:** Three tiers but the middle tier is poorly designed — customers jump straight from Starter to Enterprise, leaving the mid-tier empty. Ensure each tier has a clearly differentiated value proposition for a distinct customer segment.

**Design rule:** The 3× pricing rule — Growth tier ≈ 3× Starter price. Enterprise ≈ 3–5× Growth price. Each jump should feel worth it.

---

### Pattern 05: Freemium → Premium

**How it works:** Fully functional free tier (not time-limited) + premium paid tier. Revenue comes from converting free users who hit limits or want advanced features.

**Select when:**
- Product has viral/social distribution (free users recruit more users)
- Free tier creates genuine habit before conversion
- Conversion rate of 2–5% from free to paid is sufficient to be profitable

**Revenue characteristics:** Requires scale — 95–98% of users don't pay. Effective for PLG with strong viral loop. Fails when free tier cannibalizes paid.

**Examples:** Spotify, Dropbox, Mailchimp (historically), Calendly

**Common failure mode:** Free tier is too good — customers never need to upgrade. Fix: identify the feature or limit that matters most to power users, gate that (not everything), and protect core functionality so the product creates habit.

**Conversion benchmarks:** Consumer freemium: 1–4% conversion. B2B freemium: 3–8% conversion. If below, either free tier is too generous or paid tier doesn't add enough value.

---

### Pattern 06: Product-Led Growth (PLG) with Expansion Revenue

**How it works:** Product itself is the primary acquisition channel. Free or low-cost entry. Revenue grows through expansion (more seats, higher tiers) as users get value. Net Revenue Retention > 100% makes the model self-fueling.

**Select when:**
- Product delivers value quickly (time to value < 10 minutes)
- Individual users can start using without IT or procurement approval
- Teams naturally grow usage once one person is in

**Revenue characteristics:** Lower upfront sales cost (users self-qualify by using). Requires excellent onboarding, fast time-to-value, and expansion triggers built into the product.

**Examples:** Figma, Notion, Slack, Loom, Linear

**Critical metric:** Net Revenue Retention (NRR). PLG businesses need NRR > 110% to maintain growth; NRR > 125% is exceptional.

---

### Pattern 07: Enterprise License + Professional Services

**How it works:** Large upfront license fee + ongoing professional services (implementation, customization, training). High ACV, high-touch sales.

**Select when:**
- Customers require significant customization or integration
- Deal sizes justify 3–6 month sales cycles
- You have or can hire domain experts to deliver professional services

**Revenue characteristics:** High ACV but lumpy revenue. Services revenue often 30–50% of total but at lower gross margins (40–60%). Software license is the high-margin component.

**Examples:** Salesforce enterprise, Workday, ServiceNow

**Common failure mode:** Services dependency — company becomes consulting-first, software-second. Track software license revenue separately and ensure it's growing faster than services revenue.

---

### Pattern 08: API / Platform Licensing

**How it works:** Developers or businesses pay to access your product's capabilities via API. Can be usage-based, per-call, monthly minimum, or enterprise license.

**Select when:**
- Core value can be delivered programmatically (not requiring a GUI)
- Your customers want to embed your capability in their own products
- You have a data or AI/ML asset that's valuable at API scale

**Examples:** OpenAI API, Google Maps API, Plaid, Stripe Connect, Clearbit

**Common failure mode:** Developer love doesn't translate to revenue without enterprise contracts. Consumer API usage costs money but pays little. Focus on commercial customers early.

---

## Category 2: Marketplace Models

### Pattern 09: Transaction Fee (Take Rate)

**How it works:** Platform takes a percentage of each transaction facilitated between buyers and sellers.

**Select when:**
- You facilitate transactions with clear monetary value
- Both sides of the market are present and transacting
- Platform provides enough trust/infrastructure to justify a fee on every transaction

**Revenue characteristics:** Revenue tied to GMV (Gross Merchandise Volume). Scalable with transaction volume. Risk: disintermediation — buyers and sellers transact off-platform to avoid fees.

**Take rate benchmarks:** B2C marketplace: 10–30%. B2B marketplace: 3–10%. Real estate: 3–5%. Freelancer platforms: 15–25%.

**Examples:** Airbnb (15%), Etsy (6.5%), Fiverr (20%), StockX (8–12%)

**Common failure mode:** Leakage — once buyers and sellers meet on your platform, they complete future transactions privately to avoid fees. Fix: retain value on platform (payment processing, insurance, reviews, trust).

---

### Pattern 10: Listing Fee + Transaction Fee (Hybrid)

**How it works:** Sellers pay to list/advertise + platform takes % of transactions. Double-sided revenue.

**Select when:**
- You have enough seller demand that listing fees are viable before transaction volume grows
- Listing provides value beyond transaction (brand visibility, discovery)

**Examples:** Amazon Seller (subscription + referral fee), eBay (listing + final value fee)

---

### Pattern 11: SaaS for One Side + Take Rate (Marketplace SaaS)

**How it works:** Charge the supply side for a SaaS subscription (tools, analytics, management). Charge the demand side via take rate.

**Select when:**
- Supply side has specific operational needs you can solve with SaaS
- Demand side transacts more naturally on a take-rate model

**Examples:** Mindbody (studio management SaaS + consumer marketplace), Faire (wholesale marketplace + retailer SaaS), OpenTable (restaurant SaaS + consumer booking)

**Unit economics advantage:** SaaS revenue is predictable; take rate revenue scales with GMV. Combined = predictable base + variable upside.

---

### Pattern 12: Managed Marketplace

**How it works:** Platform controls supply quality and vetting. Higher take rate justified by trust and quality standards.

**Select when:**
- Trust and quality are critical to consumer decision
- Consumer is willing to pay premium for quality guarantee
- Platform can build and enforce quality standards at scale

**Examples:** 1-800-GOT-JUNK (franchise quality control), Thumbtack (vetted contractors), Toptal (vetted talent)

---

## Category 3: Consumer Models

### Pattern 13: Advertising-Supported (Free to User)

**How it works:** Product is free to end users. Revenue from advertisers who pay for audience access.

**Select when:**
- You can reach mass scale (100M+ users or dominant in a niche)
- User data enables precise audience targeting
- Content or platform is sufficiently engaging to generate regular sessions

**Revenue characteristics:** CPM/CPC advertising. Revenue only emerges at scale. User acquisition costs must be recouped via ad revenue — requires LTV per user > CAC per user.

**Examples:** Google, Facebook, YouTube, most consumer media

**Startup warning:** Advertising is a scale business. It does not work for startups unless you are building for mass-market scale from day one AND have a clear path to 10M+ users. For most B2B or niche consumer products, advertising is not a viable model.

---

### Pattern 14: Direct-to-Consumer Subscription

**How it works:** Consumers pay a recurring monthly/annual fee for access to content, software, or physical goods.

**Select when:**
- Product delivers recurring value (not one-time utility)
- You can maintain engagement to prevent cancellation
- Consumer LTV supports the acquisition cost

**Revenue characteristics:** High churn is the primary risk. Consumer annual churn of 30–50% is common. LTV = subscription value divided by churn rate. Low churn is the only lever.

**Examples:** Netflix, Spotify, Duolingo Plus, Headspace

**Benchmarks:** Consumer churn < 3% monthly = excellent. 3–7% monthly = typical. > 7% monthly = dangerous.

---

### Pattern 15: D2C Product + Subscription (Hardware + Consumables)

**How it works:** Hardware or physical product sold once (or at subsidized price). Ongoing subscription or consumable revenue is the primary margin driver.

**Select when:**
- Physical product is only useful with consumables or software service
- Hardware creates a natural lock-in to the ecosystem
- You can sustain CAC with the combination of initial sale + recurring revenue

**Examples:** Peloton (bike + subscription), Nespresso (machine + pods), Dollar Shave Club (handles + blade subscription)

---

## Category 4: Content and Community Models

### Pattern 16: Premium Content (Paywall)

**How it works:** Free preview or limited content. Full access requires paid subscription.

**Select when:**
- Content is differentiated (expertise, data access, exclusivity)
- Readers are professionals who expense the subscription
- Email list or community is the primary distribution channel

**Examples:** The Information, Substack paid newsletters, Wall Street Journal

---

### Pattern 17: Community + Premium Tier

**How it works:** Free community with access to basic discussion and resources. Premium tier unlocks advanced content, direct access to experts, or recognition.

**Examples:** Indie Hackers (community + premium), Hacker News (fully free — advertising model), various Discord-based communities

---

## Category 5: Service-Based Models

### Pattern 18: Retainer / Managed Service

**How it works:** Clients pay a monthly retainer for ongoing access to a service team. Predictable recurring revenue.

**Select when:**
- Service delivery requires ongoing relationship
- Value compounds over time (account knowledge, context)
- Clients prefer predictable cost over project-by-project invoicing

**Revenue characteristics:** High retention business. CAC amortized over long client lifetime. Risk: key-person dependency, hard to scale.

**Examples:** Marketing agencies, law firms on retainer, CFO-as-a-service, fractional executive services

---

### Pattern 19: Productized Service

**How it works:** Fixed scope, fixed price, fixed deliverable. No hourly billing, no scope creep, standardized process.

**Select when:**
- Service can be defined with clear inputs and outputs
- Standardization enables faster delivery at higher margin
- Target market is smaller companies who need predictability

**Examples:** Design Pickle (unlimited design for flat fee), Bench (bookkeeping), Relay (banking for SMBs)

**Advantage over traditional services:** Easier to price, sell, and scale. No hourly tracking. Revenue is predictable.

---

### Pattern 20: Agency + Software Hybrid

**How it works:** Agency services provide revenue and domain expertise; software is developed from agency-learned patterns and eventually becomes the primary revenue driver.

**Select when:**
- Agency revenue funds software development before software revenue is sustainable
- Agency work gives deep domain expertise that improves the software
- Transition plan from services → software is explicit

**Warning:** This transition is hard. Many companies remain service businesses permanently and never make the software pivot. Define specific milestones for when you commit to software-first.

---

## Category 6: Platform and Ecosystem Models

### Pattern 21: Platform + App Store (Ecosystem Revenue)

**How it works:** Platform provides core infrastructure. Third-party developers build on top. Platform takes % of app revenue or charges for developer access.

**Examples:** Apple App Store (30% of app revenue), Salesforce AppExchange, Shopify App Store

---

### Pattern 22: White-Label / Licensing

**How it works:** Your product is sold to businesses who resell it under their own brand. You get per-seat or per-customer licensing fees.

**Select when:**
- Distribution advantage lies with partners, not you
- Your technology is differentiated but your go-to-market is not
- Partner channels reach your end customers better than direct sales

**Examples:** Twillio (white-label communication), SendGrid, many B2B2C models

---

### Pattern 23: Data Licensing

**How it works:** Proprietary data asset is licensed to businesses who use it for analytics, AI training, or competitive intelligence.

**Select when:**
- You collect data at scale that has commercial value to enterprises
- Data asset is proprietary and hard to replicate
- Enterprise customers have demonstrated willingness to pay for this data category

**Examples:** Bloomberg Terminal, IMS Health, credit bureau data, market research firms

---

## Selection Criteria Matrix

Use this matrix to evaluate which pattern fits your product:

| Criterion | Question | Patterns it points toward |
|---|---|---|
| **Usage frequency** | Do customers use daily/weekly or monthly/rarely? | Daily: subscription. Rare: transactional |
| **Customer size** | SMB, mid-market, or enterprise? | SMB: self-serve subscription. Enterprise: license + services |
| **Viral potential** | Do users naturally share or invite others? | YES: freemium/PLG. NO: subscription or outbound |
| **Product type** | Software only or involves human service? | Software: subscription/usage. Service involved: retainer/hybrid |
| **Value delivery** | Is value continuous or event-triggered? | Continuous: subscription. Event-triggered: transactional/usage |
| **Two-sided market** | Does your product connect buyers and sellers? | YES: marketplace (take rate). NO: direct model |
| **Build vs. buy decision for customer** | Do customers consider building this themselves? | YES: API/platform model. NO: vertical SaaS |

---

## The 5 Most Common First-Startup Models

Based on historical patterns, the following 5 models account for ~80% of successful venture-backed B2B startups:

1. **Tiered SaaS subscription** (Pattern 04) — Most B2B software
2. **PLG freemium → premium** (Patterns 05–06) — Developer tools, collaboration software
3. **Usage-based** (Pattern 03) — Infrastructure, APIs, data
4. **Marketplace take rate** (Pattern 09) — B2B and B2C marketplaces
5. **Enterprise license + services** (Pattern 07) — Complex enterprise workflows

For consumer startups, the most common models are: advertising (Pattern 13), D2C subscription (Pattern 14), and marketplace (Pattern 09).

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
