# aws-ec2-migration-terraform

In this article we will migrate an existing EC2 instance created through the AWS management console to Terraform. **Why the migration?** 
Migrating AWS resources to Terraform brings consistency, automation, and scalability by defining infrastructure as code. It ensures reproducibility, simplifies disaster recovery, and allows change tracking, making it easier to collaborate and manage resources efficiently.

So to begin, we will first write a ``` main.tf ``` file and within the ``` main.tf ``` file we will have the provider configuration and the import block as you can see below. 

```
provider "aws" {
  region = "us-east-1"
}

import {
  id = "i-057618886b256746a"

  to = aws_instance.example
}
```

In the import block, I have provided the instance ID of the existing instance. Terraform will look up the instance with that particular ID and retrieve the entire resource configuration to **aws_instance.example**.

![alt text](image.png)