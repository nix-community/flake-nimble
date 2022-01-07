{
  description = ''
    Crosscompile Nim source code into multiple targets on Linux with this proc.
  '';
  inputs.src-crosscompile.url = "https://github.com/juancarlospaco/nim-crosscompile";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
