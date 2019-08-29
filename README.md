# Resume-II

## PDF of Resume:
Please find the latest version of the resume in `Releases`


## Build Toolchain.
Tools required:

1. Travis Cli ( I am working on [Travis](https://travis-ci.com/) and NOT on `.org` )
2. Github account

To get the personal token (OAUTH) for your repo, please follow the following steps on travis-cli tool.
```
$ travis login --com
$ travis token --com
$ travis setup --com --token <that token from step 2> -f releases -add
```
*Reference - [Travis Documentation](https://docs.travis-ci.com/user/deployment/releases/)*

On the newly produced `.travis.yml` Change the following:
1. add `skip_cleanup: true` to the deploy key
2. Change the github username and email in the `before_deploy` key.
3. (Optional) Change the name of the tag as desired.


## Acknowledgements:
Based on resume from Christophe Roger (aka Darwin) hosted on [Github](https://github.com/darwiin/yaac-another-awesome-cv)
