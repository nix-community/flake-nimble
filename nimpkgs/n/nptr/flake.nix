{
  description = ''
    Nim lang smart pointers
  '';
  inputs.src-nptr.url = "https://github.com/henryas/nptr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
