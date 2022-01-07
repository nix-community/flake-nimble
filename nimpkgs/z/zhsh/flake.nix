{
  description = ''
    This module is a port of the Java implementation of the Zhang-Shasha algorithm for tree edit distance
  '';
  inputs.src-zhsh.url = "https://github.com/PMunch/zhangshasha";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
