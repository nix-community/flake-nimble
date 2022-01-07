{
  description = ''
    JSON Web Tokens for Nim
  '';
  inputs.src-quickjwt.url = "https://github.com/treeform/quickjwt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
