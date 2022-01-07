{
  description = ''
    Library for shell scripting in nim
  '';
  inputs.src-nimshell.url = "https://github.com/vegansk/nimshell";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
