{
  description = ''fs memory zip finder implement in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-finder-master.flake = false;
  inputs.src-finder-master.type = "github";
  inputs.src-finder-master.owner = "bung87";
  inputs.src-finder-master.repo = "finder";
  inputs.src-finder-master.ref = "refs/heads/master";
  
  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, flakeNimbleLib, src-finder-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-finder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-finder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}