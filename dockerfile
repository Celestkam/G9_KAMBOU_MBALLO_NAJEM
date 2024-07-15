# Utiliser une image de base officielle Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier de configuration de l'application
COPY requirements.txt requirements.txt

# Installer les dépendances
RUN pip install -r requirements.txt

# Copier le contenu de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application fonctionne
EXPOSE 8501

# Définir la commande par défaut pour exécuter l'application
CMD ["streamlit", "run", "home.py"]