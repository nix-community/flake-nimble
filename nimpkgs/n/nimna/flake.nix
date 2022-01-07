{
  description = ''
    Nucleic acid folding and design.
  '';
  inputs.src-nimna.url = "https://github.com/mjendrusch/nimna";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
