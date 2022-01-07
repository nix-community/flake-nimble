{
  description = ''
    Simple Role-based Access Control Library
  '';
  inputs.src-rbac.url = "https://github.com/ba0f3/rbac.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
