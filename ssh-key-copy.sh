for host in master01.nurlan.kz \ master02.nurlan.kz \ master03.nurlan.kz \
    node01.nurlan.kz \
    node02.nurlan.kz \
    infra01.nurlan.kz \
    infra02.nurlan.kz; \
    do ssh-copy-id -i ~/.ssh/id_rsa.pub $host; \
    done
