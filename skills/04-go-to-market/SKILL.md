# Go-to-Market

> Help founders design and execute a go-to-market strategy that acquires the first 100 customers — from pre-launch waitlist through channel selection, launch execution, and initial growth engine activation.

---

## Diagnostic

Before giving advice, assess the founder's current state in go-to-market. Ask these questions to route to the right workflow:

### State Assessment

| State | Description | Route To |
|-------|-------------|----------|
| **Pre-Launch** | Founder has a product in development (or early MVP) but has not yet begun customer acquisition. No waitlist, no launch plan, no channel strategy | Workflow A: Pre-Launch Preparation |
| **Waitlist** | Founder has built a waitlist or engaged a small group of potential users before public launch. Goal is to convert waitlist to first paying customers | Workflow B: Waitlist Conversion |
| **Launching** | Founder is executing a public launch (Product Hunt, press, social) and needs to maximize launch day momentum and convert launch visitors | Workflow C: Launch Execution |
| **First 100** | Founder has 10–50 customers and needs to systematically acquire the next 50–90 through scalable channels, before establishing a repeatable growth engine | Workflow D: First 100 Customers |

### Diagnostic Questions

1. **"Do you have a public-facing way for interested people to sign up or express interest today?"** — Distinguishes Pre-Launch (no) from Waitlist (yes). If not, building a waitlist or landing page is the first action regardless of product readiness.
2. **"How many people are on your waitlist, and how many have you personally spoken to?"** — Distinguishes Waitlist (list exists but conversion uncertain) from Launching (ready to convert at scale). A waitlist of 500 strangers who haven't been nurtured is weaker than a list of 100 people the founder has emailed personally.
3. **"Have you had a formal public launch — Product Hunt, press coverage, a social announcement?"** — Distinguishes Waitlist/Launching stages. A soft launch (emailing 50 people) is different from a hard launch (public announcement, press, PH).
4. **"How many paying customers do you have, and what channel did most of them come from?"** — Distinguishes Launching from First 100. Knowing the channel that drove first customers is the most important data point for channel selection.

### Routing Logic

```
IF no public landing page or waitlist mechanism exists
→ Route to Workflow A (Pre-Launch Preparation)

ELIF waitlist exists but founder has not yet launched publicly
→ Route to Workflow B (Waitlist Conversion)

ELIF founder is executing or has recently executed a formal public launch
→ Route to Workflow C (Launch Execution)

ELIF founder has 10+ customers and is working toward first 100
→ Route to Workflow D (First 100 Customers)
```

---

## Workflows

### Workflow A: Pre-Launch Preparation (No Launch → Launch-Ready)

**Objective:** Build the minimum infrastructure needed to launch — a landing page, a waitlist, a launch plan, and a channel hypothesis — before writing a line of product code becomes the sole focus.

**Steps:**

1. **Build a landing page and waitlist in 48 hours**
   - Action: Your landing page needs 5 elements, no more: (a) Headline — the primary value promise in 10 words or fewer, (b) Sub-headline — who it's for and the specific outcome, (c) Social proof — customer quotes, logos, or numbers if you have them, (d) Email capture form — "Get early access" or "Join the waitlist," (e) One secondary CTA — "See how it works" linking to a 60-second explainer or screenshot
   - Output: Live landing page with email capture form
   - Tools: Webflow (no-code, design-quality), Carrd (10 minutes to launch), Framer, Squarespace. Do NOT build a custom landing page in React for 6 weeks — ship in 48 hours
   - Checkpoint: Test the headline with 10 people outside your network. Ask: "What does this company do, and who is it for?" If they can't answer in 5 seconds, rewrite the headline. Clarity > cleverness

2. **Define the target waitlist size and composition**
   - Action: Set a specific waitlist goal that's meaningful for launch day. Target: 500–2,000 signups. More importantly, ensure at least 20% of signups are from your precise target customer archetype (from Skill 01). A waitlist of 500 targeted users converts better than 2,000 general curious signups
   - Output: Waitlist with source tracking (how each signup found you)
   - Checkpoint: After first 50 signups, review: What % match your target customer? Where did they come from? If < 10% match target customer, your landing page is attracting the wrong audience — fix the headline, not the product

3. **Build the pre-launch waitlist audience**
   - Action: Use community-first strategy before advertising. Sources in effectiveness order: (a) Direct 1:1 outreach to potential customers in your target segment on LinkedIn — personal, specific, non-salesy, (b) Post in communities where your customer archetype spends time (specific subreddits, Slack groups, Discord servers, Facebook groups), (c) Write one genuinely helpful piece of content on the problem your product solves — not about your product, about the problem, (d) Ask your existing network for targeted warm introductions, NOT for signups themselves. Never spam
   - Output: 200–500+ waitlist subscribers from targeted outreach
   - Decision point: If unable to build 200 subscribers in 2 weeks, this is a signal — either the problem framing doesn't resonate in writing (test the copy), you're in the wrong communities (find better ones), or the problem isn't acute enough to motivate signup action (consider returning to Skill 01)
   - Next: Proceed to Workflow B with 200+ waitlist subscribers and source data

### Workflow B: Waitlist Conversion (Waitlist → First Paying Customers)

**Objective:** Convert your best-fit waitlist subscribers into paying customers before the public launch — creating testimonials, case studies, and a confidence baseline.

**Steps:**

1. **Identify and personally contact the top 20% of your waitlist**
   - Action: Review every waitlist signup. Identify the 20–40 people who best match your target customer archetype (from Skill 01). Email each one personally (not a batch email). Offer: (a) Beta access in exchange for 30 minutes of onboarding feedback, or (b) Early access at a discount ("Founding member pricing — 30% off, locked for life")
   - Output: 10–15 scheduled calls with target-segment subscribers
   - Checkpoint: Personal emails should be clearly personal — reference something specific about them (their company, their role, a tweet, their community post). Generic "beta access" emails to the whole waitlist produce low conversion; personal outreach to the right 20% produces high conversion

2. **Run concierge onboarding**
   - Action: For each confirmed beta customer, do "white-glove" onboarding — get on a call, walk them through the product, do the setup WITH them rather than FOR them. Your goal is not to deliver a polished product experience — it is to understand what breaks, what confuses, and what delights. Take notes on everything
   - Output: 5–10 paying beta customers with documented onboarding friction points
   - Checkpoint: After concierge onboarding with 5+ customers, identify the top 3 friction points. Fix them before the public launch. You will never have this density of attention to early onboarding again — the product will improve more in this phase than in any subsequent phase

3. **Collect social proof for launch**
   - Action: Ask each paying beta customer for: (a) A written testimonial with their specific outcome ("I reduced X from Y to Z"), (b) A permission to use their name or company logo on the website, (c) If they're delighted — a referral to one other person who should use this product
   - Output: 5+ written testimonials with specific outcomes, permission to use
   - Decision point: If customers are paying but not delighted enough to give a testimonial, investigate why. Testimonials are the early PMF signal — customers who voluntarily advocate are showing genuine value. Lack of testimonials after 30 days = product isn't delivering enough value yet
   - Next: Proceed to Workflow C with 5–10 paying customers, testimonials ready, and top onboarding friction resolved

### Workflow C: Launch Execution (Launch-Ready → Launch Day and Week)

**Objective:** Execute a coordinated launch that maximizes reach within your target segment, converts launch visitors, and creates a news cycle that can be referenced in fundraising and sales.

**Steps:**

1. **Choose and execute a primary launch channel**
   - Action: Select ONE primary launch channel based on your customer type. Do not launch everywhere simultaneously — concentration beats distribution at launch. Channel selection: (a) B2B SaaS with developer/builder audience → Product Hunt, (b) B2B SaaS with business buyers → LinkedIn organic + industry press, (c) Consumer product with social component → Twitter/X/TikTok launch with influencer seeding, (d) B2C utility → Reddit and community-first. Use `templates/product-hunt-checklist.md` for Product Hunt
   - Output: Launch plan with 72-hour timeline, channel, messaging, and team assignments
   - Checkpoint: Launch day messaging must be consistent across all channels — same headline, same key benefit, same call to action. Inconsistent messaging fragments attention and reduces conversion

2. **Execute the 72-hour launch window**
   - Action: Hour 0 (launch): Post to primary channel. Notify your waitlist — everyone at once, not a drip. Hour 1–6: Respond to every comment, question, and DM personally. Personal responsiveness at launch signals a company that actually cares. Hour 6–48: Collect product feedback actively from first signups. Hour 48–72: Send follow-up email to anyone who signed up but didn't complete onboarding
   - Output: Launch-day conversion funnel — signups, activated users, paying customers, drop-off points
   - Checkpoint: On launch day, your conversion funnel is: (Landing page visits) → (Signups) → (Activations) → (Paying). Track each stage. If visits are high but signups are low: landing page copy problem. If signups are high but activations are low: onboarding problem. If activations are high but payments are low: pricing or value delivery problem

3. **Capture and amplify launch momentum**
   - Action: Document everything from launch week — number of signups, notable customer companies, press mentions, social shares. Write a "launch retrospective" post or tweetstorm sharing what you learned. This post becomes a discovery mechanism (people find it via search months later) and a credibility signal for future conversations
   - Output: Launch metrics report (within 7 days), published retrospective post
   - Decision point: If launch produced < 50 new signups: identify whether channel was wrong, messaging was wrong, or timing was wrong — fix one variable and run a second launch push within 30 days. One bad launch day doesn't end a company; giving up after one launch attempt does
   - Next: Proceed to Workflow D with launch data, initial cohort of customers, and channel performance data

### Workflow D: First 100 Customers (Post-Launch → 100 Paying Customers)

**Objective:** Reach 100 paying customers by identifying and doubling down on the 1–2 acquisition channels that are working, before building a growth engine.

**Steps:**

1. **Identify which channel is working**
   - Action: After launch, review every paying customer. For each: (a) How did they find you? (b) What made them sign up? (c) What made them pay? Tag every customer by source: organic search, referral, LinkedIn, community, Product Hunt, cold outreach, paid ads. Calculate conversion-to-paid rate by channel (not just signups)
   - Output: Channel attribution table with conversion rates and CAC by channel
   - Decision point: Identify the channel with the highest conversion-to-paid rate (not highest volume). If 10 customers from LinkedIn all converted, that beats 100 signups from Product Hunt where only 2 paid. The highest-converting channel is your primary growth lever

2. **Double down on the working channel**
   - Action: Allocate 80% of your GTM effort to the working channel. Use `templates/first-100-customers.md` to build a repeatable playbook for that channel. Examples: If LinkedIn works → define ideal outreach sequence, message templates, and target criteria. If community works → identify 5 more communities, create systematic posting cadence. If referral works → build a referral program with explicit incentive
   - Output: Written channel playbook with weekly execution targets
   - Checkpoint: "Doubling down" means a repeatable system, not just doing more of the same thing manually. You should be able to hand the playbook to an early hire and have them execute it without losing quality

3. **Activate the Racecar Growth Framework**
   - Action: Identify which of the three engine types fits your product (see `frameworks/racecar-growth.md`): (a) Paid acquisition engine (CAC-positive unit economics → spend on ads), (b) Virality engine (product has natural sharing/referral mechanism), (c) Content/SEO engine (customers search for solutions → find you). Identify your engine, build the first version, and measure it for 60 days
   - Output: Growth engine selection with 60-day KPIs defined
   - Decision point: Most startups cannot afford a paid acquisition engine at seed (CAC is too high before optimization). Most startups can afford a content or community engine. Be realistic about which engine is appropriate for your stage and capital level
   - Next: First 100 customers achieved → Pass channel strategy to Skill 06 (Sales) for pipeline formalization and Skill 07 (Marketing) for brand and content strategy

---

## Frameworks

### Lenny Rachitsky B2C Growth Tactics

**Source:** Lenny Rachitsky, former PM at Airbnb, research on how consumer startups acquired their first 1,000 users
**When to use:** Workflow D for consumer products — identifying which acquisition channel to test first

**Research findings:** The tactics that drove the first 1,000 users for major consumer companies clustered into 6 categories:

1. **Go direct to users** (offline seeding) — Airbnb at conferences, Tinder at college campuses, Pinterest through design communities. The most direct path: founder physically goes to where their users are and manually introduces the product. Doesn't scale but proves concept and generates immediate feedback
2. **Exploit existing platforms** — DoorDash built on top of existing restaurant platforms and Google, Instagram through Facebook's social graph, YouTube through MySpace embeds. Find the distribution channel where your customers already congregate and create a presence before building your own
3. **Build community first** — Reddit invited moderators before opening to public, Product Hunt was a private email list before it was a website. Communities create lock-in and advocacy that advertising cannot buy
4. **Make a great product and market it** — Traditional marketing that works when the product is genuinely word-of-mouth worthy. Works for tools with clear utility: Slack, Notion, Figma spread organically because each new user was a de facto salesperson
5. **Create FOMO** — Gmail invite-only launch, Clubhouse invite model, Robinhood waitlist with position counter. Scarcity creates demand. Only works if the product is genuinely desirable — manufactured scarcity for mediocre products fails
6. **Incentivize users with money** — Uber/Lyft early promotional credits, Venmo's referral bonuses. Direct financial incentive for first use. High CAC but proven for marketplace and fintech cold-start problems

### B2B GTM: PLG vs. Sales-Led

**Source:** OpenView Partners Product-Led Growth research + Bessemer Venture Partners GTM frameworks
**When to use:** Workflow D for B2B products — deciding between product-led and sales-led go-to-market

**Product-Led Growth (PLG):** The product itself is the primary acquisition, activation, and expansion channel.

*Select PLG when:*
- Product delivers value to the individual user before it needs to go through procurement (individual try → team adopt → company buy)
- Time to value is short (user can experience core value within 10 minutes)
- Product has a natural expansion motion within companies (one user → invites team → department → company)
- Average deal size is < $10K ACV (sales involvement isn't efficient)

*PLG examples:* Figma, Slack, Notion, Loom, Linear, Calendly

*PLG metric to track: Product Qualified Account (PQA)* — An account that has met a product usage threshold that predicts paid conversion (e.g., "team of 3+ using Figma with 5+ files created in 30 days")

**Sales-Led Growth:** Human sales motion is the primary acquisition channel.

*Select Sales-Led when:*
- Decision requires multiple stakeholders (committee buying)
- Average deal size is > $15K ACV (justifies sales cost)
- Product requires integration, customization, or change management
- Compliance, security, or procurement processes require human interaction

*Sales-Led metrics:* Pipeline coverage ratio (typically 3–4× target), sales cycle length, win rate by segment

**Hybrid (PLG + Enterprise Sales):** Many companies use PLG for initial acquisition and up-market sales for expansion. Figma, Slack, and Notion all operate this way — free product gets into companies, sales converts companies to paid enterprise agreements.

*Hybrid works when:* Product has genuine individual value AND enterprise context adds meaningful value (security, SSO, admin controls, SLAs)

### Racecar Growth Framework

**Source:** Lenny Rachitsky, adapted from Reforge curriculum
**When to use:** Workflow D Step 3 — selecting a sustainable growth engine after first 100 customers

See `frameworks/racecar-growth.md` for the complete framework. Summary:

**The metaphor:** A race car needs all systems working — but the engine is the most important.

- **Kickstarts:** One-time tactics that give initial momentum (Product Hunt launch, press coverage, influencer seeding). Not sustainable but necessary to start
- **Growth engines:** Repeatable, scalable mechanisms that compound over time. Three types:
  - *Paid engine:* Spend $X → acquire Y customers. Works when CAC < LTV and you can scale spend
  - *Virality engine:* Each new customer brings more new customers (K-factor > 1 is rare; K-factor > 0.5 is valuable). Works when product has natural sharing mechanism
  - *Content engine:* Create content → attract organic traffic → convert to customers. Works when customers search for solutions (SEO demand) or gather around content (community)
- **Turbo boosts:** Periodic amplification of engines (seasonal promotions, PR moments, product launches). Not engines themselves — they accelerate existing engines

### Product Hunt Launch Playbook

**Source:** Accumulated best practices from 500+ Product Hunt launches
**When to use:** Workflow C — launch execution for B2B SaaS and developer tools

Key success factors (see `templates/product-hunt-checklist.md` for full checklist):

1. **Hunter selection:** Get hunted by someone with a large, active following on PH (> 1,000 followers). Being self-hunted is acceptable but reduces initial visibility
2. **Timing:** Launch on a Tuesday, Wednesday, or Thursday. Avoid Monday (competitive) and weekend (low traffic). Launch at 12:01 AM PT for maximum exposure window
3. **Asset quality:** Crisp tagline (5–8 words), compelling thumbnail, demo GIF or short video (60 seconds max), and a first comment from the maker that tells the authentic story
4. **Community mobilization:** Contact your top 50–100 most engaged subscribers and early customers in advance. Ask them to be available to upvote and comment on launch day. Do NOT ask for upvotes publicly — PH penalizes vote manipulation
5. **Response discipline:** Respond to every comment within 2 hours on launch day. Engagement rate affects algorithm visibility
6. **#1 Product of the Day:** Achievable but not required for success. "Top 5 of the Day" generates the same SEO and press benefits. Aim for the top 5; celebrate #1 if it happens

---

## Templates

| Template | File | Purpose |
|----------|------|---------|
| Launch Playbook | `templates/launch-playbook.md` | Step-by-step launch plan with 72-hour timeline |
| First 100 Customers | `templates/first-100-customers.md` | Tactics matrix for B2C and B2B with playbooks |
| Product Hunt Checklist | `templates/product-hunt-checklist.md` | Product Hunt launch checklist with timing |
| Racecar Growth Framework | `frameworks/racecar-growth.md` | Growth engine selection and execution |

---

## Decision Trees

### Which launch channel should I use?

```
START: Is your primary customer a technical user (developer, designer, product person)?
│
├─ YES → Product Hunt is a strong primary launch channel
│   ├─ Developer tool / API / infrastructure → Product Hunt + Hacker News
│   └─ Design/PM tool → Product Hunt + Twitter/X design community
│
└─ NO → Is your product B2B (company buys) or B2C (individual buys)?
    │
    ├─ B2B → Who is the buyer?
    │   ├─ Operator / ops / finance / HR → LinkedIn organic + industry-specific
    │   │   communities (Slack groups, subreddits)
    │   └─ C-suite / founder → LinkedIn + warm outreach + industry press
    │
    └─ B2C → What drives consumer discovery in your category?
        ├─ Search intent ("best X for Y") → SEO + content first
        ├─ Social recommendation → Instagram / TikTok seeding
        └─ Community-led discovery → Reddit + niche community posting
```

### Should I do PLG or sales-led go-to-market?

```
START: What is your target ACV (Annual Contract Value)?
│
├─ < $5,000 ACV → PLG is likely correct
│   ├─ Product has sharing/collaboration component → Strong PLG candidate
│   └─ Product is solo-use only → PLG possible but weaker; rely more on content/SEO
│
├─ $5,000–$25,000 ACV → Hybrid is common
│   ├─ PLG for acquisition (free tier draws individuals in)
│   └─ Inside sales for conversion (rep calls when account hits PQA threshold)
│
└─ > $25,000 ACV → Sales-led is likely required
    ├─ ACV > $100K → Field sales, in-person meetings, enterprise process
    └─ ACV $25K–$100K → Inside sales with multi-stakeholder management
```

### My launch didn't get the traction I hoped for — what do I do?

```
START: How many signups / new customers did the launch produce?
│
├─ > 200 signups, < 20% activated → Onboarding problem
│   → Do 5 recorded user sessions to watch friction. Fix the top 3 blockers
│
├─ > 50 signups, < 1% paid → Pricing or value-delivery problem
│   → Run 5 calls with signups who didn't pay. Ask specifically what stopped them
│
├─ < 50 signups despite significant effort → Channel or messaging problem
│   ├─ < 100 visits to landing page → Distribution problem: wrong channel or
│   │   insufficient audience. Find communities where your customer IS
│   └─ > 500 visits, < 50 signups → Conversion problem: landing page headline
│       doesn't match the pain. Rewrite the headline and test again
│
└─ 0 signups after 48 hours → Either the launch didn't reach the right audience
    OR the product description doesn't resonate at all. Run 10 "explain this to me"
    sessions with target customers to identify whether the communication or the
    product concept is the issue
```

---

## Anti-Patterns

### 1. Building a Waitlist Without Nurturing It

- **What it looks like:** Founder works hard to build a 2,000-person waitlist, then disappears for 6 months while building product. Launches to the same list months later and is surprised by < 1% conversion
- **Why founders do it:** Building the list feels like the hard part. Maintaining it requires ongoing work. Founders underestimate that a list is not a customer relationship — it's a permission to attempt one
- **Why it's harmful:** Email list decay is 20–30% per year. A 2,000-person list from 6 months ago has 400–600 disengaged subscribers who've forgotten why they signed up. Cold lists convert at 1–5%; warm lists convert at 15–30%
- **What to do instead:** Send subscribers a substantive email every 2–4 weeks during the waitlist period — not "we're still building," but genuine value (a blog post, an insight, a problem discussion). Give them a reason to remember why they signed up

### 2. Launching Everywhere Simultaneously

- **What it looks like:** On launch day, founder posts on Product Hunt, LinkedIn, Twitter/X, Instagram, Facebook, Reddit (5 subreddits), Hacker News, and sends a press release — all at once
- **Why founders do it:** Maximizing surface area feels like maximizing opportunity. More channels = more chances
- **Why it's harmful:** Each channel requires different content, different tone, different engagement. Spreading across 8 channels simultaneously means all 8 get mediocre execution. Algorithms reward engagement velocity — a concentrated audience on one channel creates better organic reach than a diluted audience across many
- **What to do instead:** Choose ONE primary launch channel. Prepare that channel's content at the highest quality you can. Let everything else be secondary amplification, not co-primary

### 3. Waiting for the Perfect Product to Launch

- **What it looks like:** Founder has built a product for 12 months but delays the launch because "it's not ready yet" — missing features, UI rough edges, no mobile app, only half the integrations work
- **Why founders do it:** Fear of judgment. Perfectionism. "I don't want to launch something bad and damage the brand." The logic seems protective
- **Why it's harmful:** You cannot know what customers need until customers use the product. Every week you delay launching is a week you delay learning. The features you spent 3 months building may not be the features that matter. Worse: the market moves while you wait. A competitor may launch while you polish
- **What to do instead:** Define the "minimum remarkable" product — the minimum set of features where customers would genuinely recommend it to a friend. Launch that. Add features based on what paying customers actually ask for, not what you imagine they want

### 4. Abandoning a Channel After One Attempt

- **What it looks like:** Founder posts in one Reddit community, gets 3 upvotes and no signups, and concludes "Reddit doesn't work for us." Tries LinkedIn for one week, gets no responses, and concludes "LinkedIn doesn't work for us"
- **Why founders do it:** Impatience. Single-point data evaluation. Difficulty distinguishing "this channel doesn't work" from "my execution in this channel was poor"
- **Why it's harmful:** Most channels require 8–12 weeks of iteration before you can fairly evaluate them. One Reddit post is not a Reddit strategy. Ten cold LinkedIn messages is not a LinkedIn channel test. Abandoning channels prematurely means you never find the channel that works
- **What to do instead:** Commit to 8 weeks per channel test. Define specific KPIs before testing (e.g., "Reddit: 200 clicks, 30 signups, 3 paying customers in 8 weeks = success"). If you miss the KPI after 8 weeks, change the channel. If you hit the KPI, double down

### 5. Optimizing for Launch Day Volume Instead of Right Customer Quality

- **What it looks like:** Founder "launches" by posting to general startup communities (Slack startup groups, r/entrepreneur, general LinkedIn) and measures success by signup count — 500 signups on launch day
- **Why founders do it:** Volume feels like success. Big signup numbers feel fundable and shareable
- **Why it's harmful:** General startup and founder communities are full of other founders — not your target customers. High signup volume from non-target users produces poor activation and zero paying customers. It also distorts your channel analytics — you'll think content/community works when actually you recruited the wrong audience
- **What to do instead:** Before launch, define your target community explicitly. "My customer is ops managers at SaaS companies — they are in [specific Slack communities], follow [specific accounts], and read [specific newsletters]." Launch to those places first. A launch that produces 50 signups from target customers is 10× more valuable than 500 signups from adjacent curious people

### 6. Copy-Paste GTM Strategy from a Different Company

- **What it looks like:** "Slack grew through virality, so we'll be viral." "Figma won through designers, so we'll win through [our user type]." Directly copying the GTM playbook of a famous company without evaluating whether the same dynamics apply
- **Why founders do it:** It feels evidence-based. These are successful companies. Pattern matching from winners seems logical
- **Why it's harmful:** GTM strategies succeed because of specific product attributes (natural sharing mechanics, specific community dynamics, specific buyer psychology) that may not exist in a different product. Slack's virality worked because team communication is inherently multi-person — every Slack message is an ad. Copying "virality" for a solo productivity tool ignores why virality worked for Slack
- **What to do instead:** Analyze WHY the comparable company's GTM worked — what product property or customer behavior enabled it. Ask whether your product has that same property. If yes, the playbook may transfer. If not, find a company with a more analogous product and copy that playbook instead

---

## Interconnections

### Inputs (what this skill receives from other skills)

| From Skill | Data Received | How It's Used |
|------------|---------------|---------------|
| Skill 01 (Idea Validation) | Validated target customer profile — who they are, where they congregate, language they use to describe the problem | Used to select the right launch channels and write the right copy — community selection and messaging are driven by this profile |
| Skill 02 (Business Model) | Pricing for GTM strategy, channel economics (target CAC by channel), competitive positioning for messaging | Used to set pricing on landing page, set paid CAC targets, and frame competitive messaging in launch copy |
| Skill 05 (Product) | Feature sequencing for launch — which features are ready, what the core value moment is | Used to define what to launch and how to describe the product experience |

### Outputs (what this skill produces for other skills)

| To Skill | Data Produced | Format |
|----------|---------------|--------|
| Skill 06 (Sales) | Channel strategy (which channels are producing qualified leads), early pipeline from outbound, conversion rate by channel | Channel attribution data + first 100 customer profiles for ICP refinement |
| Skill 07 (Marketing) | Launch metrics (what messaging resonated, which communities responded), distribution channels that worked | Channel performance data for content and distribution strategy |

### Context Passing

When this skill completes, pass the following to the orchestrator:

- **Launch Status:** Channel used, launch date, launch-week metrics (signups, activations, conversions)
- **Customer Count:** Current paying customer count and MoM growth rate
- **Working Channel:** The 1–2 channels with highest conversion-to-paid rate, with data
- **Channel Playbook:** Written, repeatable process for the working channel
- **Growth Engine Selected:** Which engine type (paid/viral/content) and current KPIs
- **First 100 Status:** On track / behind / ahead — with specific blockers if behind

---

## Artifacts

### GTM Strategy Document

- **Type:** Strategy document
- **Generated when:** Workflow A (Pre-Launch), Step 3
- **Format:** Follow `shared/artifact-format.md`
- **Sections:** Target Customer Profile, Channel Strategy (primary + secondary), Launch Plan (timeline, channel, messaging), Success Metrics, Growth Engine Selection
- **Disclaimer:** General Disclaimer required.

### Launch Report

- **Type:** Analysis document
- **Generated when:** Workflow C (Launch Execution), Step 3 (post-launch)
- **Format:** Metrics dashboard + narrative interpretation
- **Sections:** Launch metrics (visits, signups, activations, conversions), Channel performance, Top customer quotes, Lessons learned, Next 30-day priorities
- **Disclaimer:** General Disclaimer.

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
