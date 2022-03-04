{
  description = ''A wrapper for the keccak-tiny C library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-keccak_tiny-master.flake = false;
  inputs.src-keccak_tiny-master.type = "github";
  inputs.src-keccak_tiny-master.owner = "status-im";
  inputs.src-keccak_tiny-master.repo = "nim-keccak-tiny";
  inputs.src-keccak_tiny-master.ref = "refs/heads/master";
  inputs.src-keccak_tiny-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."ranges".type = "github";
  inputs."ranges".owner = "riinr";
  inputs."ranges".repo = "flake-nimble";
  inputs."ranges".ref = "flake-pinning";
  inputs."ranges".dir = "nimpkgs/r/ranges";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-keccak_tiny-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keccak_tiny-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-keccak_tiny-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}