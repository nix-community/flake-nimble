{
  description = ''
    Nim - Python bridge
  '';
  inputs.src-nimpy.url = "https://github.com/yglukhov/nimpy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
