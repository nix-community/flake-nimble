{
  description = ''
    Glob pattern matching for Nim.
  '';
  inputs.src-globby.url = "https://github.com/treeform/globby";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
