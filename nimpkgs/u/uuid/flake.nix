{
  description = ''
    UUID wrapper
  '';
  inputs.src-uuid.url = "https://github.com/idlewan/nim-uuid";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
