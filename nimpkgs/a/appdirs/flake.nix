{
  description = ''
    A utility library to find the directory you need to app in.
  '';
  inputs.src-appdirs.url = "https://github.com/MrJohz/appdirs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
