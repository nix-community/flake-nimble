{
  description = ''
    Micro benchmarking tool to measure speed of code, with the goal of optimizing it.
  '';
  inputs.src-nimbench.url = "https://github.com/ivankoster/nimbench.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
