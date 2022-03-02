{
  description = ''Linear algebra for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-neo-master.flake = false;
  inputs.src-neo-master.type = "github";
  inputs.src-neo-master.owner = "andreaferretti";
  inputs.src-neo-master.repo = "neo";
  inputs.src-neo-master.ref = "refs/heads/master";
  inputs.src-neo-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimblas".type = "github";
  # inputs."nimblas".owner = "riinr";
  # inputs."nimblas".repo = "flake-nimble";
  # inputs."nimblas".ref = "flake-pinning";
  # inputs."nimblas".dir = "nimpkgs/n/nimblas";
  # inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimcuda".type = "github";
  # inputs."nimcuda".owner = "riinr";
  # inputs."nimcuda".repo = "flake-nimble";
  # inputs."nimcuda".ref = "flake-pinning";
  # inputs."nimcuda".dir = "nimpkgs/n/nimcuda";
  # inputs."nimcuda".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcuda".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimlapack".type = "github";
  # inputs."nimlapack".owner = "riinr";
  # inputs."nimlapack".repo = "flake-nimble";
  # inputs."nimlapack".ref = "flake-pinning";
  # inputs."nimlapack".dir = "nimpkgs/n/nimlapack";
  # inputs."nimlapack".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimlapack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-neo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}