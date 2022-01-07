{
  description = ''
    Statistic-driven microbenchmark framework
  '';
  inputs.src-criterion.url = "https://github.com/disruptek/criterion";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
