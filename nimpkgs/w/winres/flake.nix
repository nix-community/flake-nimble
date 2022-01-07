{
  description = ''
    Windows resource file generator
  '';
  inputs.src-winres.url = "https://github.com/codehz/nim-winres";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
