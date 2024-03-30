## Setup & installation 


**To install and setup, copy & run the following in your Bash**

```
git clone https://github.com/CommandoAI/CommandoShell; cd CommandoShell; chmod +x init.sh; ./init.sh; exec "$SHELL"
```
***
## Example request
**All requests MUST start with `commmando`**

![](https://github.com/CommandoAI/CommandoShell/blob/main/commandoshell.gif)

```
commando create a new AWS S3 bucket in US West with versioning enabled
```


:arrow_down_small: **Example response** :arrow_down_small:

```
aws s3api create-bucket --bucket example-bucket --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2 --versioning-configuration Status=Enabled
```

***

## Commando can help you with:
1) Native Shell commands (BASH, Zsh, CMD)
2) AWS CLI
3) gCloud CLI
4) Azure CLI
5) Docker CLI

_Support for custom CLIs and documentations coming soon_
