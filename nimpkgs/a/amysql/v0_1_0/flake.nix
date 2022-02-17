{
  description = ''Async MySQL Connector write in pure Nim.'';
  inputs.src-amysql-v0_1_0.flake = false;
  inputs.src-amysql-v0_1_0.type = "github";
  inputs.src-amysql-v0_1_0.owner = "bung87";
  inputs.src-amysql-v0_1_0.repo = "amysql";
  inputs.src-amysql-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
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

  outputs = { self, nixpkgs, src-amysql-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amysql-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-amysql-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}