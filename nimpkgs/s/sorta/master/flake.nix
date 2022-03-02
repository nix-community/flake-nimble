{
  description = ''Sorted Tables for Nim, based on B-Trees'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sorta-master.flake = false;
  inputs.src-sorta-master.type = "github";
  inputs.src-sorta-master.owner = "narimiran";
  inputs.src-sorta-master.repo = "sorta";
  inputs.src-sorta-master.ref = "refs/heads/master";
  inputs.src-sorta-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sorta-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sorta-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sorta-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}