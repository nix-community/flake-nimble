{
  description = ''
    Cross-platform GUI framework
  '';
  inputs.src-nimx.url = "https://github.com/yglukhov/nimx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
