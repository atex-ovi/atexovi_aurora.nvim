lua << EOF
package.loaded['atexovi_aurora'] = nil
package.loaded['atexovi_aurora.util'] = nil
package.loaded['atexovi_aurora.colors'] = nil
package.loaded['atexovi_aurora.theme'] = nil
package.loaded['atexovi_aurora.functions'] = nil

require('atexovi_aurora').set()
EOF