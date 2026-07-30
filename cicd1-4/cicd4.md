# CI/CD 4

1. GHCR
- GitHub Container Registry (GHCR) is a private and public cloud hosting service for OCI and Docker images that integrates directly inside the GitHub ecosystem. 
- In a CI/CD pipeline, GHCR acts as a highly efficient middleman: the Continuous Integration (CI) stage builds your source code into a container image and pushes it to GHCR, while the Continuous Delivery (CD) stage pulls that image out of GHCR to run it on servers, Kubernetes, or cloud providers.
- Using GHCR within your automation saves you from managing third-party registry tokens and completely bypasses the strict download rate limits found on free tiers of services like Docker Hub.
- Core CI/CD Workflow with GHCR:
    - A standard automated pipeline follows four distinct steps:
        - Authentication: The pipeline securely logs into ghcr.io.
        - Build & Tag: The runner creates a new Docker image from your code and tags it using the GHCR domain structure.
        - Publish (CI): The pipeline uploads the final image layer package to GHCR.
        - Pull & Run (CD): The destination production environment logs into GHCR, downloads the new tag, and replaces the old running container.

2. Self Hosted Runner
- A self-hosted runner in a CI/CD pipeline is a server or virtual machine that you own and manage yourself to run automated build, test, and deployment jobs, instead of using cloud-managed infrastructure provided by platforms like GitHub or GitLab. 
- Key benefits include custom hardware specifications, direct access to internal private network resources, and zero per-minute cloud execution costs.