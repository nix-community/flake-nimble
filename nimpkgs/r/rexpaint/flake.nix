{
  description = ''
    REXPaint .xp parser
  '';
  inputs.src-rexpaint.url = "https://github.com/irskep/rexpaint_nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
