{
  description = ''
    xcb bindings
  '';
  inputs.src-xcb.url = "https://github.com/SolitudeSF/xcb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
