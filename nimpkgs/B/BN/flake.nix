{
  description = ''
    A Nim Wrapper of the imath BigNumber library.
  '';
  inputs.src-BN.url = "https://github.com/MerosCrypto/BN";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
