{
  description = ''Pure Nim stack implementation based on sequences.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stacks-0_4_2.flake = false;
  inputs.src-stacks-0_4_2.type = "github";
  inputs.src-stacks-0_4_2.owner = "rustomax";
  inputs.src-stacks-0_4_2.repo = "nim-stacks";
  inputs.src-stacks-0_4_2.ref = "refs/tags/0.4.2";
  inputs.src-stacks-0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stacks-0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stacks-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stacks-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}