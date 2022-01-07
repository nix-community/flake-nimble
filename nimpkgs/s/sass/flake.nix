{
  description = ''
    A wrapper for the libsass library.
  '';
  inputs.src-sass.url = "https://github.com/dom96/sass";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
