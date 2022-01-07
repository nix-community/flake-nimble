{
  description = ''
    Nim Hessian Serialization Library encodes/decodes data into the Hessian binary protocol
  '';
  inputs.src-nhsl.url = "https://github.com/twist-vector/nhsl.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
