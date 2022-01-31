JAR="/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"
GRADLE_HOME=/usr/bin/gradle /usr/lib/jvm/java-16-openjdk/bin/java \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dlog.protocol=true \
  -Dlog.level=ALL \
  -javaagent:/usr/lib/lombok-common/lombok.jar \
  -Xms1g \
  -Xmx2G \
  -jar $(echo "$JAR") \
  -configuration "/usr/share/java/jdtls/config_linux" \
  -data "${1:-$HOME/OneDrive/CodeWorkspace/Java}" \
  --add-modules=ALL-SYSTEM \
  --add-opens java.base/java.util=ALL-UNNAMED \
  --add-opens java.base/java.lang=ALL-UNNAMED
