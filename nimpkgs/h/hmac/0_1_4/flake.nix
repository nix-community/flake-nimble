{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';
  inputs.src-hmac-0_1_4.flake = false;
  inputs.src-hmac-0_1_4.type = "github";
  inputs.src-hmac-0_1_4.owner = "OpenSystemsLab";
  inputs.src-hmac-0_1_4.repo = "hmac.nim";
  inputs.src-hmac-0_1_4.ref = "refs/tags/0.1.4";
  
  
  inputs."nimsha2".url = "path:../../../n/nimsha2";
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  outputs = { self, nixpkgs, src-hmac-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmac-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmac-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}