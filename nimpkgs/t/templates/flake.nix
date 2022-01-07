{
  description = ''
    A simple string templating library for Nim.
  '';
  inputs.src-templates.url = "https://github.com/onionhammer/nim-templates.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
