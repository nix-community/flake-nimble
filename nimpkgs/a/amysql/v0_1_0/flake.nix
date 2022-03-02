{
  description = ''Async MySQL Connector write in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-amysql-v0_1_0.flake = false;
  inputs.src-amysql-v0_1_0.type = "github";
  inputs.src-amysql-v0_1_0.owner = "bung87";
  inputs.src-amysql-v0_1_0.repo = "amysql";
  inputs.src-amysql-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-amysql-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-amysql-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amysql-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-amysql-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}