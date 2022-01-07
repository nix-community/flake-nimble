{
  description = ''
    Executable for finding information about programs in PATH
  '';
  inputs.src-about.url = "https://github.com/aleandros/about";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
