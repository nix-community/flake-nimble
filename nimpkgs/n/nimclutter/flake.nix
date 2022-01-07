{
  description = ''
    Nim bindings for Clutter toolkit.
  '';
  inputs.src-nimclutter.url = "https://github.com/KeepCoolWithCoolidge/nimclutter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
