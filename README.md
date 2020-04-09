WARNING: This plugin was created as a tmp workaround for old Foreman versions only (1.15) while waiting for built-in support.
    Before upgrading Foreman to newer versions with built-in v3 support, **all compute resources created with this plugin must be deleted and the plugin removed from Foreman.**

# ForemanOpenstackV3

This plugin adds support of Openstack V3 authentication requiring a scoped domain.

## Installation

> Currently tested only on Centos 7

Please make sure `foreman-openstack` package is installed.

Add the following to `bundler.d/Gemfile.local.rb` in your Foreman installation directory (/usr/share/foreman by default):

    $ gem 'foreman_openstack_v3'

Then run the following commands:

    # scl enable tfm bash
    # gem install foreman_openstack_v3
    # foreman-rake db:migrate

For more information see [How_to_Install_a_Plugin](http://projects.theforeman.org/projects/foreman/wiki/How_to_Install_a_Plugin).

## Usage

This plugin updates the built-in 'OpenStack' compute resource. It simply adds a 'Domain' field in the compute resource creation form.
The URL to connect must contain 'v3/auth/tokens' to work with V3.
The first connection uses the password authentication method with unscoped authorization. Once the projects are detected and one of them is selected, it uses either password or token authentication with scoped authorization.

## TODO

* Add tests

## Contributing

Fork and send a Pull Request. Thanks!

## Copyright

Copyright (c) 2017 - Anthony Chevalet - The Foreman community

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

