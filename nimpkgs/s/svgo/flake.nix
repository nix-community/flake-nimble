{
  description = ''
    SVG output from a shell.
  '';
  inputs.src-svgo.url = "https://github.com/jiro4989/svgo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
