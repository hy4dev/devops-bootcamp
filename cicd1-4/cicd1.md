# CI/CD 1

1. CI/CD Workflow and Pipeline
- A CI/CD workflow and pipeline is a set of automated steps that lets software teams build, test, and ship code fast and safely. 
- CI means Continuous Integration (merging and testing code often), while CD means Continuous Delivery or Deployment (releasing code to users).
- Core Concepts:
    - Continuous Integration (CI): Developers push small code changes to a shared system several times a day. 
    - The system automatically builds the app and runs tests to catch bugs early.
    - Continuous Delivery (CD): Approved code is automatically prepared and sent to a staging area, waiting for a human click to go live.
    - Continuous Deployment (CD): Every change that passes tests goes straight to live users with no human stopping it.
- Pipeline Stages:
    - Source: A developer writes code and pushes it to a tool like Git.
    - Build: The system puts the code pieces together and gets the program ready to run.
    - Test: Automated programs run checks to see if things are broken.
    - Deploy: The working software is sent out to testing or live servers.

2. Job
- A CI/CD pipeline breaks down into a hierarchy of three main parts: a workflow contains one or more jobs, and each job contains a sequence of individual steps.
- Understanding the Hierarchy
    - Workflow: The top-level automated process (like a YAML file in .github/workflows) triggered by events such as a code push or pull request.
    - Job: A specific group of tasks running on the same virtual machine runner (e.g., a test job or a build job). Jobs can run sequentially or in parallel.
    - Step: An individual, sequential task within a job that runs a command or reuses an action.

3. GitHub Pages
- To run GitHub Pages using a CI/CD pipeline, the most efficient and native method is configuring GitHub Actions.