{
  description = ''
    Connection Test for Nim Web Applications
  '';
  inputs.src-netTest.url = "https://github.com/blmvxer/netTest";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
