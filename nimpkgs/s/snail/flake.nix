{
  description = ''
    Simple linear algebra for nim. Js too.
  '';
  inputs.src-snail.url = "https://github.com/stisa/snail";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
