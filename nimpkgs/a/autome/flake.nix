{
  description = ''
    Write GUI automation scripts with Nim
  '';
  inputs.src-autome.url = "https://github.com/miere43/autome";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
