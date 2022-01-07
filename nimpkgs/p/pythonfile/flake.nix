{
  description = ''
    Wrapper of the file procedures to provide an interface as similar as possible to that of Python
  '';
  inputs.src-pythonfile.url = "https://github.com/achesak/nim-pythonfile";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
