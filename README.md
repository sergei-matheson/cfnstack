# Deployment

## Infrastructure
Infrastructure is described in Cloudformation templates, which are used to create Infrastructure stacks.

### cfndsl
Some, at least, of the templates are written in [cfndsl](https://github.com/stevenjack/cfndsl).

If you wish to translate a Cloudformation JSON template into cfndsl, you can use [cfn2dsl](https://github.com/realestate-com-au/cfn2dsl) (note the '2'). Both of these ruby gems are included in the [Gemfile](./Gemfile).

### Creating a VPC
To create, for instance, a vpc with a template store in vpc.rb, you can use the 'bin/cfnstack' comand:

    bundle exec ./bin/cfnstack create --stack-name 'my-vpc' ./infrastructure/vpc.rb

For other commands:

    bundle exec ./bin/cfnstack --help
