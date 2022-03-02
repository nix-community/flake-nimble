{
  description = ''ANOther pure NIm MONGO driver.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-anonimongo-master.flake = false;
  inputs.src-anonimongo-master.type = "github";
  inputs.src-anonimongo-master.owner = "mashingan";
  inputs.src-anonimongo-master.repo = "anonimongo";
  inputs.src-anonimongo-master.ref = "refs/heads/master";
  inputs.src-anonimongo-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."supersnappy".type = "github";
  # inputs."supersnappy".owner = "riinr";
  # inputs."supersnappy".repo = "flake-nimble";
  # inputs."supersnappy".ref = "flake-pinning";
  # inputs."supersnappy".dir = "nimpkgs/s/supersnappy";
  # inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zippy".type = "github";
  # inputs."zippy".owner = "riinr";
  # inputs."zippy".repo = "flake-nimble";
  # inputs."zippy".ref = "flake-pinning";
  # inputs."zippy".dir = "nimpkgs/z/zippy";
  # inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-anonimongo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anonimongo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-anonimongo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}