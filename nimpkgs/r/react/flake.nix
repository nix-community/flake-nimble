{
  description = ''
    React.js bindings for Nim
  '';
  inputs.src-react.url = "https://github.com/andreaferretti/react.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
