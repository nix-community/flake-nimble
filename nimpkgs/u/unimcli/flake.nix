{
  description = ''
    User-friendly nimcli.
  '';
  inputs.src-unimcli.url = "https://github.com/unimorg/unimcli";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
