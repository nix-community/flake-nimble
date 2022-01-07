{
  description = ''
    github api
  '';
  inputs.src-github.url = "https://github.com/disruptek/github";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
