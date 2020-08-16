Полноценный кластер OpenShift 3.11(OKD) на ноутбуке.

Параметры Хостов

lb - 2.5GB RAM, 2CPU |Ansible|HAProxy LB|OKD Playbooks
master01 - 6GB RAM, 2CPU
master02 - 4GB RAM, 2CPU
master03 - 4GB RAM, 2CPU
node01 - 4GB RAM, 2CPU
node02 - 4GB RAM, 2CPU
infra01 - 3GB RAM, 2CPU
infra02 - 3GB RAM, 2CPU


ansible 2.9.10
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python2.7/site-packages/ansible
  executable location = /usr/bin/ansible
  python version = 2.7.5 (default, Apr  2 2020, 13:16:51) [GCC 4.8.5 20150623 (Red Hat 4.8.5-39)]
  
  
``` ansible-playbook /usr/share/ansible/openshift-ansible/playbooks/prerequisites.yml -i /root/ocp-admin/inventory/hosts```

``` ansible-playbook /usr/share/ansible/openshift-ansible/playbooks/deploy_cluster.yml -i /root/ocp-admin/inventory/hosts -e openshift_disable_check=memory_availability```
