{
  description = ''
    html dsl
  '';
  inputs.src-niml.url = "https://github.com/jakubDoka/niml";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
