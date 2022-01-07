{
  description = ''
    Wrapper to interface with Python interpreter
  '';
  inputs.src-python.url = "https://github.com/nim-lang/python";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
