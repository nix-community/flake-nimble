{
  description = ''
    Common utilities for implementing HTTP servers
  '';
  inputs.src-httputils.url = "https://github.com/status-im/nim-http-utils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
