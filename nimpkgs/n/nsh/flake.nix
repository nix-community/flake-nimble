{
  description = ''
    nsh: Nim SHell(cross platform)
  '';
  inputs.src-nsh.url = "https://github.com/gmshiba/nish";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
