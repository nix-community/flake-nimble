{
  description = ''
    A mod manager for TF2
  '';
  inputs.src-tf2plug.url = "https://gitlab.com/waylon531/tf2plug";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
