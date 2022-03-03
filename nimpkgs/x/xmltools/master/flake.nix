{
  description = ''High level xml library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-xmltools-master.flake = false;
  inputs.src-xmltools-master.type = "github";
  inputs.src-xmltools-master.owner = "vegansk";
  inputs.src-xmltools-master.repo = "xmltools";
  inputs.src-xmltools-master.ref = "refs/heads/master";
  inputs.src-xmltools-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimfp".type = "github";
  # inputs."nimfp".owner = "riinr";
  # inputs."nimfp".repo = "flake-nimble";
  # inputs."nimfp".ref = "flake-pinning";
  # inputs."nimfp".dir = "nimpkgs/n/nimfp";
  # inputs."nimfp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimfp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimboost".type = "github";
  # inputs."nimboost".owner = "riinr";
  # inputs."nimboost".repo = "flake-nimble";
  # inputs."nimboost".ref = "flake-pinning";
  # inputs."nimboost".dir = "nimpkgs/n/nimboost";
  # inputs."nimboost".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimboost".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xmltools-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmltools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xmltools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}