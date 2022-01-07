{
  description = ''
    Nim - Java bridge
  '';
  inputs.src-jnim.url = "https://github.com/yglukhov/jnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
