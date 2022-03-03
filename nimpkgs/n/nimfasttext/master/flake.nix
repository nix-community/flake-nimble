{
  description = ''fastText wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimfastText-master.flake = false;
  inputs.src-nimfastText-master.type = "github";
  inputs.src-nimfastText-master.owner = "genotrance";
  inputs.src-nimfastText-master.repo = "nimfastText";
  inputs.src-nimfastText-master.ref = "refs/heads/master";
  inputs.src-nimfastText-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimgen".type = "github";
  # inputs."nimgen".owner = "riinr";
  # inputs."nimgen".repo = "flake-nimble";
  # inputs."nimgen".ref = "flake-pinning";
  # inputs."nimgen".dir = "nimpkgs/n/nimgen";
  # inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfastText-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfastText-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfastText-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}