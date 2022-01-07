{
  description = ''
    Loop efficiently over a variadic number of containers
  '';
  inputs.src-loopfusion.url = "https://github.com/numforge/loopfusion";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
