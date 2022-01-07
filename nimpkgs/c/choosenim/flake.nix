{
  description = ''
    The Nim toolchain installer.
  '';
  inputs.src-choosenim.url = "https://github.com/dom96/choosenim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
