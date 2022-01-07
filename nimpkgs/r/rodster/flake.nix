{
  description = ''
    rodster
  '';
  inputs.src-rodster.url = "https://github.com/j-a-s-d/rodster";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
