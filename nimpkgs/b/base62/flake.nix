{
  description = ''
    Arbitrary base encoding-decoding functions, defaulting to Base-62.
  '';
  inputs.src-base62.url = "https://github.com/singularperturbation/base62-encode";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
