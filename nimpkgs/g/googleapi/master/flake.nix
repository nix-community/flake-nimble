{
  description = ''Google API for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-googleapi-master.flake = false;
  inputs.src-googleapi-master.type = "github";
  inputs.src-googleapi-master.owner = "treeform";
  inputs.src-googleapi-master.repo = "googleapi";
  inputs.src-googleapi-master.ref = "refs/heads/master";
  
  
  inputs."jwt".type = "github";
  inputs."jwt".owner = "riinr";
  inputs."jwt".repo = "flake-nimble";
  inputs."jwt".ref = "flake-pinning";
  inputs."jwt".dir = "nimpkgs/j/jwt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-googleapi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googleapi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-googleapi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}