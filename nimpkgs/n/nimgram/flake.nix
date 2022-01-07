{
  description = ''
    MTProto client written in Nim
  '';
  inputs.src-nimgram.url = "https://github.com/nimgram/nimgram";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
