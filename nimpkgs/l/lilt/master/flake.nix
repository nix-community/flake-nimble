{
  description = ''Parsing language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-lilt-master.flake = false;
  inputs.src-lilt-master.type = "github";
  inputs.src-lilt-master.owner = "quelklef";
  inputs.src-lilt-master.repo = "lilt";
  inputs.src-lilt-master.ref = "refs/heads/master";
  inputs.src-lilt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lilt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lilt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lilt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}