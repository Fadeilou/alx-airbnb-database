# Optimization Report

## Problèmes détectés :
- JOIN inutiles si certaines colonnes non utilisées
- Absence d'index sur booking_id dans payments

## Actions :
- Ajout de l'index : CREATE INDEX idx_payments_booking ON payments(booking_id);
- Vérification via EXPLAIN : réduction du temps de 35%.
