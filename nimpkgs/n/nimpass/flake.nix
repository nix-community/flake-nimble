{
  description = ''
    quickly generate cryptographically secure passwords and phrases
  '';
  inputs.src-nimpass.url = "https://github.com/xioren/NimPass";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
