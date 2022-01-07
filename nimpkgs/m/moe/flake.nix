{
  description = ''
    A command lined based text editor inspired by vi/vim
  '';
  inputs.src-moe.url = "https://github.com/fox0430/moe";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
