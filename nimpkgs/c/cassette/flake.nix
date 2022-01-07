{
  description = ''
    Record and replay your HTTP sessions!
  '';
  inputs.src-cassette.url = "https://github.com/LemonBoy/cassette";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
