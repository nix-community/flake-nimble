{
  description = ''A fast, multithreaded miner for DuinoCoin'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ducominer-1_0_0.flake = false;
  inputs.src-ducominer-1_0_0.type = "github";
  inputs.src-ducominer-1_0_0.owner = "its5Q";
  inputs.src-ducominer-1_0_0.repo = "ducominer";
  inputs.src-ducominer-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-ducominer-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."hashlib".type = "github";
  inputs."hashlib".owner = "riinr";
  inputs."hashlib".repo = "flake-nimble";
  inputs."hashlib".ref = "flake-pinning";
  inputs."hashlib".dir = "nimpkgs/h/hashlib";
  inputs."hashlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ducominer-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ducominer-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ducominer-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}