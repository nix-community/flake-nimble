{
  description = ''
    PROXY Protocol enabler for aged programs
  '';
  inputs.src-proxyproto.url = "https://github.com/ba0f3/libproxy.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
