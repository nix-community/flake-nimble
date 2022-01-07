{
  description = ''
    React.js 16.x bindings for Nim
  '';
  inputs.src-react16.url = "https://github.com/kristianmandrup/react-16.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
