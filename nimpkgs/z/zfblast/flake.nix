{
  description = ''
    High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.
  '';
  inputs.src-zfblast.url = "https://github.com/zendbit/nim.zfblast";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
