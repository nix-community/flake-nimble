{
  description = ''
    A compile-time, compact, fast, without allocation, state-machine generator.
  '';
  inputs.src-synthesis.url = "https://github.com/mratsim/Synthesis";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
