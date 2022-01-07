{
  description = ''
    alignment is a library to align strings.
  '';
  inputs.src-alignment.url = "https://github.com/jiro4989/alignment";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
