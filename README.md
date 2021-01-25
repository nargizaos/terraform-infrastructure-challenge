## Three Tier Application using Terraform on AWS 


![aws](https://user-images.githubusercontent.com/66437109/105755000-554a9a00-5f10-11eb-9f89-d3a90d659889.png)





This code will let you install a simple three-tier application using Terraform (web app, mysql db, elb and ASG)

Pre-requisites: 
- From your AWS account create instance, create a role and attach it to the instance (attach your public key)
- `yum install wget && unzip`
- `wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip`
- `unzip terraform_0.11.13_linux_amd64.zip`
- `mv terraform /bin`


Clone the repo and run the following commands from your terminal:\
`$ terraform init`\
`$ terraform plan`\
`$ terraform apply`


This code will: 
Create VPC:
![WhatsApp Image 2021-01-25 at 11 46 13 AM (2)](https://user-images.githubusercontent.com/66437109/105747702-be2d1480-5f06-11eb-90ef-cafe4a9ed8f9.jpeg)
 
 
 
 IG and NAT Gateway: 
 
![WhatsApp Image 2021-01-25 at 11 46 14 AM (1)](https://user-images.githubusercontent.com/66437109/105747819-e3218780-5f06-11eb-9766-1fb85ceec8f9.jpeg)

![WhatsApp Image 2021-01-25 at 11 46 12 AM (3)](https://user-images.githubusercontent.com/66437109/105747881-f7fe1b00-5f06-11eb-99be-72ee7f49a6f1.jpeg)

AWS instance: 

![WhatsApp Image 2021-01-25 at 11 46 12 AM (1)](https://user-images.githubusercontent.com/66437109/105747990-1d8b2480-5f07-11eb-9d71-4c8ba4b8824d.jpeg)



Subnets and Route tables: 

![WhatsApp Image 2021-01-25 at 11 46 12 AM (2)](https://user-images.githubusercontent.com/66437109/105748046-31cf2180-5f07-11eb-9b18-893fcda2aa11.jpeg)
 
 ![WhatsApp Image 2021-01-25 at 11 46 14 AM](https://user-images.githubusercontent.com/66437109/105748103-44e1f180-5f07-11eb-8332-bebec291c689.jpeg)


Auto-Scaling Group: 
 
![WhatsApp Image 2021-01-25 at 11 46 13 AM (1)](https://user-images.githubusercontent.com/66437109/105748150-55926780-5f07-11eb-9201-5ccae87c5f8c.jpeg)


Elastic Load Balancer:

![WhatsApp Image 2021-01-25 at 11 46 13 AM](https://user-images.githubusercontent.com/66437109/105748188-66db7400-5f07-11eb-99fb-890e511c3206.jpeg) 



MySQL RDS:

![WhatsApp Image 2021-01-25 at 11 48 35 AM (1)](https://user-images.githubusercontent.com/66437109/105748242-78bd1700-5f07-11eb-98fc-64c952ede8d5.jpeg)

![WhatsApp Image 2021-01-25 at 11 48 35 AM](https://user-images.githubusercontent.com/66437109/105748261-807cbb80-5f07-11eb-967e-863142238b5a.jpeg)



