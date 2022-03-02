{
  description = ''Implement dynamic dispatch through vtable, should works for dynlib.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-vtable-v0_1_2.flake = false;
  inputs.src-vtable-v0_1_2.type = "github";
  inputs.src-vtable-v0_1_2.owner = "codehz";
  inputs.src-vtable-v0_1_2.repo = "nim-vtable";
  inputs.src-vtable-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-vtable-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vtable-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vtable-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vtable-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}