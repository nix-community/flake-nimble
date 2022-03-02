{
  description = ''Async MySQL Connector write in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-amysql-master.flake = false;
  inputs.src-amysql-master.type = "github";
  inputs.src-amysql-master.owner = "bung87";
  inputs.src-amysql-master.repo = "amysql";
  inputs.src-amysql-master.ref = "refs/heads/master";
  inputs.src-amysql-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."zstd".type = "github";
  # inputs."zstd".owner = "riinr";
  # inputs."zstd".repo = "flake-nimble";
  # inputs."zstd".ref = "flake-pinning";
  # inputs."zstd".dir = "nimpkgs/z/zstd";
  # inputs."zstd".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zstd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."urlly".type = "github";
  # inputs."urlly".owner = "riinr";
  # inputs."urlly".repo = "flake-nimble";
  # inputs."urlly".ref = "flake-pinning";
  # inputs."urlly".dir = "nimpkgs/u/urlly";
  # inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chronos".type = "github";
  # inputs."chronos".owner = "riinr";
  # inputs."chronos".repo = "flake-nimble";
  # inputs."chronos".ref = "flake-pinning";
  # inputs."chronos".dir = "nimpkgs/c/chronos";
  # inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-amysql-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amysql-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-amysql-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}