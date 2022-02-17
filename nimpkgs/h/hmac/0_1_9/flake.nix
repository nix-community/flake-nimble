{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';
  inputs.src-hmac-0_1_9.flake = false;
  inputs.src-hmac-0_1_9.type = "github";
  inputs.src-hmac-0_1_9.owner = "OpenSystemsLab";
  inputs.src-hmac-0_1_9.repo = "hmac.nim";
  inputs.src-hmac-0_1_9.ref = "refs/tags/0.1.9";
  
  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  
  inputs."sha1".type = "github";
  inputs."sha1".owner = "riinr";
  inputs."sha1".repo = "flake-nimble";
  inputs."sha1".ref = "flake-pinning";
  inputs."sha1".dir = "nimpkgs/s/sha1";

  outputs = { self, nixpkgs, src-hmac-0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmac-0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmac-0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}