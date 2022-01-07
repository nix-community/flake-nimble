{
  description = ''
    utf-8 string
  '';
  inputs.src-ustring.url = "https://github.com/rokups/nim-ustring";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
