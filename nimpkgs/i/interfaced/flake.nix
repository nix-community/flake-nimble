{
  description = ''
    Go-like interfaces
  '';
  inputs.src-interfaced.url = "https://github.com/andreaferretti/interfaced";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
