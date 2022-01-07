{
  description = ''
    Wrapper for the TCL programming language
  '';
  inputs.src-tcl.url = "https://github.com/nim-lang/tcl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
