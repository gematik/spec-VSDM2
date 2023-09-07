# Create the repository on GitHub
1. Request a new repository by creating a [OSPO ticket](https://service.gematik.de/secure/CreateIssue!default.jspa)
    * Provide the [needed information](https://wiki.gematik.de/display/OSPO/GitHub+Berechtigungen#GitHubBerechtigungen-Anfordern) to the ticket
    * The name should correspond to "spec-[NameOfYourSimplifierProject]" naming convention
    * While creating this ticket, additionally provide information that
        * you want to create your repository by cloning from "spec-TemplateForSimplifierProjects", so that a new repository will be created for you which is based on the [template repository](https://github.com/gematik/spec-TemplateForSimplifierProjects)
        * you need appropriate access privileges to manipulate the settings of the new repository

    <br/>

2. Your new repository is getting created, give it some time. After creation, the ticket will be set to DONE-state and your repository will be findable in the [repositories list](https://github.com/orgs/gematik/repositories)
3. Add your repository to our [GitHub Projects page](https://wiki.gematik.de/display/QM/GitHub+Projects) and leave the needed details

    <br/>

# Configure the repository on GitHub
* Configure some settings to prepare your repository for the intended behaviour
    * Settings > Actions > General > check
        * "Allow all actions and reusable workflows"
        * "Read and write permissions"
        * "Allow GitHub Actions to create and approve pull requests"
        * save!
    * Settings > Secrets > Actions > create repository secrets > New repository secret
        * Name: SIMPLIFIER_USERNAME, Secret: *your simplifier username*
        * Name: SIMPLIFIER_PASSWORD, Secret: *your simplifier password*
    * Settings > Branches > Branch protection rule > Add branch protection rule > check
        * enter branch name pattern "*"
        * "Require a pull request before merging"
        * "Require approvals"
        * "Require status checks to pass before merging"
        * "Require branches to be up to date before merging"
        * save

Now you can clone your repository to your local machine.

<br/>
