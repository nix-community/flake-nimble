{
  description = ''
    Library for interacting with Amazon Web Services (AWS)
  '';
  inputs.src-aws_sdk.url = "https://github.com/aidansteele/aws_sdk.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
