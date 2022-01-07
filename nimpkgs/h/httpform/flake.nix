{
  description = ''
    Http request form parser
  '';
  inputs.src-httpform.url = "https://github.com/tulayang/httpform";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
