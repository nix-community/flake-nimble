{
  description = ''Async MySQL Connector write in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-amysql-v0_6_1.flake = false;
  inputs.src-amysql-v0_6_1.type = "github";
  inputs.src-amysql-v0_6_1.owner = "bung87";
  inputs.src-amysql-v0_6_1.repo = "amysql";
  inputs.src-amysql-v0_6_1.ref = "refs/tags/v0.6.1";
  inputs.src-amysql-v0_6_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."https://github.com/bung87/zstd".type = "github";
  # inputs."https://github.com/bung87/zstd".owner = "riinr";
  # inputs."https://github.com/bung87/zstd".repo = "flake-nimble";
  # inputs."https://github.com/bung87/zstd".ref = "flake-pinning";
  # inputs."https://github.com/bung87/zstd".dir = "nimpkgs/h/https://github.com/bung87/zstd";
  # inputs."https://github.com/bung87/zstd".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/bung87/zstd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/treeform/urlly".type = "github";
  # inputs."https://github.com/treeform/urlly".owner = "riinr";
  # inputs."https://github.com/treeform/urlly".repo = "flake-nimble";
  # inputs."https://github.com/treeform/urlly".ref = "flake-pinning";
  # inputs."https://github.com/treeform/urlly".dir = "nimpkgs/h/https://github.com/treeform/urlly";
  # inputs."https://github.com/treeform/urlly".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/treeform/urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chronos".type = "github";
  # inputs."chronos".owner = "riinr";
  # inputs."chronos".repo = "flake-nimble";
  # inputs."chronos".ref = "flake-pinning";
  # inputs."chronos".dir = "nimpkgs/c/chronos";
  # inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-amysql-v0_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amysql-v0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-amysql-v0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}