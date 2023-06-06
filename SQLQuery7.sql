SELECT BikeUsageReason, COUNT(*)
FROM BikeUsage
GROUP BY BikeUsageReason
