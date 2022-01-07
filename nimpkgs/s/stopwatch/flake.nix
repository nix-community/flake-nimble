{
  description = ''
    A simple timing library for benchmarking code and other things.
  '';
  inputs.src-stopwatch.url = "https://gitlab.com/define-private-public/stopwatch";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
