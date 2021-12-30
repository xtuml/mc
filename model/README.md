### Creating a release

1. Set release version
   ```
   mvn versions:set -DnewVersion=<version> -DgenerateBackupPoms=false
   git add .
   git commit -m "bump version to <version>"
   git tag v<version>
   git push
   git push --tags
   ```
2. Build and deploy release
   ```
   export GPG_TTY=$(tty)
   export MAVEN_OPTS="--add-opens=java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.lang.reflect=ALL-UNNAMED --add-opens=java.base/java.text=ALL-UNNAMED --add-opens=java.desktop/java.awt.font=ALL-UNNAMED"
   mvn deploy -Prelease
   ```
   _Note: the `MAVEN_OPTS` environment variable is needed because of a bug in the sonatype nexus staging plugin_
3. Push to maven central through sonatype
   - Login at https://oss.sonatype.org/
   - Navigate to "Staging Repositories"
   - Select the repository and click "Release"
   - Copy the link to the Redmine release into the description box and confirm
4. Set next development version
   ```
   mvn versions:set -DnewVersion=<version> -DgenerateBackupPoms=false
   git add .
   git commit -m "bump version to <version>"
   git push
   ```
   `<version>` should be the next SNAPSHOT version. As the default, increment
   the third number from the release version and add "-SNAPSHOT".
