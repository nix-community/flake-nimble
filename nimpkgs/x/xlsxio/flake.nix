{
  description = ''
    This is a xlsxio wrapper done Nim in mind.
  '';
  inputs.src-xlsxio.url = "https://github.com/jiiihpeeh/xlsxio-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
