{
  description = ''A Nim implementation of Ethash, the ethereum proof-of-work hashing function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ethash-master.flake = false;
  inputs.src-ethash-master.type = "github";
  inputs.src-ethash-master.owner = "status-im";
  inputs.src-ethash-master.repo = "nim-ethash";
  inputs.src-ethash-master.ref = "refs/heads/master";
  inputs.src-ethash-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ethash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ethash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ethash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}