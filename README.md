# terragrunt-demo-infrastructure

## Ausführen des Beispiels

Eine Umgebungsvariable setzen:

```bash
# Unix
export TF_VAR_hcloud_token="YourCloudToken"
```

Näheres zum Hetzner Cloud Token finden wir hier: [Terragrunt Demo Modules](https://github.com/19bytes/terragrunt-demo/tree/develop#notepad-before-2023-03-01)

Ist der Cloud Token als Umgebungsvariable vorhanden können wir das Beispiel ausführen:

```bash
terragrunt run-all plan
# Output kontrollieren
terragrunt run-all apply 
# Mit (y) gestätigen
```
