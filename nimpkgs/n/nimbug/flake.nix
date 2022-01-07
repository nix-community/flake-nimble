{
  description = ''
    Nim Semi-Auto Bug Report Tool
  '';
  inputs.src-nimbug.url = "https://github.com/juancarlospaco/nimbug";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
