{
  description = ''
    Nim Julia bridge
  '';
  inputs.src-nimjl.url = "https://github.com/Clonkk/nimjl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
