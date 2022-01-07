{
  description = ''
    Yet another iterator library
  '';
  inputs.src-mangle.url = "https://github.com/baabelfish/mangle";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
