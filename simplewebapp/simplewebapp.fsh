@packagename="de.adorsys.showcase.".concat(projectname);

new-project --named $projectname --projectFolder . --type war --topLevelPackage $packagename  --finalName $projectname;

cp $templatedir.concat("/simplewebapp/src") . ;
cp $templatedir.concat("/gitignore.templ") .gitignore ;

release-setup --git-repo-url $gitRepoURL --git-browser-url $gitBrowserURL --mvn-release-repo-id $release_repo_id --mvn-release-repo $release_repo --mvn-snapshot-repo-id $snapshot_repo_id --mvn-snapshot-repo $snapshot_repo ;
add-mvn-plugin as7;