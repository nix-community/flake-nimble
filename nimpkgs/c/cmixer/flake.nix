{
  description = ''
    Lightweight audio mixer for games
  '';
  inputs.src-cmixer.url = "https://github.com/rxi/cmixer-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
