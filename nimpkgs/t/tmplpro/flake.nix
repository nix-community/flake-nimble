{
  description = ''
    Text template processor, basic capabilities
  '';
  inputs.src-tmplpro.url = "https://github.com/mjfh/nim-tmplpro.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
