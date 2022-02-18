{
  description = ''High level OpenGL-based Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sfml-master.flake = false;
  inputs.src-sfml-master.type = "github";
  inputs.src-sfml-master.owner = "fowlmouth";
  inputs.src-sfml-master.repo = "nimrod-sfml";
  inputs.src-sfml-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sfml-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sfml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sfml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}