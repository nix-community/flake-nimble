{
  description = ''
    WinKerberos wrapper for Nim
  '';
  inputs.src-nimkerberos.url = "https://github.com/genotrance/nimkerberos";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
