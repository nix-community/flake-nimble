{
  description = ''Calculation caching library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-kashae-master.flake = false;
  inputs.src-kashae-master.type = "github";
  inputs.src-kashae-master.owner = "beef331";
  inputs.src-kashae-master.repo = "kashae";
  inputs.src-kashae-master.ref = "refs/heads/master";
  inputs.src-kashae-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kashae-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kashae-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kashae-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}