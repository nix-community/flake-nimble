{
  description = ''
    A high performance timer based on timerwheel for Nim.
  '';
  inputs.src-timerwheel.url = "https://github.com/xflywind/timerwheel";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
