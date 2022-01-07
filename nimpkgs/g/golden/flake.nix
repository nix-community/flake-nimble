{
  description = ''
    a benchmark tool
  '';
  inputs.src-golden.url = "https://github.com/disruptek/golden";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
