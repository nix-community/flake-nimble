{
  description = ''
    Nim bindings for libass.
  '';
  inputs.src-ass.url = "https://github.com/0kalekale/libass-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
