# 🌦️ XML Weather Dashboard & SVG Visualization

Ce projet démontre la puissance de l'écosystème XML pour structurer, valider et transformer des données météorologiques en visualisations interactives.

## 📌 Aperçu du Projet

Le système prend en entrée des mesures de températures par ville et génère automatiquement :

1. Une structure de données validée par **DTD** et **XSD**.
2. Un rapport **HTML** tabulaire.
3. Un **histogramme SVG animé** représentant graphiquement les températures.

## 📂 Structure des fichiers

- `meteo.xml` `meteo1.xml` `meteo2.xml` : Les données sources (dates, noms des villes, températures).
- `meteo.dtd` / `meteo.xsd` : Les règles de validation du document.
- `Meteo.xsl` : Feuille de style pour la transformation en page web.
- `Meteo3.xsl` : Feuille de style générant le graphique animé.

---

## 🏗️ Modélisation des données

L'arbre XML est structuré de manière hiérarchique pour permettre une extraction facile des données par date :

Chaque élément `<mesure>` regroupe un ensemble de `<ville>`, permettant de comparer les températures à une date précise.

---

## 📊 Visualisation SVG Animée

La feuille de style XSLT transforme les données numériques en coordonnées graphiques.

**Fonctionnalités du graphique :**

- **Dynamique :** Les hauteurs des barres sont calculées proportionnellement à la température ($h = temp \times 8$).
- **Animé :** Utilisation de balises `<animate>` pour un effet de montée des barres au chargement du fichier.
- **Responsive :** Les noms des villes et les valeurs sont positionnés automatiquement via XPath.

---
