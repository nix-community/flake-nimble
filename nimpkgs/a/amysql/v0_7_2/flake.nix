{
  description = ''Async MySQL Connector write in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-amysql-v0_7_2.flake = false;
  inputs.src-amysql-v0_7_2.type = "github";
  inputs.src-amysql-v0_7_2.owner = "bung87";
  inputs.src-amysql-v0_7_2.repo = "amysql";
  inputs.src-amysql-v0_7_2.ref = "refs/tags/v0.7.2";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."https://github.com/bung87/zstd".type = "github";
  inputs."https://github.com/bung87/zstd".owner = "riinr";
  inputs."https://github.com/bung87/zstd".repo = "flake-nimble";
  inputs."https://github.com/bung87/zstd".ref = "flake-pinning";
  inputs."https://github.com/bung87/zstd".dir = "nimpkgs/h/https://github.com/bung87/zstd";

  
  inputs."https://github.com/treeform/urlly".type = "github";
  inputs."https://github.com/treeform/urlly".owner = "riinr";
  inputs."https://github.com/treeform/urlly".repo = "flake-nimble";
  inputs."https://github.com/treeform/urlly".ref = "flake-pinning";
  inputs."https://github.com/treeform/urlly".dir = "nimpkgs/h/https://github.com/treeform/urlly";

  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  outputs = { self, nixpkgs, flakeNimbleLib, src-amysql-v0_7_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amysql-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-amysql-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}