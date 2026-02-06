# Tutoriel

## Suivez en direct


## Pour configurer ceci

Vous pourriez avoir besoin d'un fichier `.Renviron` à la racine du projet avec le contenu suivant :

```
QUALTRICS_API_KEY='quelque chose ici'
QUALTRICS_BASE_URL='XXXX.qualtrics.com'
DATAVERSE_TOKEN='autre chose'
DATAVERSE_SERVER='https://demo.dataverse.org'
DATAVERSE_DATASET_DOI='doi:10.70122/xxx/xxxxx'
```

où vous devriez remplacer ceci par les vraies valeurs. Voir la [documentation de l'API Qualtrics](https://www.qualtrics.com/support/integrations/api-integration/overview/) pour plus d'informations. Pour le téléverseur Dataverse, voir <https://github.com/IQSS/dataverse-uploader>.

Vous devriez ensuite configurer les secrets GH Actions avec

```
gh secret set -f .Renviron
```

Si vous devez travailler dans Codespaces, vous devrez également ajouter ceci à vos secrets Codespace :

```
gh secret set -f .Renviron --user $GITHUB_REPOSITORY
```

puis aller à <https://github.com/settings/codespaces> et les activer pour ce dépôt (si ce n'est pas déjà fait).