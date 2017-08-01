puppetdb
========

Role installs and configures puppetdb.

Installs latest puppetdb 2.x from the Puppetlabs repository.

Defaults
--------

```yaml
puppetdb_host: localhost
puppetdb_port: 8080
puppetdb_ssl_port: 8081
puppetdb_ssl_host: 0.0.0.0
puppetdb_ssl_key: /etc/puppetdb/ssl/private.pem
puppetdb_ssl_cert: /etc/puppetdb/ssl/public.pem
puppetdb_ssl_ca_cert: /etc/puppetdb/ssl/ca.pem
puppetdb_drop_nonlocal: true
puppetdb_backend: hsqldb
```

To use postgresql as backend

```yaml
puppetdb_pg_host: localhost
puppetdb_pg_db: puppetdb
puppetdb_pg_ssl: false
puppetdb_pg_user: puppetdb
puppetdb_pg_password: puppetdb
```

Dependencies
------------

- alxrem.puppetlabs-release

Example Playbooks
-----------------

If you want to configure puppet to use puppetdb installed on the same host,
include puppetdb role after puppetmaster role.

```yaml
---
- hosts: puppet.example.org
  gather_facts: true
  vars:
    puppetmaster_server_name: puppet.example.org
    puppetmaster_use_puppetdb: true
  roles:
  - alxrem.puppetmaster
  - alxrem.puppetdb
```

License
-------

GPL-3+
