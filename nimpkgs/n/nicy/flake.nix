{
  description = ''
    A nice and icy ZSH prompt in Nim
  '';
  inputs.src-nicy.url = "https://github.com/icyphox/nicy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
