addNimPath () {
	nimFlags="$nimFlags --path:$1/src"
}

addEnvHooks "$targetOffset" addNimPath
