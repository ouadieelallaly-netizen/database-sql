# Chapitre 2 – Élaborer un MCD / MLD

## 🎯 Objectif pédagogique
Être capable de construire un **Modèle Conceptuel de Données (MCD)** et de le traduire en **Modèle Logique de Données (MLD)** prêt à être implémenté en SQL.

---

## 📚 Concepts abordés
- Définitions du **MCD** et du **MLD**
- Notion d’**entité**, d’**association** et d’**attribut**
- **Cardinalités** (0,1,N) et contraintes d’intégrité
- Passage du **MCD au MLD**
- **Notations Merise**

---

## 🧠 Explication théorique
Le **MCD** représente les entités, leurs attributs et les relations sous forme de schéma conceptuel.  
Le **MLD** est une version simplifiée et directement exploitable par une base de données relationnelle.

### Exemple : Blog

#### 📌 MCD
**Entités :**
- Utilisateur
- Article
- Commentaire

**Relations :**
- Utilisateur — *rédige* — Article **(1,N)**
- Article — *reçoit* — Commentaire **(1,N)**

#### 📌 MLD (tables SQL conceptuelles)
- **UTILISATEUR** (`id_user`, nom, email, mot_de_passe)
- **ARTICLE** (`id_article`, titre, contenu, date_pub, `id_user`)
- **COMMENTAIRE** (`id_commentaire`, contenu, auteur, date, `id_article`)

---

## 🛠 Tutoriel pratique

### Résumé du travail
Dessiner un **MCD** pour un blog et le transformer en **MLD**.

### Étape 1 : Reprendre les entités identifiées
- **Utilisateur** (`id_user`, nom, email, mot_de_passe)
- **Article** (`id_article`, titre, contenu, date_pub, `id_user`)
- **Commentaire** (`id_commentaire`, contenu, auteur, date, `id_article`)

### Étape 2 : Dessiner le MCD
- Représenter chaque entité dans un rectangle
- Relier les entités avec les relations :
  - Utilisateur → Article **(1,N)**
  - Article → Commentaire **(1,N)**

**Outils recommandés :**
- Draw.io
- Looping

### Étape 3 : Transformer en MLD
- Pour chaque relation **1-N**, ajouter une **clé étrangère** dans la table **N**
  - `id_user` dans **ARTICLE**
  - `id_article` dans **COMMENTAIRE**

### Étape 4 : Vérifier la cohérence
- Toutes les relations et attributs doivent être présents
- Chaque table doit avoir une **clé primaire (PRIMARY KEY)**

---

## 🧾 Résumé et points-clés
- Le **MCD** est la carte conceptuelle de la base de données
- Le **MLD** traduit ce schéma en tables et colonnes
- Les **clés primaires** et **clés étrangères** définissent la structure relationnelle .
