{
  description = ''
    Parse config by defining an object
  '';
  inputs.src-sim.url = "https://github.com/ba0f3/sim.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
