# PhoneLockerApp

Application Android qui joue une alarme lorsque le téléphone est déverrouillé pendant des plages horaires configurables.  
Conçue pour renforcer la discipline numérique nocturne.

---

## Contexte

Projet personnel développé en Kotlin natif Android.  
L'idée : rendre le déverrouillage du téléphone la nuit suffisamment dissuasif pour couper l'habitude de consulter l'écran.

---

## Fonctionnalités

- **Plages horaires configurables** — définir les heures d'activation (ex : 22h → 7h)
- **Alarme au déverrouillage** — son déclenché dès que l'écran est déverrouillé pendant la plage active
- **Whitelist d'applications** — certaines apps peuvent être ouvertes sans déclencher l'alarme (ex : téléphone, horloge)
- **Protection du volume** — empêche de couper le son pour contourner l'alarme
- **Persistance en arrière-plan** — fonctionne même quand l'app est fermée via un Foreground Service

---

## Stack technique

| Couche | Technologie |
|---|---|
| Langage | Kotlin |
| Plateforme | Android natif |
| Détection déverrouillage | BroadcastReceiver (ACTION_USER_PRESENT) |
| Persistance arrière-plan | Foreground Service |
| Suivi des apps actives | UsageStatsManager |
| Protection volume | ContentObserver |
| Compatibilité Samsung | Gestion des packages constructeur spécifiques |

---

## Illustrations

### Écran de configuration
![Config](assets/screenshots/config.png)

### Whitelist d'applications
![Whitelist](assets/screenshots/whitelist.png)

### Notification Foreground Service
![Service](assets/screenshots/service.png)