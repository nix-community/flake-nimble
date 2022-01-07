{
  description = ''
    An embedded text editor for paranim games
  '';
  inputs.src-paravim.url = "https://github.com/paranim/paravim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
