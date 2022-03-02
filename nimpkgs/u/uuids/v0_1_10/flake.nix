{
  description = ''UUID library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-uuids-v0_1_10.flake = false;
  inputs.src-uuids-v0_1_10.type = "github";
  inputs.src-uuids-v0_1_10.owner = "pragmagic";
  inputs.src-uuids-v0_1_10.repo = "uuids";
  inputs.src-uuids-v0_1_10.ref = "refs/tags/v0.1.10";
  inputs.src-uuids-v0_1_10.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."isaac".type = "github";
  # inputs."isaac".owner = "riinr";
  # inputs."isaac".repo = "flake-nimble";
  # inputs."isaac".ref = "flake-pinning";
  # inputs."isaac".dir = "nimpkgs/i/isaac";
  # inputs."isaac".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."isaac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-uuids-v0_1_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuids-v0_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uuids-v0_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}