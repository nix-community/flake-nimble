{
  description = ''ANOther pure NIm MONGO driver.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-anonimongo-v0_4_4.flake = false;
  inputs.src-anonimongo-v0_4_4.type = "github";
  inputs.src-anonimongo-v0_4_4.owner = "mashingan";
  inputs.src-anonimongo-v0_4_4.repo = "anonimongo";
  inputs.src-anonimongo-v0_4_4.ref = "refs/tags/v0.4.4";
  inputs.src-anonimongo-v0_4_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimsha2".type = "github";
  # inputs."nimsha2".owner = "riinr";
  # inputs."nimsha2".repo = "flake-nimble";
  # inputs."nimsha2".ref = "flake-pinning";
  # inputs."nimsha2".dir = "nimpkgs/n/nimsha2";
  # inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."scram".type = "github";
  # inputs."scram".owner = "riinr";
  # inputs."scram".repo = "flake-nimble";
  # inputs."scram".ref = "flake-pinning";
  # inputs."scram".dir = "nimpkgs/s/scram";
  # inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."sha1".type = "github";
  # inputs."sha1".owner = "riinr";
  # inputs."sha1".repo = "flake-nimble";
  # inputs."sha1".ref = "flake-pinning";
  # inputs."sha1".dir = "nimpkgs/s/sha1";
  # inputs."sha1".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sha1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."dnsclient".type = "github";
  # inputs."dnsclient".owner = "riinr";
  # inputs."dnsclient".repo = "flake-nimble";
  # inputs."dnsclient".ref = "flake-pinning";
  # inputs."dnsclient".dir = "nimpkgs/d/dnsclient";
  # inputs."dnsclient".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."dnsclient".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-anonimongo-v0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anonimongo-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-anonimongo-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}