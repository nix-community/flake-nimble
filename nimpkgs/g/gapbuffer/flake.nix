{
  description = ''
    A simple gap buffer implementation
  '';
  inputs.src-gapbuffer.url = "https://notabug.org/vktec/nim-gapbuffer.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
