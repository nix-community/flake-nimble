{
  description = ''
    A go routine like nim implementation
  '';
  inputs.src-nimroutine.url = "https://github.com/rogercloud/nim-routine";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
