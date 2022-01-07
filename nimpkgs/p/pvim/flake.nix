{
  description = ''
    A vim-based editor
  '';
  inputs.src-pvim.url = "https://github.com/paranim/pvim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
