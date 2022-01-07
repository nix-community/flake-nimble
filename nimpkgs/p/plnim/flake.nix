{
  description = ''
    Language Handler for executing Nim inside postgres as a procedural language
  '';
  inputs.src-plnim.url = "https://github.com/luisacosta828/plnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
