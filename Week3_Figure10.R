## ============================================================
## Week 3 - Figure 10: Population Representation
## Two bar charts:
##   1. Study Population vs. Number of Studies
##   2. Study Population vs. Total Participants
## ============================================================

# ---- Data ----
study_population <- c("Stroke", "Amputees", "Spinal Cord Injury (SCI)",
                      "Parkinson's Disease", "Healthy Individuals")

number_of_studies <- c(3, 4, 6, 1, 1)
total_participants <- c(89, 39, 148, 32, 8)

# ============================================================
# Figure 10a: Study Population vs. Number of Studies
# ============================================================
png("Figure10a_NumberOfStudies.png", width = 1600, height = 1300, res = 200)
par(mar = c(8, 5, 4, 2))  # extra bottom margin for angled labels

bar_positions <- barplot(
  number_of_studies,
  names.arg = FALSE,
  col = "#1F77B4",
  border = "white",
  main = "Study Population vs. Number of Studies",
  xlab = "",
  ylab = "Number of Studies",
  ylim = c(0, max(number_of_studies) + 1),
  las = 1
)

text(
  x = bar_positions,
  y = -0.3,
  labels = study_population,
  srt = 30,
  adj = 1,
  xpd = TRUE,
  cex = 0.9
)

dev.off()

# ============================================================
# Figure 10b: Study Population vs. Total Participants
# ============================================================
png("Figure10b_TotalParticipants.png", width = 1600, height = 1300, res = 200)
par(mar = c(8, 5, 4, 2))

bar_positions2 <- barplot(
  total_participants,
  names.arg = FALSE,
  col = "#1F77B4",
  border = "white",
  main = "Study Population vs. Total Participants",
  xlab = "",
  ylab = "Total Participants",
  ylim = c(0, max(total_participants) + 10),
  las = 1
)

text(
  x = bar_positions2,
  y = -4,
  labels = study_population,
  srt = 30,
  adj = 1,
  xpd = TRUE,
  cex = 0.9
)

dev.off()

# ============================================================
# Also save the underlying data as a CSV for the GitHub repo
# ============================================================
write.csv(
  data.frame(
    Study_Population = study_population,
    Number_of_Studies = number_of_studies,
    Total_Participants = total_participants
  ),
  "figure10_data.csv",
  row.names = FALSE
)

cat("Done. Files created:\n")
cat(" - Figure10a_NumberOfStudies.png\n")
cat(" - Figure10b_TotalParticipants.png\n")
cat(" - figure10_data.csv\n")