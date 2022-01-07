{
  description = ''
    A collection of reusable modules and wrappers.
  '';
  inputs.src-fowltek.url = "https://github.com/fowlmouth/nimlibs/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
