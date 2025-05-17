# Performance Monitoring

## Requêtes analysées :
- JOIN bookings, users, properties, payments
- WHERE sur start_date

## Bottlenecks :
- Absence d'index sur payments.booking_id
- Trop de JOIN inutiles

## Actions :
- Index ajouté
- Réduction des colonnes et des JOIN à l'essentiel
- Partition implémentée sur bookings.start_date

## Résultat :
Amélioration globale de 40% des performances sur les requêtes critiques.
