aws
---

Puppet helpers for AWS. 

Requirements:
* facter >= 1.7.3 (or whenever facter fixed osfamily for Amazon Linux)
* ruby/rubygems (we need the AWS ruby sdk and will get it one way or another)
* IAM role for your instances with read only ec2 permissions (see below)

Why not fog? 
  Fog is a pain on Ruby 1.8.7 which is what we've got on the various RedHat family OS.

IAM Roles
---------

You'll need to a create and use an IAM role for all the instances you want to use 
these helpers with. You can read more about IAM roles here:

http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html

At a minimum you'll need the following policy:

    {
       "Version": "2012-10-17",
       "Statement": [{
          "Effect": "Allow",
          "Action": "ec2:Describe*",
          "Resource": "*"
        }
       ]
    }

License
-------

Apache License 2.0

Contact
-------

Chad Metcalf <metcalfc@gmail.com>

Support
-------

Please log tickets and issues at our [Github site](http://github.com/metcalfc/puppet-aws/issues).
