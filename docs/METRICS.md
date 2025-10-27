### Link to HEART Framework Slides
https://docs.google.com/presentation/d/1A86fSv0noqCGBRWWzoAt9QWI9vcOWphpOnuApP_IL44/edit?slide=id.gc8216bd24_20_0#slide=id.gc8216bd24_20_0 

## Overview
This document defines key metrics tracked for the Ascend indoor bouldering app.  
These metrics align with the Google **HEART Framework** (Happiness, Engagement, Adoption, Retention, Task Success)  
and will be used to measure user experience and growth across sprints.

## Metric Collection Details

### 1. **Happiness with NPS (Net Promoter Score)**
- **Event name:** `nps_submit(score)`
- **How to collect:**  
  - Prompt users with NPS question after their 3rd session.  
  - Save `user_id`, `score`, `date` to `nps_responses` table.  
- **Formula:** %Promoters (9–10) − %Detractors (0–6)

### 2. **Adoption with New user session rate**
- **Definition:** % of new sign-ups who start a session within 24 hours.  
- **Events:** `sign_up`, `start_session`
- **How to collect:**  
  - Store signup timestamp (`signup_ts`).  
  - When `start_session` occurs within 24h, mark `adopted=true`.  
  - Calculate daily adoption = adopted / total signups.
    
### 3. **Engagement with DAU (Daily Active Users)**
- **Definition:** Unique users who generate any active event in a day.  
- **Events:** `app_open`, `start_session`, `log_attempt`, `end_session`
- **How to collect:**  
  - Firebase/BigQuery daily count of distinct `user_id` where event_name in the list above.

### 4. **Retention with daily and weekly logging**
- **Definition:** Measures how often users return after first use.  
- **Events:** `sign_up`, `start_session`, `log_attempt`
- **How to collect:**  
  - Group users by signup date (Day 0).  
  - D1 = % active on Day 1  
  - D7 = % active on Day 7  
  - D28 = % active on Day 28  
  - Also track W1 (within 1 week) and W4 (within 4 weeks).

### 5. **Task Success with CTR (Golden Path: Home → Start Session)**
- **Definition:** Click-through rate for starting a session from the home screen.  
- **Events:** `home_view`, `start_session(source=home)`
- **How to collect:**  
  - Denominator = total `home_view` events  
  - Numerator = `start_session` where `source=home`  
  - CTR = numerator / denominator  
  - Display as 7-day rolling average.

### 6. **Problems Logged per Active User as a App-Specific Metric**
- **Definition:** Measures how actively users log their climbing attempts.  
- **Events:** `log_attempt(route_id, outcome, grade)`
- **How to collect:**  
  - Count total `log_attempt` events per day.  
  - Divide by DAU to find **PL/DAU** (Problems Logged per Active User).  
  - Track average and grade breakdown (V0–V10).
