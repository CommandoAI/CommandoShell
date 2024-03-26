**Run this in your Bash shell**

```git clone https://github.com/CommandoAI/CommandoShell; cd CommandoShell; chmod +x init.sh; ./init.sh; exec "$SHELL"```

**Start using like so:**

```**commando** create a new S3 bucket named 'example-bucket' in the US West (Oregon) region with versioning enabled
> aws s3api create-bucket --bucket example-bucket --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2 --versioning-configuration Status=Enabled
```
