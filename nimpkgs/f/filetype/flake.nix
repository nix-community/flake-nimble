{
  description = ''
    Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.
  '';
  inputs.src-filetype.url = "https://github.com/jiro4989/filetype";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
