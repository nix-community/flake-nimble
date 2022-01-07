{
  description = ''
    gsl C Api wrapped for nim
  '';
  inputs.src-gsl.url = "https://github.com/YesDrX/gsl-nim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
