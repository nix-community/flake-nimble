{
  description = ''
    An implementation of the observer pattern
  '';
  inputs.src-nimobserver.url = "https://github.com/Tangdongle/nimobserver";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
