{
  description = ''A wrapper of the ORX 2.5D game engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-norx-master.flake = false;
  inputs.src-norx-master.type = "github";
  inputs.src-norx-master.owner = "gokr";
  inputs.src-norx-master.repo = "norx";
  inputs.src-norx-master.ref = "refs/heads/master";
  inputs.src-norx-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-norx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}