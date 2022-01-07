{
  description = ''
    Kombinator is a tool to generate commands line from parameters combination from a config file.
  '';
  inputs.src-kombinator.url = "https://gitlab.com/ArMour85/kombinator.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
