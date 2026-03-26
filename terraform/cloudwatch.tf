resource "aws_cloudwatch_dashboard" "golden_signals" {
  dashboard_name = "golden-signals"

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric"
        properties = {
          title  = "Golden Signals"
          region = var.region
          period = 300
          stat   = "Average"

          metrics = [
            ["AWS/ApplicationELB", "RequestCount"],
            ["AWS/ApplicationELB", "TargetResponseTime"],
            ["AWS/ApplicationELB", "HTTPCode_Target_5XX_Count"]
          ]
        }
      }
    ]
  })
}
