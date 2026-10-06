#!/bin/bash
# Run inside this folder. Pushes week by week (one commit per week).
set -e
git init -b main 2>/dev/null || true
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/aishwarya-07-ukey/Hack-O-Week-5th-Sem.git

git add README.md requirements.txt .gitignore && git commit -m "Add README and requirements" || true
for d in Week_07_08_Regression_Classification Week_09_10_Evaluation_FeatureEngineering Week_11_12_Dimensionality_Reduction Week_13_14_Ensembles_BiasVariance_Regularization; do
  git add "$d" && git commit -m "Add $d" || true
  git push -u origin main      # asks for GitHub username + Personal Access Token the first time
done
