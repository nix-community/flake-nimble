{
  description = ''
    std / sha1 extension
  '';
  inputs.src-sha1ext.url = "https://github.com/CORDEA/sha1ext";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
