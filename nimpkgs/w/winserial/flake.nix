{
  description = ''
    Serial library for Windows.
  '';
  inputs.src-winserial.url = "https://github.com/bunkford/winserial";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
