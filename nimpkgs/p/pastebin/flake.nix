{
  description = ''
    Pastebin API wrapper
  '';
  inputs.src-pastebin.url = "https://github.com/achesak/nim-pastebin";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
