{
  description = ''Async MySQL Connector write in pure Nim.'';
  inputs.src-amysql-v0_7_5.flake = false;
  inputs.src-amysql-v0_7_5.type = "github";
  inputs.src-amysql-v0_7_5.owner = "bung87";
  inputs.src-amysql-v0_7_5.repo = "amysql";
  inputs.src-amysql-v0_7_5.ref = "refs/tags/v0.7.5";
  
  
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

  
  inputs."zstd".url = "path:../../../z/zstd";
  inputs."zstd".type = "github";
  inputs."zstd".owner = "riinr";
  inputs."zstd".repo = "flake-nimble";
  inputs."zstd".ref = "flake-pinning";
  inputs."zstd".dir = "nimpkgs/z/zstd";

  
  inputs."urlly".url = "path:../../../u/urlly";
  inputs."urlly".type = "github";
  inputs."urlly".owner = "riinr";
  inputs."urlly".repo = "flake-nimble";
  inputs."urlly".ref = "flake-pinning";
  inputs."urlly".dir = "nimpkgs/u/urlly";

  
  inputs."chronos".url = "path:../../../c/chronos";
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  outputs = { self, nixpkgs, src-amysql-v0_7_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amysql-v0_7_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-amysql-v0_7_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}