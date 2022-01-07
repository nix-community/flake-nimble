{
  description = ''
    wrapper for the sendmail command
  '';
  inputs.src-easymail.url = "https://github.com/coocheenin/easymail";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
