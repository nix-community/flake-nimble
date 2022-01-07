{
  description = ''
    JSON Web Tokens for Nim
  '';
  inputs.src-jwt.url = "https://github.com/yglukhov/nim-jwt.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
