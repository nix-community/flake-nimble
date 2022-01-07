{
  description = ''
    A fast, multithreaded miner for DuinoCoin
  '';
  inputs.src-ducominer.url = "https://github.com/its5Q/ducominer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
