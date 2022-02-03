{
  description = ''Async MySQL Connector write in pure Nim.'';
  inputs.src-amysql-v0_6_1.flake = false;
  inputs.src-amysql-v0_6_1.type = "github";
  inputs.src-amysql-v0_6_1.owner = "bung87";
  inputs.src-amysql-v0_6_1.repo = "amysql";
  inputs.src-amysql-v0_6_1.ref = "refs/tags/v0.6.1";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."https://github.com/bung87/zstd".url = "path:../../../h/https://github.com/bung87/zstd";
  inputs."https://github.com/bung87/zstd".type = "github";
  inputs."https://github.com/bung87/zstd".owner = "riinr";
  inputs."https://github.com/bung87/zstd".repo = "flake-nimble";
  inputs."https://github.com/bung87/zstd".ref = "flake-pinning";
  inputs."https://github.com/bung87/zstd".dir = "nimpkgs/h/https://github.com/bung87/zstd";

  
  inputs."https://github.com/treeform/urlly".url = "path:../../../h/https://github.com/treeform/urlly";
  inputs."https://github.com/treeform/urlly".type = "github";
  inputs."https://github.com/treeform/urlly".owner = "riinr";
  inputs."https://github.com/treeform/urlly".repo = "flake-nimble";
  inputs."https://github.com/treeform/urlly".ref = "flake-pinning";
  inputs."https://github.com/treeform/urlly".dir = "nimpkgs/h/https://github.com/treeform/urlly";

  
  inputs."chronos".url = "path:../../../c/chronos";
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  outputs = { self, nixpkgs, src-amysql-v0_6_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amysql-v0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-amysql-v0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}