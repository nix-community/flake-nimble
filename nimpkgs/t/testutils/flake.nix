{
  description = ''
    A comprehensive toolkit for all your testing needs
  '';
  inputs.src-testutils.url = "https://github.com/status-im/nim-testutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
