.PHONY: bump bump-quick-ssm bump-quick-tag bump-quick-ecs watch watch-quick-ssm watch-quick-tag watch-quick-ecs

# Trigger the GitHub Actions workflow that bumps the quick-ssm formula
bump-quick-ssm:
	gh workflow run "Bump quick-ssm formula" --ref main

# Trigger the GitHub Actions workflow that bumps the quick-tag formula
bump-quick-tag:
	gh workflow run "Check sources for new releases" --ref main

# Trigger the GitHub Actions workflow that bumps the quick-ecs formula
bump-quick-ecs:
	gh workflow run "Check sources for new releases" --ref main

# Alias
bump: bump-quick-ssm

# Watch the latest run of the bump workflow on main
watch-quick-ssm:
	@WORKFLOW="Bump quick-ssm formula"; \
	RUN_ID=$$(gh run list --workflow "$$WORKFLOW" --branch main --limit 1 --json databaseId -q '.[0].databaseId'); \
	if [ -z "$$RUN_ID" ]; then \
	  echo "No recent run found for '$$WORKFLOW' on 'main'"; \
	  exit 1; \
	fi; \
	echo "Watching run $$RUN_ID for '$$WORKFLOW'..."; \
	gh run watch $$RUN_ID --exit-status

# Watch the latest run of the bump workflow on main for quick-tag
watch-quick-tag:
	@WORKFLOW="Check sources for new releases"; \
	RUN_ID=$$(gh run list --workflow "$$WORKFLOW" --branch main --limit 1 --json databaseId -q '.[0].databaseId'); \
	if [ -z "$$RUN_ID" ]; then \
	  echo "No recent run found for '$$WORKFLOW' on 'main'"; \
	  exit 1; \
	fi; \
	echo "Watching run $$RUN_ID for '$$WORKFLOW'..."; \
	gh run watch $$RUN_ID --exit-status

# Watch the latest run of the bump workflow on main for quick-ecs
watch-quick-ecs:
	@WORKFLOW="Check sources for new releases"; \
	RUN_ID=$$(gh run list --workflow "$$WORKFLOW" --branch main --limit 1 --json databaseId -q '.[0].databaseId'); \
	if [ -z "$$RUN_ID" ]; then \
	  echo "No recent run found for '$$WORKFLOW' on 'main'"; \
	  exit 1; \
	fi; \
	echo "Watching run $$RUN_ID for '$$WORKFLOW'..."; \
	gh run watch $$RUN_ID --exit-status

# Alias
watch: watch-quick-ssm


