{
  description = ''
    A Nim query builder library inspired by Laravel/PHP and Orator/Python
  '';
  inputs.src-allographer.url = "https://github.com/itsumura-h/nim-allographer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
