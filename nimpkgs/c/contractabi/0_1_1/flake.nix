{
  description = ''ABI Encoding for Ethereum contracts'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-contractabi-0_1_1.flake = false;
  inputs.src-contractabi-0_1_1.type = "github";
  inputs.src-contractabi-0_1_1.owner = "status-im";
  inputs.src-contractabi-0_1_1.repo = "nim-contract-abi";
  inputs.src-contractabi-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-contractabi-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."upraises".type = "github";
  inputs."upraises".owner = "riinr";
  inputs."upraises".repo = "flake-nimble";
  inputs."upraises".ref = "flake-pinning";
  inputs."upraises".dir = "nimpkgs/u/upraises";
  inputs."upraises".inputs.nixpkgs.follows = "nixpkgs";
  inputs."upraises".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-contractabi-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-contractabi-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-contractabi-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}