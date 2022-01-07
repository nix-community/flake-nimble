{
  description = ''
    micro and elegant web framework
  '';
  inputs.src-scorper.url = "https://github.com/bung87/scorper";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
