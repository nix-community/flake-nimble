{
  description = ''
    RSS library
  '';
  inputs.src-rss.url = "https://github.com/achesak/nim-rss";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
