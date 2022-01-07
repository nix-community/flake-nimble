{
  description = ''
    Wrapper to interface with the Python 3 interpreter
  '';
  inputs.src-python3.url = "https://github.com/matkuki/python3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
