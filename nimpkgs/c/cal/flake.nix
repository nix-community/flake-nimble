{
  description = ''
    A simple interactive calculator
  '';
  inputs.src-cal.url = "https://github.com/xflywind/cal";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
