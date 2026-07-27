# Progress Log

## Jun 17

* GitHub repo created (flight-delay-dmaic)
* Folder structure created
* Day 1 complete

## Jun 18

* Downloaded all 12 months of 2023 BTS On-Time data
* Saved to 02-Measure folder
* Day 2 complete

## Jun 19

* Downloaded all 12 months of 2023 BTS On-Time data
* Saved to 02-Measure folder
* Day 2 complete

## Jun 25

* Built DMAIC Project Charter in PowerPoint (UTA template)
* Exported as PDF
* Day 3 complete

## Jun 29

* Built SIPOC diagram in PowerPoint (UTA template)
* Researched DOT Air Travel Consumer Report, wrote VOC summary
* Day 4 complete — Define phase finished (Charter + SIPOC + VOC)

## Jul 1

* Loaded 6,847,899 flights into SQLite (DB Browser)
* Wrote 5 SQL queries: baseline, delay causes, airline ranking, monthly trend, airport ranking
* Baseline: 79.94% on-time | DPMO: 200,600 | Sigma: \~2.3
* Day 5 complete — Measure phase SQL done

## Jul 2

* Exported 5 query results as CSVs to 03-Analyze folder
* Built 5 Tableau charts: airline bar, delay causes Pareto, monthly trend line, US airport map, airline×month heatmap
* Published to Tableau Public: https://public.tableau.com/app/profile/sabab.abrar.hamim/viz/USFlightDelayDMAICAnalysis2023
* Day 6 complete — Analyze phase visualizations done

## Jul 7

* Built Fishbone diagram (6 cause categories) in PowerPoint
* Wrote 5-Why analysis (2 root causes: late aircraft + carrier delay)
* Excel stats: Correlation, Regression (R²=0.9999), t-test (p=0.002), Cpk=0.044
* Day 7 complete — Analyze phase fully done

## Jul 26

* Built FMEA table in Excel (5 failure modes, RPN scores, recommended actions)
* Top RPN: Late Aircraft cascade (405) → projected 243 after improvements
* Built Improve Summary: current 2.3σ → projected 2.7σ, DPMO 200,600 → 130,000
* RPN reduction: 40.7% (1,269 → 753)
* Day 8 complete — Improve phase done

## Jul 27

* Built Power BI dashboard: 4 KPI cards, airline bar chart, monthly trend line, SPC control chart
* Wrote 9 DAX measures including CALCULATE+ALL() for UCL/LCL control limits
* Added Month + Airline slicers (interactive filtering)
* Published to Power BI Service: https://app.powerbi.com/groups/me/reports/9047430d-f4c9-4925-894b-dfa90930c9f0
* Built Control Plan document (CTQ, measurement system, reaction plan, sustainability note)
* Day 9 complete — Control phase done

