chef-jenkins-plugins Cookbook
=============================


Requirements
------------
Plugin list in attributes must be listed with plugin dependencies before the desired plugin is installed.

#### packages
- `jenkins` - chef-jenkins-plugins needs toaster to brown your bagel.

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### chef-jenkins-plugins::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-jenkins-plugins']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### chef-jenkins-plugins::default

Just include `chef-jenkins-plugins` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef-jenkins-plugins]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: kirkl@slalom.com
