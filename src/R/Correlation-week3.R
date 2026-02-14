car <- data.frame(
  Speed_mph = c(20, 30, 40, 50, 60, 70, 80),
  StopDist_ft = c(40, 75, 120, 175, 240, 315, 400))

# Correlation in original units
cor_original <- cor(car$Speed_mph, car$StopDist_ft)
cor_original
# Convert units:
# mph → km/h  (1 km/h = 1 mph / 1.609 → mph = km/h * 1.609)
Speed_kmh = car$Speed_mph / 1.609
# ft → meters  (1 m = 1 ft / 3.281 → ft = m * 3.281)
StopDist_m = car$StopDist_ft / 3.281
# Correlation after unit conversion
cor_converted <- cor(Speed_kmh, StopDist_m)
cor_converted
# Plot
plot(car$StopDist_ft ~ car$Speed_mph,
     xlab = "Speed (mph)",
     ylab = "Stopping Distance (ft)",
     main = "Speed vs. Stopping Distance")
# Regression line
abline(lm(car$StopDist_ft ~ car$Speed_mph))
