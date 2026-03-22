# Cohort Analysis Template

> Cohort analysis with SQL examples. The key insight: a healthy retention curve flattens. Users who stay long enough eventually stop churning at the same rate — meaning a stable long-term user base exists.

---

## What Is a Cohort?

A cohort is a group of users who share a defining characteristic at a specific point in time. In retention analysis, the most common cohort is **signup cohort** — all users who signed up in the same week or month.

**Why cohort analysis beats aggregate retention:**
Aggregate retention hides decay. If your aggregate DAU is flat, it might mean retention is healthy — or it might mean you're losing old users at the same rate you're acquiring new ones. Cohort analysis reveals which.

---

## Part 1: Reading the Retention Curve

### What a Healthy Curve Looks Like

```
Retention %
100% |█
 80% | ██
 60% |   ████
 40% |       █████
 30% |            ████████████████  ← FLATTENS HERE
 20% |
  0% +─────────────────────────────→ Weeks since signup
     W0  W1  W2  W4  W6  W8  W12
```

**Healthy curve:** Drops steeply in early weeks, then flattens and stabilizes. The flattening indicates a "sticky" user base that has found long-term value.

**Unhealthy curve (no PMF):**
```
Retention %
100% |█
 80% | ██
 60% |   ████
 40% |       ████
 20% |           ████
  5% |               ████
  0% +─────────────────→  ← Approaches zero
     W0  W1  W2  W4  W6  W8  W12
```

**Key diagnostic:**
- If curve flattens above 15–20% (consumer) or 30–40% (B2B SaaS): You have a retained core. Invest in activation to grow it.
- If curve approaches zero: The product doesn't deliver sustained value. No amount of acquisition will fix this.

---

## Part 2: Cohort Retention Table

### Monthly Cohort Retention Table (B2B SaaS)

*Fill in with your data. "Active" definition: logged in and performed at least one meaningful action in that month.*

| Signup Cohort | Cohort Size | Month 0 | Month 1 | Month 2 | Month 3 | Month 4 | Month 5 | Month 6 |
|--------------|-------------|---------|---------|---------|---------|---------|---------|---------|
| [Jan 20XX] | [n] | 100% | [%] | [%] | [%] | [%] | [%] | [%] |
| [Feb 20XX] | [n] | 100% | [%] | [%] | [%] | [%] | [%] | — |
| [Mar 20XX] | [n] | 100% | [%] | [%] | [%] | [%] | — | — |
| [Apr 20XX] | [n] | 100% | [%] | [%] | [%] | — | — | — |
| [May 20XX] | [n] | 100% | [%] | [%] | — | — | — | — |
| [Jun 20XX] | [n] | 100% | [%] | — | — | — | — | — |
| **Average** | — | 100% | **[avg%]** | **[avg%]** | **[avg%]** | | | |

**Color coding guide:**
- Green: Above your target retention for this period
- Yellow: 10–20% below target
- Red: > 20% below target

### Weekly Cohort Retention Table (Consumer App)

| Signup Week | Cohort Size | W0 | W1 | W2 | W3 | W4 | W6 | W8 | W12 |
|------------|-------------|----|----|----|----|----|----|----|----|
| [Week 1] | [n] | 100% | [%] | [%] | [%] | [%] | [%] | [%] | [%] |
| [Week 2] | [n] | 100% | [%] | [%] | [%] | [%] | [%] | [%] | — |
| [Week 3] | [n] | 100% | [%] | [%] | [%] | [%] | [%] | — | — |
| [Week 4] | [n] | 100% | [%] | [%] | [%] | [%] | — | — | — |
| **Average** | — | 100% | **[avg%]** | **[avg%]** | **[avg%]** | **[avg%]** | | | |

---

## Part 3: SQL for Cohort Analysis

*All SQL examples use PostgreSQL syntax and are syntactically valid. Adapt table and column names to your schema.*

### Prerequisite: Events Table Schema

Assumes an events table with the following structure:

```sql
CREATE TABLE events (
    user_id     VARCHAR(255) NOT NULL,
    event_name  VARCHAR(255) NOT NULL,
    created_at  TIMESTAMP NOT NULL
);

CREATE TABLE users (
    user_id     VARCHAR(255) PRIMARY KEY,
    created_at  TIMESTAMP NOT NULL,  -- signup timestamp
    plan_type   VARCHAR(50),          -- e.g., 'free', 'basic', 'pro'
    source      VARCHAR(100)          -- acquisition channel
);
```

---

### SQL 1: Monthly Cohort Retention Table

*Produces a cohort × month retention table. Replace 'user_activated' with your activation/activity event.*

```sql
WITH cohorts AS (
    -- Define cohorts by signup month
    SELECT
        user_id,
        DATE_TRUNC('month', created_at) AS cohort_month
    FROM users
    WHERE created_at >= CURRENT_DATE - INTERVAL '12 months'
),

activity AS (
    -- Find each user's activity by month
    SELECT
        user_id,
        DATE_TRUNC('month', created_at) AS activity_month
    FROM events
    WHERE event_name = 'user_activated'  -- Replace with your activity event
    GROUP BY 1, 2
),

cohort_activity AS (
    -- Join cohorts to their activity
    SELECT
        c.user_id,
        c.cohort_month,
        a.activity_month,
        -- Months since signup (0 = signup month)
        EXTRACT(YEAR FROM AGE(a.activity_month, c.cohort_month)) * 12 +
        EXTRACT(MONTH FROM AGE(a.activity_month, c.cohort_month)) AS months_since_signup
    FROM cohorts c
    LEFT JOIN activity a ON c.user_id = a.user_id
        AND a.activity_month >= c.cohort_month
),

cohort_sizes AS (
    -- Count users per cohort
    SELECT
        cohort_month,
        COUNT(DISTINCT user_id) AS cohort_size
    FROM cohorts
    GROUP BY 1
),

retention_counts AS (
    -- Count retained users per cohort per month
    SELECT
        cohort_month,
        months_since_signup,
        COUNT(DISTINCT user_id) AS retained_users
    FROM cohort_activity
    WHERE months_since_signup IS NOT NULL
    GROUP BY 1, 2
)

-- Final retention table
SELECT
    TO_CHAR(rc.cohort_month, 'YYYY-MM') AS cohort,
    cs.cohort_size,
    rc.months_since_signup AS month_number,
    rc.retained_users,
    ROUND(100.0 * rc.retained_users / cs.cohort_size, 1) AS retention_pct
FROM retention_counts rc
JOIN cohort_sizes cs ON rc.cohort_month = cs.cohort_month
ORDER BY rc.cohort_month, rc.months_since_signup;
```

*To pivot into a matrix format (cohort as rows, month as columns), use your BI tool's pivot functionality or add a CASE-based pivot in SQL.*

---

### SQL 2: Segmented Retention by Acquisition Channel

*Compares retention rates for users from different acquisition sources.*

```sql
WITH cohorts AS (
    SELECT
        user_id,
        source,
        DATE_TRUNC('month', created_at) AS cohort_month
    FROM users
    WHERE created_at >= CURRENT_DATE - INTERVAL '6 months'
),

activity AS (
    SELECT
        user_id,
        DATE_TRUNC('month', created_at) AS activity_month
    FROM events
    WHERE event_name = 'user_activated'
    GROUP BY 1, 2
),

cohort_activity AS (
    SELECT
        c.user_id,
        c.source,
        c.cohort_month,
        a.activity_month,
        EXTRACT(YEAR FROM AGE(a.activity_month, c.cohort_month)) * 12 +
        EXTRACT(MONTH FROM AGE(a.activity_month, c.cohort_month)) AS months_since_signup
    FROM cohorts c
    LEFT JOIN activity a ON c.user_id = a.user_id
        AND a.activity_month >= c.cohort_month
)

SELECT
    source,
    months_since_signup,
    COUNT(DISTINCT user_id) AS retained_users,
    COUNT(DISTINCT user_id) * 100.0 /
        NULLIF(cohort_size.cnt, 0)
        AS retention_pct
FROM cohort_activity ca
JOIN (
    SELECT source, cohort_month, COUNT(DISTINCT user_id) AS cnt
    FROM cohort_activity
    WHERE months_since_signup = 0
    GROUP BY source, cohort_month
) cohort_size USING (source, cohort_month)
WHERE ca.months_since_signup IN (0, 1, 2, 3, 6)
GROUP BY ca.source, ca.months_since_signup, cohort_size.cnt
ORDER BY ca.source, ca.months_since_signup;
```

---

### SQL 3: Activation Moment Analysis

*Finds the event or behavior that correlates with 30-day retention. Compare users who retained to Day 30 vs. those who churned before Day 7.*

```sql
WITH user_segments AS (
    -- Segment users: retained to day 30 vs. churned by day 7
    SELECT
        u.user_id,
        u.created_at AS signup_at,
        CASE
            WHEN MAX(e.created_at) >= u.created_at + INTERVAL '30 days' THEN 'retained_30d'
            WHEN MAX(e.created_at) < u.created_at + INTERVAL '7 days' THEN 'churned_7d'
            ELSE 'other'
        END AS segment
    FROM users u
    LEFT JOIN events e ON u.user_id = e.user_id
        AND e.event_name = 'session_started'  -- use any activity event
    WHERE u.created_at BETWEEN CURRENT_DATE - INTERVAL '90 days'
                            AND CURRENT_DATE - INTERVAL '35 days'
    GROUP BY u.user_id, u.created_at
),

first_session_events AS (
    -- Get all events in each user's first 24 hours
    SELECT
        e.user_id,
        e.event_name,
        us.segment
    FROM events e
    JOIN user_segments us ON e.user_id = us.user_id
    WHERE e.created_at < (
        SELECT created_at + INTERVAL '24 hours'
        FROM users WHERE user_id = e.user_id
        LIMIT 1
    )
    AND us.segment IN ('retained_30d', 'churned_7d')
)

SELECT
    event_name,
    -- Event rate for retained users
    ROUND(100.0 * SUM(CASE WHEN segment = 'retained_30d' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(DISTINCT CASE WHEN segment = 'retained_30d' THEN user_id END), 0), 1)
        AS pct_retained_who_did_this,
    -- Event rate for churned users
    ROUND(100.0 * SUM(CASE WHEN segment = 'churned_7d' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(DISTINCT CASE WHEN segment = 'churned_7d' THEN user_id END), 0), 1)
        AS pct_churned_who_did_this,
    -- Lift: how much more likely are retained users to do this?
    ROUND(
        (SUM(CASE WHEN segment = 'retained_30d' THEN 1 ELSE 0 END) * 1.0 /
            NULLIF(COUNT(DISTINCT CASE WHEN segment = 'retained_30d' THEN user_id END), 0))
        /
        NULLIF(SUM(CASE WHEN segment = 'churned_7d' THEN 1 ELSE 0 END) * 1.0 /
            NULLIF(COUNT(DISTINCT CASE WHEN segment = 'churned_7d' THEN user_id END), 0), 0),
    2) AS lift_ratio
FROM first_session_events
GROUP BY event_name
HAVING COUNT(DISTINCT user_id) > 10  -- filter low-frequency events
ORDER BY lift_ratio DESC NULLS LAST;
```

*Events with the highest "lift_ratio" are candidates for your activation moment. A ratio of 3.0+ means retained users are 3× more likely to have done this event in their first session.*

---

### SQL 4: Churn by Timing Segmentation

*Segments churned users by when they churned: Day 1, Day 7–30, or Day 30+.*

```sql
WITH last_activity AS (
    SELECT
        user_id,
        MAX(created_at) AS last_active_at
    FROM events
    WHERE event_name = 'session_started'
    GROUP BY user_id
),

churn_segments AS (
    SELECT
        u.user_id,
        u.created_at AS signup_at,
        la.last_active_at,
        EXTRACT(DAY FROM la.last_active_at - u.created_at) AS days_active,
        CASE
            WHEN la.last_active_at IS NULL
                OR EXTRACT(DAY FROM la.last_active_at - u.created_at) < 1
                THEN 'day_0_churn'  -- Never came back after signup
            WHEN EXTRACT(DAY FROM la.last_active_at - u.created_at) < 7
                THEN 'early_churn_day1_7'  -- Tried but didn't find value
            WHEN EXTRACT(DAY FROM la.last_active_at - u.created_at) < 30
                THEN 'mid_churn_day7_30'   -- Found some value; didn't stick
            ELSE 'late_churn_day30_plus'  -- Sticky user who eventually left
        END AS churn_segment
    FROM users u
    LEFT JOIN last_activity la ON u.user_id = la.user_id
    WHERE u.created_at < CURRENT_DATE - INTERVAL '60 days'
        -- Exclude users who might still be active; only look at 60+ day old cohorts
        AND (la.last_active_at IS NULL
             OR la.last_active_at < CURRENT_DATE - INTERVAL '30 days')
        -- Only churned users (no activity in last 30 days)
)

SELECT
    churn_segment,
    COUNT(user_id) AS churned_users,
    ROUND(100.0 * COUNT(user_id) / SUM(COUNT(user_id)) OVER (), 1) AS pct_of_churn,
    ROUND(AVG(days_active), 1) AS avg_days_active
FROM churn_segments
GROUP BY churn_segment
ORDER BY
    CASE churn_segment
        WHEN 'day_0_churn' THEN 1
        WHEN 'early_churn_day1_7' THEN 2
        WHEN 'mid_churn_day7_30' THEN 3
        WHEN 'late_churn_day30_plus' THEN 4
    END;
```

---

### SQL 5: Net Revenue Retention (NRR)

*Calculates Net Revenue Retention — the gold standard SaaS metric. NRR > 100% means existing customers are growing faster than they churn.*

```sql
WITH monthly_revenue AS (
    -- Monthly revenue per customer (replace with your subscriptions table)
    SELECT
        customer_id,
        DATE_TRUNC('month', billing_period_start) AS revenue_month,
        SUM(amount) AS mrr
    FROM subscriptions
    WHERE status = 'active'
    GROUP BY customer_id, DATE_TRUNC('month', billing_period_start)
),

revenue_comparison AS (
    SELECT
        r1.revenue_month AS base_month,
        r1.customer_id,
        r1.mrr AS base_mrr,
        COALESCE(r2.mrr, 0) AS next_month_mrr,
        CASE
            WHEN r2.customer_id IS NULL THEN 'churned'
            WHEN r2.mrr > r1.mrr THEN 'expansion'
            WHEN r2.mrr < r1.mrr THEN 'contraction'
            ELSE 'flat'
        END AS revenue_movement
    FROM monthly_revenue r1
    LEFT JOIN monthly_revenue r2
        ON r1.customer_id = r2.customer_id
        AND r2.revenue_month = r1.revenue_month + INTERVAL '1 month'
)

SELECT
    base_month,
    SUM(base_mrr) AS starting_mrr,
    SUM(next_month_mrr) AS ending_mrr_from_cohort,
    -- Net Revenue Retention
    ROUND(100.0 * SUM(next_month_mrr) / NULLIF(SUM(base_mrr), 0), 1) AS nrr_pct,
    -- Component breakdown
    ROUND(100.0 * SUM(CASE WHEN revenue_movement = 'expansion'
        THEN next_month_mrr - base_mrr ELSE 0 END) / NULLIF(SUM(base_mrr), 0), 1) AS expansion_pct,
    ROUND(100.0 * SUM(CASE WHEN revenue_movement = 'churned'
        THEN base_mrr ELSE 0 END) / NULLIF(SUM(base_mrr), 0), 1) AS churn_pct,
    ROUND(100.0 * SUM(CASE WHEN revenue_movement = 'contraction'
        THEN base_mrr - next_month_mrr ELSE 0 END) / NULLIF(SUM(base_mrr), 0), 1) AS contraction_pct
FROM revenue_comparison
GROUP BY base_month
ORDER BY base_month;
```

**NRR benchmarks:**
- NRR > 120%: World-class (Snowflake-level)
- NRR > 100%: Excellent — existing customers are growing faster than churn
- NRR = 90–100%: Healthy but room for improvement
- NRR < 90%: At risk — churn and contraction exceed expansion

---

## Part 4: Cohort Analysis Interpretation Guide

### What to Look For

**1. Improving cohorts over time**
Are newer cohorts retaining better than older ones? If December cohort retains at 40% at Month 3 vs. a June cohort that retained at 25%, your product is improving. This is the signal most teams miss.

**2. Segments with drastically different retention**
If users who came from organic search retain at 35% Month 3 while users from paid social retain at 12%, you have an ICP mismatch in your paid channels. Fix targeting before scaling spend.

**3. Sudden drops in specific cohorts**
A cohort that drops sharply at Month 2 when others don't: was there a pricing change, a major outage, or a product change that month? Find the event that caused the cohort drop.

**4. Seasonality**
B2B SaaS often sees lower retention in cohorts acquired in December (budget approval delays, holidays) and better retention in cohorts acquired during budget cycles (Q1).

### The Three Cohort Questions

For every cohort analysis, answer:

1. **Curve shape:** Does the curve flatten, or does it approach zero?
2. **Plateau level:** Where does it flatten? Is that above your sustainability threshold?
3. **Trend:** Are newer cohorts better or worse than older cohorts at the same period?

---

> **Disclaimer:** This analysis was generated by an AI system using structured frameworks and available data. While it applies established methodologies (cited where applicable), the outputs reflect AI-generated analysis and should be treated as a starting point for decision-making — not a final answer. Validate key assumptions with domain experts, mentors, and advisors before making significant business decisions.
