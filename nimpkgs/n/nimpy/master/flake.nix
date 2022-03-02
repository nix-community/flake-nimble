{
  description = ''Nim - Python bridge'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimpy-master.flake = false;
  inputs.src-nimpy-master.type = "github";
  inputs.src-nimpy-master.owner = "yglukhov";
  inputs.src-nimpy-master.repo = "nimpy";
  inputs.src-nimpy-master.ref = "refs/heads/master";
  inputs.src-nimpy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}