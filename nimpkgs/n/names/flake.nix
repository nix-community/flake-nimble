{
  description = ''
    String interning library
  '';
  inputs.src-names.url = "https://github.com/pragmagic/names";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
