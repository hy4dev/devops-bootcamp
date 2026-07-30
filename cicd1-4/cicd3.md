# CI/CD 3

1. Secrets
- Secrets in CI/CD are sensitive data like API keys, passwords, and tokens used by automated pipelines to build, test, and deploy software. 
- Never store these values in plain text within code or configuration files. 
- Instead, manage them securely using native platform settings, external vaults, or dynamic short-lived credentials.
- Common Storage Methods:
    - Platform Native Variables: Store encrypted keys directly in tool settings (such as GitHub Actions repository secrets or GitLab CI/CD variables) where they are masked in logs.
    - External Secret Managers: Fetch values dynamically at runtime from dedicated vaults (like HashiCorp Vault or AWS Systems Manager Parameter Store) to keep a single source of truth.
    - OIDC Federation: Use OpenID Connect to exchange short-lived tokens with cloud providers, eliminating the need to store long-lived static credentials.

2. Variables
- CI/CD variables are key-value pairs used to pass dynamic data, configuration settings, and secrets into pipelines. 
- The main types include predefined variables, global/local pipeline file variables, and UI-managed project/group secrets. 
- They help avoid hardcoding values and secure sensitive data.
- Types of CI/CD Variables
    - Predefined: System-generated tags, branch names, and commit IDs provided automatically by the platform.
    - Global/File-level: Defined directly inside configuration files (like .gitlab-ci.yml) to apply across all or specific jobs.
    - Project/Group UI level: Stored securely in platform settings dashboards for reusability across workflows.