{
  description = ''
    Simple API wrapper for Mailcow
  '';
  inputs.src-mailcow.url = "https://github.com/Vaipex/Mailcow-API";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
