{
  description = ''Base58 encoders and decoders for Bitcoin and CryptoNote addresses.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-base58-master.flake = false;
  inputs.src-base58-master.type = "other";
  inputs.src-base58-master.owner = "~ehmry";
  inputs.src-base58-master.repo = "nim_base58";
  inputs.src-base58-master.ref = "refs/heads/master";
  inputs.src-base58-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-base58-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base58-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-base58-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}