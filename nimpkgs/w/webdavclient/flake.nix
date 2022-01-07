{
  description = ''
    WebDAV Client for Nim
  '';
  inputs.src-webdavclient.url = "https://github.com/beshrkayali/webdavclient";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
