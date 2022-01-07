{
  description = ''
    Netty is a reliable UDP connection for games.
  '';
  inputs.src-netty.url = "https://github.com/treeform/netty/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
