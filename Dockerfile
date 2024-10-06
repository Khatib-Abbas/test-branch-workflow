# Utilise une image de base Caddy officielle
FROM caddy:2.8.4

# Copie le fichier de configuration Caddy (Caddyfile) dans le conteneur
COPY Caddyfile /etc/caddy/Caddyfile

# Définissez le répertoire de travail
WORKDIR /srv

# Exposez le port par défaut utilisé par Caddy (80 pour HTTP, 443 pour HTTPS)
EXPOSE 80
EXPOSE 443

# Commande par défaut pour démarrer Caddy
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
