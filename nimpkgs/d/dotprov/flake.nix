{
  description = ''
    dotfiles provisioning tool
  '';
  inputs.src-dotprov.url = "https://github.com/minefuto/dotprov";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
