{
  description = ''
    a down to earth webframework in nim
  '';
  inputs.src-servy.url = "https://github.com/xmonader/nim-servy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
