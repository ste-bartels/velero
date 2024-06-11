velero backup create nome-do-backup --include-namespaces nome-do-namespace --ttl 2h
pode ser feito para namespaces especificos ou pro cluster todo (se remover o include namespace)

velero schedule create nome-do-backups --schedule="00 00 * * *" --ttl 72h
pode deixar agendado com o scheduler de sua preferencia

velero restore create --from-backup nome-do-backup
para restaurar o backup.

ttl 'e o tempo de retencao do seu backup.

velero backup-location create [nome] --bucket [nome bucket] --provider aws --config profile=[nome]
quando se vai puxar o backup de outro cluster.