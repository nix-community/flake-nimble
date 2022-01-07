{
  description = ''
    Redux Implementation in nim
  '';
  inputs.src-redux_nim.url = "https://github.com/M4RC3L05/redux-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
