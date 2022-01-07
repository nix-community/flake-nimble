{
  description = ''
    Human friendly DateTime string representations, seconds to millenniums.
  '';
  inputs.src-datetime2human.url = "https://github.com/juancarlospaco/nim-datetime2human";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
