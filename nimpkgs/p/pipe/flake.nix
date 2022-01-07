{
  description = ''
    Pipe operator for nim.
  '';
  inputs.src-pipe.url = "https://github.com/CosmicToast/pipe";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
