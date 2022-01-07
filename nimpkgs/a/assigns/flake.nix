{
  description = ''
    syntax sugar for assignments
  '';
  inputs.src-assigns.url = "https://github.com/hlaaftana/assigns";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
