{
  description = ''ANOther pure NIm MONGO driver.'';
  inputs.src-anonimongo-v0_4_12.flake = false;
  inputs.src-anonimongo-v0_4_12.type = "github";
  inputs.src-anonimongo-v0_4_12.owner = "mashingan";
  inputs.src-anonimongo-v0_4_12.repo = "anonimongo";
  inputs.src-anonimongo-v0_4_12.ref = "refs/tags/v0.4.12";
  
  
  inputs."nimsha2".url = "path:../../../n/nimsha2";
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  
  inputs."scram".url = "path:../../../s/scram";
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  
  inputs."sha1".url = "path:../../../s/sha1";
  inputs."sha1".type = "github";
  inputs."sha1".owner = "riinr";
  inputs."sha1".repo = "flake-nimble";
  inputs."sha1".ref = "flake-pinning";
  inputs."sha1".dir = "nimpkgs/s/sha1";

  
  inputs."dnsclient".url = "path:../../../d/dnsclient";
  inputs."dnsclient".type = "github";
  inputs."dnsclient".owner = "riinr";
  inputs."dnsclient".repo = "flake-nimble";
  inputs."dnsclient".ref = "flake-pinning";
  inputs."dnsclient".dir = "nimpkgs/d/dnsclient";

  outputs = { self, nixpkgs, src-anonimongo-v0_4_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anonimongo-v0_4_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-anonimongo-v0_4_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}