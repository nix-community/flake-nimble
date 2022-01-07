{
  description = ''
    Predictable state container.
  '';
  inputs.src-redux.url = "https://github.com/pragmagic/redux.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
