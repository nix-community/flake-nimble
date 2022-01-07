{
  description = ''
    Easy to use styles for terminal output
  '';
  inputs.src-termstyle.url = "https://github.com/PMunch/termstyle";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
