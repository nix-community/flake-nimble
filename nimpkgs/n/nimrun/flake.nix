{
  description = ''
    Shebang frontend for running nim code as scripts. Does not require .nim extensions.
  '';
  inputs.src-nimrun.url = "https://github.com/lee-b/nimrun";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
