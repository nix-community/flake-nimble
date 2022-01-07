{
  description = ''
    Linear time regex matching
  '';
  inputs.src-regex.url = "https://github.com/nitely/nim-regex";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
