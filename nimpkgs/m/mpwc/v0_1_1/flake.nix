{
  description = ''Master Password command line utility'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mpwc-v0_1_1.flake = false;
  inputs.src-mpwc-v0_1_1.type = "github";
  inputs.src-mpwc-v0_1_1.owner = "SolitudeSF";
  inputs.src-mpwc-v0_1_1.repo = "mpwc";
  inputs.src-mpwc-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-mpwc-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."masterpassword".type = "github";
  # inputs."masterpassword".owner = "riinr";
  # inputs."masterpassword".repo = "flake-nimble";
  # inputs."masterpassword".ref = "flake-pinning";
  # inputs."masterpassword".dir = "nimpkgs/m/masterpassword";
  # inputs."masterpassword".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."masterpassword".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mpwc-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpwc-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpwc-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}