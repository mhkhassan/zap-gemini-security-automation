#!/bin/bash

TARGET_URL="$1"
REPORT_FILE="zap_report.xml"

echo "🔍 Running ZAP scan on: $TARGET_URL"

# This assumes ZAP is available in the GitHub Action Docker container
/zap/zap.sh -cmd -quickurl "$TARGET_URL" -quickout "$REPORT_FILE"

echo "✅ ZAP scan completed. Report saved to $REPORT_FILE"
