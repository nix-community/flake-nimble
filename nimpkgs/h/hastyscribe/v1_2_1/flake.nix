{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hastyscribe-v1_2_1.flake = false;
  inputs.src-hastyscribe-v1_2_1.type = "github";
  inputs.src-hastyscribe-v1_2_1.owner = "h3rald";
  inputs.src-hastyscribe-v1_2_1.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_2_1.ref = "refs/tags/v1.2.1";
  inputs.src-hastyscribe-v1_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hastyscribe-v1_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}