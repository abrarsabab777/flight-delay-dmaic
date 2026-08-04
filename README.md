# US Flight Delay Root Cause Analysis — DMAIC Project

**Lean Six Sigma Green Belt Portfolio Project**  
Sabab Abrar Hamim | UTA Industrial, Manufacturing & Systems Engineering  
LSSGB Certified June 2026 | Minors: Information Systems · Sustainable Engineering

---

## Project Summary

Applied the full DMAIC methodology to analyze **6,847,899 US domestic flights** from 2023 BTS On-Time Performance data. Identified root causes of flight delays and designed data-driven improvement recommendations targeting a 40.7% reduction in risk priority number (RPN).

**Baseline:** 79.94% on-time rate | DPMO: 200,600 | Sigma: ~2.3 | Cpk: 0.044  
**Projected:** 87.00% on-time rate | DPMO: 130,000 | Sigma: ~2.7

---

## Live Dashboards

| Platform | Link |
|----------|------|
| Tableau Public (5 interactive charts) | [USFlightDelayDMAICAnalysis2023](https://public.tableau.com/app/profile/sabab.abrar.hamim/viz/USFlightDelayDMAICAnalysis2023) |
| Power BI KPI Dashboard + SPC Chart | [FlightDelay_Dashboard](https://app.powerbi.com/groups/me/reports/9047430d-f4c9-4925-894b-dfa90930c9f0/c3ba33ed7cd3d3e30cd4?experience=power-bi) |
| Notion Portfolio | [Full DMAIC Portfolio Page](https://smart-forsythia-ddd.notion.site/US-Flight-Delay-Root-Cause-Analysis-DMAIC-Project-3b285f45539380be9acfffc088cedb9f) |
| GitHub Repository | [abrarsabab777/flight-delay-dmaic](https://github.com/abrarsabab777/flight-delay-dmaic) |

---

## Key Findings

| Category | Finding |
|----------|---------|
| #1 Delay Driver | Late aircraft cascade — avg **28.47 min** |
| #2 Delay Driver | Carrier/maintenance delays — avg **25.84 min** |
| Worst Month | **July** — 71.93% on-time rate |
| Best Month | **November** — 86.94% on-time rate |
| Worst Airline | **JetBlue (B6)** — 69.2% on-time rate |
| Best Airline | **Republic (YX)** — 87.2% on-time rate |
| Worst Airport | **FLL (Fort Lauderdale)** — 69.37% on-time rate |
| Statistical Test | B6 vs YX difference: p = 0.002 (significant) |
| Process Capability | Cpk = 0.044 (benchmark ≥ 1.33 — severely incapable) |

---

## Tools Used

| Tool | Phase | Purpose |
|------|-------|---------|
| SQL (SQLite / DB Browser) | Measure | Baseline queries, DPMO, sigma level |
| Tableau Public | Analyze | 5 interactive charts — bar, Pareto, trend, map, heatmap |
| Excel (Data Analysis ToolPak) | Analyze | Regression (R²=0.9999), t-test (p=0.002), Cpk |
| Power BI + DAX | Control | KPI dashboard + SPC control chart (UCL/LCL) |
| PowerPoint (UTA Template) | Define/Analyze | Project Charter, SIPOC, Fishbone diagram |
| Microsoft Word | Analyze | 5-Why root cause analysis |
| GitHub | All | Version control and portfolio hosting |

---

## DMAIC Phase Summary

| Phase | Key Deliverable | Status |
|-------|----------------|--------|
| **Define** | Project Charter, SIPOC, VOC (DOT Consumer Report) | ✅ Complete |
| **Measure** | SQL queries, baseline 79.94%, DPMO 200,600, Sigma 2.3 | ✅ Complete |
| **Analyze** | Tableau (5 charts), Fishbone, 5-Why, t-test, regression, Cpk | ✅ Complete |
| **Improve** | FMEA (5 failure modes, RPN 1,269 → 753), solution design | ✅ Complete |
| **Control** | Power BI KPI dashboard, SPC chart, Control Plan | ✅ Complete |

---

## Folder Structure

```
flight-delay-dmaic/
├── 01-Define/          # Project Charter (PPTX + PDF), SIPOC, VOC Summary
├── 02-Measure/         # queries.sql (all 5 queries + results), DB Browser project file
├── 03-Analyze/         # Tableau CSVs, Fishbone diagram, 5-Why analysis, sample_data.xlsx
├── 04-Improve/         # FMEA.xlsx (5 failure modes, RPN analysis, Improve Summary)
├── 05-Control/         # FlightDelay_Dashboard.pbix, ControlPlan.pdf
├── 06-Dashboard/       # LinkedIn_Post.txt
├── 07-Website/         # Portfolio documentation
├── .gitignore          # Excludes raw CSVs and .db file (>1 GB — see note below)
└── progress_log.md     # Daily project tracking log
```

> **Note on data files:** The raw SQLite database (`flight_delays.db`, ~1 GB) and source CSVs are excluded from this repo via `.gitignore`. Dataset source: [BTS On-Time Performance Data](https://www.transtats.bts.gov/DL_SelectFields.aspx?gnoyr_VQ=FGJ&QO_fu146_anzr=b0-gvzr) — 2023 full year, all carriers.

---

## SPC Control Limits (from Power BI)

| Metric | Value |
|--------|-------|
| Mean On-Time Rate | 79.95% |
| UCL (Upper Control Limit) | 93.78% |
| LCL (Lower Control Limit) | 66.12% |
| All 12 months in control? | Yes |

---

## Resume Bullets

> Conducted DMAIC-based flight delay root cause analysis on 6.8M BTS flight records using SQL, Tableau, and Power BI; identified late aircraft cascade as #1 delay driver (avg 28.47 min) and JetBlue as worst performer (69.2% on-time rate)

> Built interactive Power BI KPI dashboard with DAX measures and SPC control chart (UCL=93.78%, LCL=66.12%); projected 40.7% RPN reduction through buffer scheduling and predictive maintenance improvements

---

## Sustainability Angle

Flight delays generate significant wasted fuel and CO₂ emissions. At ~5 gallons/minute for a typical narrow-body aircraft, the 1,356,230 delayed flights in 2023 (avg delay 30+ min) represent hundreds of millions of gallons of excess fuel burn — connecting process improvement directly to environmental impact (Sustainable Engineering minor).

---

*Dataset: BTS On-Time Performance 2023 | Timeline: June–July 2026*  
*LSSGB Portfolio Project — not affiliated with any airline or government agency*
