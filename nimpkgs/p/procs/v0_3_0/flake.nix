{
  description = ''Unix process&system query&formatting library&multi-command CLI in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-procs-v0_3_0.flake = false;
  inputs.src-procs-v0_3_0.type = "github";
  inputs.src-procs-v0_3_0.owner = "c-blake";
  inputs.src-procs-v0_3_0.repo = "procs";
  inputs.src-procs-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-procs-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-procs-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-procs-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-procs-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}