{
  description = ''
    Small library for working with strings
  '';
  inputs.src-prettystr.url = "https://github.com/prettybauble/prettystr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
