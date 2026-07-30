# CI/CD 2

1. Gate Test
- A quality gate test in a CI/CD pipeline is an automated checkpoint that stops bad code from moving forward. 
- Common examples include unit tests, code coverage thresholds, and security vulnerability scans. 
- If a check fails, the pipeline halts immediately.

2. Branch Protection
- Branch protection in CI/CD is a security setting that blocks direct code changes and requires automated tests and peer reviews to pass before code enters main branches. 
- Key controls include required status checks, pull request reviews, and blocking force pushes.
- Core Rules:
    - No direct pushes: Stops anyone from writing code straight to production or main branches.
    - Required status checks: Forces your CI/CD pipeline tests and linters to finish and pass before code can merge.
    - Pull request reviews: Demands approval from one or more team members before merging.
    - Block force pushes: Stops users from overwriting history on vital branches.