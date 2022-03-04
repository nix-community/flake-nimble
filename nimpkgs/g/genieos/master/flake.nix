{
  description = ''Too awesome procs to be included in nimrod.os module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-genieos-master.flake = false;
  inputs.src-genieos-master.type = "github";
  inputs.src-genieos-master.owner = "Araq";
  inputs.src-genieos-master.repo = "genieos";
  inputs.src-genieos-master.ref = "refs/heads/master";
  inputs.src-genieos-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-genieos-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genieos-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genieos-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}