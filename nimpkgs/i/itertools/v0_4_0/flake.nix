{
  description = ''Itertools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-itertools-v0_4_0.flake = false;
  inputs.src-itertools-v0_4_0.type = "github";
  inputs.src-itertools-v0_4_0.owner = "narimiran";
  inputs.src-itertools-v0_4_0.repo = "itertools";
  inputs.src-itertools-v0_4_0.ref = "refs/tags/v0.4.0";
  inputs.src-itertools-v0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-itertools-v0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itertools-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-itertools-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}