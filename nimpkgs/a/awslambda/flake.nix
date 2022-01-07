{
  description = ''
    A package to compile nim functions for AWS Lambda
  '';
  inputs.src-awslambda.url = "https://github.com/lambci/awslambda.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
