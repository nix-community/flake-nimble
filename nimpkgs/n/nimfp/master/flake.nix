{
  description = ''Nim functional programming library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfp-master.flake = false;
  inputs.src-nimfp-master.type = "github";
  inputs.src-nimfp-master.owner = "vegansk";
  inputs.src-nimfp-master.repo = "nimfp";
  inputs.src-nimfp-master.ref = "refs/heads/master";
  
  
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  
  inputs."classy".type = "github";
  inputs."classy".owner = "riinr";
  inputs."classy".repo = "flake-nimble";
  inputs."classy".ref = "flake-pinning";
  inputs."classy".dir = "nimpkgs/c/classy";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}