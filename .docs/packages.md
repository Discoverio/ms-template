# Utiliser les packages

Lors de chaque push sur la branche release (ou de chaque enclenchement manuel), un package est généré.
Il contient l'image docker de l'application builded.

## Télécharger le package

### Credentiels

Créez un token github dans votre profil/settings/tokens avec les droits suivants :

- repo
- packages:read
- packages:write

Ajoutez les crédentiels à votre machine :

```bash
docker login ghcr.io -u <nom utilisateur> -p <token>
```

### Pull

```bash
docker pull ghcr.io/discoverio/< nom repo >:< tag >
```
