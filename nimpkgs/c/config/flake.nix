{
  description = ''
    A library for working with the CFG configuration format
  '';
  inputs.src-config.url = "https://github.com/vsajip/nim-cfg-lib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
