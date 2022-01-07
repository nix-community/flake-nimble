{
  description = ''
    Rapid serial text presenter
  '';
  inputs.src-hottext.url = "https://git.sr.ht/~ehmry/hottext";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
