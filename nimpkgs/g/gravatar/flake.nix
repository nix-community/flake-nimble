{
  description = ''
    Gravatar API wrapper
  '';
  inputs.src-gravatar.url = "https://github.com/achesak/nim-gravatar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
