#!/bin/bash

# Let's use the github machine user CodeQBeachDeploy to load the fonts
git clone --depth 1 https://CodeQBeachDeploy:$VIENNAJS_FONTS_GITHUB_USER_PASSWORD@github.com/rolandschuetz/ViennaJSFonts.git DistributionPackages/ViennaJS.Site/Resources/Public/Frontend/fonts

# Neos init
/application/flow cache:flushone Neos_Fusion_Content
/application/flow resource:publish --collection='static'
