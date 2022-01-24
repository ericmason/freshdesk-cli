# Freshdesk CLI

This is a Docker image of the [Freshdesk CLI](https://developers.freshdesk.com/v2/docs/freshworks-cli/) to save you installing Node 12 and somewhat insulate you from any npm package dependency vulnerabilities.


## How to run in your terminal 
To easily run the docker Freshdesk CLI in your terminal, add to your `.zshrc` or `.bashrc` and start a new shell:

```
alias fdk='docker run -v `pwd`:/freshdesk --rm  -it ericmason/freshdesk-cli'
```

Now when you run `fdk` you will run the docker version. The current directory is mounted into the docker container so it can access the files there.
