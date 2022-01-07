{
  description = ''
    Steamworks SDK API for shipping games on Steam.
  '';
  inputs.src-steamworks.url = "https://github.com/treeform/steamworks";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
