{
  description = ''Convert json node to camelcase'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-camelize-master.flake = false;
  inputs.src-camelize-master.type = "github";
  inputs.src-camelize-master.owner = "kixixixixi";
  inputs.src-camelize-master.repo = "camelize";
  inputs.src-camelize-master.ref = "refs/heads/master";
  inputs.src-camelize-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-camelize-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-camelize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-camelize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}