# COMMANDO AI
![](https://github.com/CommandoAI/CommandoShell/blob/main/commandoshell.gif)

**To install and setup, copy & run the following in your Bash**

```
git clone https://github.com/CommandoAI/CommandoShell; cd CommandoShell; chmod +x init.sh; ./init.sh; exec "$SHELL"
```
***
**Example request: (all requests MUST start with `commmando`)**

```
commando create a new AWS S3 bucket named "oregBucket" in the US West region with versioning enabled
```


:arrow_down_small: **Example response** :arrow_down_small:

```
aws s3api create-bucket --bucket example-bucket --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2 --versioning-configuration Status=Enabled
```

***
***
## Currently supports the following:
1) Native Shell (BASH, Zsh, CMD)
2) AWS CLI
3) gCloud CLI
4) Azure CLI
5) Docker CLI
6) Kubernetes CLI

_Support for custom CLIs and documentations coming soon_
