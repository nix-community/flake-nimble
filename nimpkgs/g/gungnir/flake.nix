{
  description = ''
    Cryptographic signing for Nim.
  '';
  inputs.src-gungnir.url = "https://github.com/planety/gungnir";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
