{
  description = ''
    URL and URI parsing for C and JS backend.
  '';
  inputs.src-urlly.url = "https://github.com/treeform/urlly";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
