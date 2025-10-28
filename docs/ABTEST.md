Braden Hutchins - Slider vs Star climb ranking. US4. Engagement. 
  The problem we're trying to solve is that users will want to give feedback for climbs and we want to know if its better to have a 1-5 star ranking system, or a soft-hard scale.
  We will make 50% of users able to see the experiment since it is a minor design desision and want to get the most feedback from each group.
  We would change the ranking system of each climb between a star ranking and a hard soft slider. We can see how users respond to the changes. 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Joseph Imondi. Local Gyms - Map vs List. US3. Engagement.
Metrics: Gyms viewed, Gyms selected

Hypothesis: Map will reduce actions and increase ease of access by giving context; List will better gym detail and discoverability by making scanning simpler.

Problem & Impact: Users need a fast way to discover nearby gyms; we don’t know whether a map or a list is easier for the user. This affects discovery and direction, which drives real world gym visits.

Experiment: Show to 50% of users; split that 50/50 between Map and List. Track: gyms viewed and gyms selected. See which way makes the users go to gyms more.

Variations: 
    Map -  Show the users a map of the local area with all the gyms available
    List - Show the users a list of all local gyms 

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
## A/B Joshua Klemm
**Rate a Climb: Inline Bar vs. Separate Rating Screen | US4 – Engagement**

### Hypothesis  
Users will engage more frequently and rate more climbs when the rating system is **embedded directly next to the add/subtract climb buttons (inline bar)** rather than being placed on a **separate screen**.  

Reducing the friction of having to navigate to another screen will make rating faster and more intuitive, leading to higher engagement and adoption of the feature.

### Problem & Impact  
Users can log climbs easily, but few might take the extra step to rate the difficulty or quality of the climb. Requiring an additional screen to rate adds unnecessary friction and interrupts the user flow.  

This would impact our ability to collect quality feedback on climbs, which is important for both setters (who rely on user ratings to adjust difficulty and improve climbs) and other climbers.  

### Experiment Setup (Firebase)  

**Firebase Tools Used:**  
- Firebase A/B Testing  
- Firebase Analytics  

**Audience:**  
All users who log a climb will be randomly split into two groups:  
- **Group A (50%)** – Sees the **inline rating bar** next to the “Add/Subtract Climb” buttons.  
- **Group B (50%)** – Sees the **separate rating screen** that opens after clicking “Rate.”  

### Variations  

**Variation A – Inline Rating Bar**  
Users see a simple **rating bar (e.g., 1–5 stars or difficulty scale)** directly next to the “Add/Subtract Climb” buttons.  
- Minimal UI change  
- Immediate access — one less click
  
**Variation B – Separate Rating Screen**  
Clicking “Rate” opens a new screen showing:  
- Climb details (grade, setter, gym section, etc.)  
- Rating scale and optional comment box  



## Jared Peltier
Quick Log: Sticky Bottom Bar vs. Floating Action Button | US4 – Engagement

## Hypothesis
Users will log more climbs and do so faster when the “Log Attempt” button is always visible in a sticky bottom bar compared to being accessed through a floating action button.
Keeping the main action persistent makes logging attempts more intuitive, leading to higher engagement and a smoother user experience.

## Problem & Impact
Currently, users may forget or skip logging climbs because the floating button is less visible while navigating the app. This can result in fewer logged attempts.
This impacts the app’s engagement data and climbers’ ability to accurately track progress. Reducing the number of taps and making the action always visible should encourage consistent climb logging and improve data collection for progress tracking.

## Experiment Setup (Firebase)
Firebase A/B Testing
Firebase Analytics

## Audience:
All users who start a climbing session will be randomly split into two groups:
Group A (50%) – Sees the sticky “Log Attempt” bar fixed at the bottom of the screen.
Group B (50%) – Sees the floating “Log Attempt” button (FAB) in its current position.

## Variations
Variation A – Sticky Bottom Bar
Users see a persistent bar along the bottom with a clear “Log Attempt” button.
Always visible during a session
Reduces steps to log a climb
Encourages faster, more frequent logging

Variation B – Floating Action Button (FAB)
Users see the current floating button in the bottom-right corner.
Requires an additional tap to access logging
Maintains current UI flow for baseline comparison
