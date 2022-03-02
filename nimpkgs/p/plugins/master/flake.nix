{
  description = ''Plugin system for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-plugins-master.flake = false;
  inputs.src-plugins-master.type = "github";
  inputs.src-plugins-master.owner = "genotrance";
  inputs.src-plugins-master.repo = "plugins";
  inputs.src-plugins-master.ref = "refs/heads/master";
  inputs.src-plugins-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-plugins-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plugins-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plugins-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}