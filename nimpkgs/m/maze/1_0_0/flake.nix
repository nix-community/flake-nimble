{
  description = ''A command and library to generate mazes'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-maze-1_0_0.flake = false;
  inputs.src-maze-1_0_0.type = "github";
  inputs.src-maze-1_0_0.owner = "jiro4989";
  inputs.src-maze-1_0_0.repo = "maze";
  inputs.src-maze-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-maze-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-maze-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-maze-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-maze-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}