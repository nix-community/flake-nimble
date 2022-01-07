{
  description = ''
    Time ago in words in Nim
  '';
  inputs.src-ago.url = "https://github.com/daehee/ago";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
