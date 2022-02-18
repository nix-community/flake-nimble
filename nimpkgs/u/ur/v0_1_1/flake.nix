{
  description = ''A Universal Result macro/object that normalizes the information returned from a procedure'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ur-v0_1_1.flake = false;
  inputs.src-ur-v0_1_1.type = "github";
  inputs.src-ur-v0_1_1.owner = "JohnAD";
  inputs.src-ur-v0_1_1.repo = "ur";
  inputs.src-ur-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ur-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ur-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ur-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}