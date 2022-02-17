{
  description = ''ANOther pure NIm MONGO driver.'';
  inputs.src-anonimongo-v0_5_2.flake = false;
  inputs.src-anonimongo-v0_5_2.type = "github";
  inputs.src-anonimongo-v0_5_2.owner = "mashingan";
  inputs.src-anonimongo-v0_5_2.repo = "anonimongo";
  inputs.src-anonimongo-v0_5_2.ref = "refs/tags/v0.5.2";
  
  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  
  inputs."sha1".type = "github";
  inputs."sha1".owner = "riinr";
  inputs."sha1".repo = "flake-nimble";
  inputs."sha1".ref = "flake-pinning";
  inputs."sha1".dir = "nimpkgs/s/sha1";

  
  inputs."dnsclient".type = "github";
  inputs."dnsclient".owner = "riinr";
  inputs."dnsclient".repo = "flake-nimble";
  inputs."dnsclient".ref = "flake-pinning";
  inputs."dnsclient".dir = "nimpkgs/d/dnsclient";

  
  inputs."supersnappy".type = "github";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".repo = "flake-nimble";
  inputs."supersnappy".ref = "flake-pinning";
  inputs."supersnappy".dir = "nimpkgs/s/supersnappy";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, src-anonimongo-v0_5_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anonimongo-v0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-anonimongo-v0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}