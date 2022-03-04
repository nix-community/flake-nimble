{
  description = ''Password generation library in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-passgen-0_1_0.flake = false;
  inputs.src-passgen-0_1_0.type = "github";
  inputs.src-passgen-0_1_0.owner = "rustomax";
  inputs.src-passgen-0_1_0.repo = "nim-passgen";
  inputs.src-passgen-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-passgen-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."urand".type = "github";
  inputs."urand".owner = "riinr";
  inputs."urand".repo = "flake-nimble";
  inputs."urand".ref = "flake-pinning";
  inputs."urand".dir = "nimpkgs/u/urand";
  inputs."urand".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urand".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-passgen-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-passgen-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-passgen-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}