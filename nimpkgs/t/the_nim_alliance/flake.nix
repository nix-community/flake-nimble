{
  description = ''
    A Nim wrapper for TheBlueAlliance
  '';
  inputs.src-the_nim_alliance.url = "https://github.com/tervay/the-nim-alliance";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
