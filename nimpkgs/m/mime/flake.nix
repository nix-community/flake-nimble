{
  description = ''
    Library for attaching files to emails.
  '';
  inputs.src-mime.url = "https://github.com/enthus1ast/nimMime";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
