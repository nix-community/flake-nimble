{
  description = ''Itertools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-itertools-v0_2_2.flake = false;
  inputs.src-itertools-v0_2_2.type = "github";
  inputs.src-itertools-v0_2_2.owner = "narimiran";
  inputs.src-itertools-v0_2_2.repo = "itertools";
  inputs.src-itertools-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-itertools-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-itertools-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itertools-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-itertools-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}