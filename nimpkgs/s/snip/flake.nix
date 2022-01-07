{
  description = ''
    Text editor to speed up testing code snippets
  '';
  inputs.src-snip.url = "https://github.com/genotrance/snip";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
