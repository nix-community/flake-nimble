{
  description = ''
    A random variable generating library for nim.
  '';
  inputs.src-randgen.url = "https://github.com/YesDrX/randgen";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
