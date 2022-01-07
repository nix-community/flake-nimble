{
  description = ''
    zfcore is high performance asynchttpserver and web framework for nim lang
  '';
  inputs.src-zfcore.url = "https://github.com/zendbit/nim.zfcore";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
