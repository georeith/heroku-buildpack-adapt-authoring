cd "adapt_authoring"
yes "" | node install \
  --dataRoot "data" \
  --dbConnectionUri "${MONGODB_URI}" \
  --dbName "${MONGODB_NAME}" \
  --install true \
  --masterTenantName "${ADMIN_NAME}" \
  --masterTenantDisplayName "${ADMIN_DISPLAY_NAME}" \
  --serverName localhost \
  --serverPort ${PORT} \
  --sessionSecret "${SESSION_SECRET}" \
  --suEmail "${ADMIN_EMAIL}" \
  --suPassword "${ADMIN_PASSWORD}" \
  --suRetypePassword "${ADMIN_PASSWORD}" \
  --useConnectionUri true \
  --useffmpeg false
touch "../adapt_authoring_tool_installed"
