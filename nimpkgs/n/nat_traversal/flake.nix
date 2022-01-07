{
  description = ''
    miniupnpc and libnatpmp wrapper
  '';
  inputs.src-nat_traversal.url = "https://github.com/status-im/nim-nat-traversal";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
