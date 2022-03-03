{
  description = ''Nim bindings for GLFW library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimrod-glfw-master.flake = false;
  inputs.src-nimrod-glfw-master.type = "github";
  inputs.src-nimrod-glfw-master.owner = "rafaelvasco";
  inputs.src-nimrod-glfw-master.repo = "nimrod-glfw";
  inputs.src-nimrod-glfw-master.ref = "refs/heads/master";
  inputs.src-nimrod-glfw-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrod-glfw-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrod-glfw-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrod-glfw-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}