{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';
  inputs.src-hmac-master.flake = false;
  inputs.src-hmac-master.type = "github";
  inputs.src-hmac-master.owner = "OpenSystemsLab";
  inputs.src-hmac-master.repo = "hmac.nim";
  inputs.src-hmac-master.ref = "refs/heads/master";
  
  
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

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-hmac-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmac-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmac-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}