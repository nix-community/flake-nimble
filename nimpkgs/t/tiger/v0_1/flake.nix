{
  description = ''Tiger hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tiger-v0_1.flake = false;
  inputs.src-tiger-v0_1.type = "other";
  inputs.src-tiger-v0_1.owner = "~ehmry";
  inputs.src-tiger-v0_1.repo = "nim_tiger";
  inputs.src-tiger-v0_1.ref = "refs/tags/v0.1";
  inputs.src-tiger-v0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tiger-v0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tiger-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tiger-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}