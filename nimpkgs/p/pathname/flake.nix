{
  description = ''
    Library to support work with pathnames in Windows and Posix-based systems. Inspired by Rubies pathname.
  '';
  inputs.src-pathname.url = "https://github.com/RaimundHuebel/nimpathname";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
