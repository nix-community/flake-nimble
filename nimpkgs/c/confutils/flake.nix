{
  description = ''
    Simplified handling of command line options and config files
  '';
  inputs.src-confutils.url = "https://github.com/status-im/nim-confutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
