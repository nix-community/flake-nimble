{
  description = ''
    A command line interface for shortening URLs with ZWS instances
  '';
  inputs.src-zws.url = "https://github.com/zws-im/cli";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
