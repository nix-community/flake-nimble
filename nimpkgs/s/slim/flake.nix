{
  description = ''
    nim package manager
  '';
  inputs.src-slim.url = "https://github.com/bung87/slim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
