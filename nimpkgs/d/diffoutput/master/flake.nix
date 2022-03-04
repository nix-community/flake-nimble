{
  description = ''Collection of Diff stringifications (and reversals)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-diffoutput-master.flake = false;
  inputs.src-diffoutput-master.type = "github";
  inputs.src-diffoutput-master.owner = "JohnAD";
  inputs.src-diffoutput-master.repo = "diffoutput";
  inputs.src-diffoutput-master.ref = "refs/heads/master";
  inputs.src-diffoutput-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."diff".type = "github";
  inputs."diff".owner = "riinr";
  inputs."diff".repo = "flake-nimble";
  inputs."diff".ref = "flake-pinning";
  inputs."diff".dir = "nimpkgs/d/diff";
  inputs."diff".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-diffoutput-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-diffoutput-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-diffoutput-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}