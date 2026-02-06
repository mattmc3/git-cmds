.PHONY: bump-major bump-minor bump-revision

bump-major:
	bump2version major

bump-minor:
	bump2version minor

bump-revision:
	bump2version revision
