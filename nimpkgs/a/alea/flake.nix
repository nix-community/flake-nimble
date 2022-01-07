{
  description = ''
    Define and compose random variables
  '';
  inputs.src-alea.url = "https://github.com/andreaferretti/alea";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
