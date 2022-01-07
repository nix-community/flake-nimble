{
  description = ''
    for loop macros
  '';
  inputs.src-looper.url = "https://github.com/planetis-m/looper";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
