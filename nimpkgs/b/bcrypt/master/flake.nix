{
  description = ''Wraps the bcrypt (blowfish) library for creating encrypted hashes (useful for passwords)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bcrypt-master.flake = false;
  inputs.src-bcrypt-master.type = "github";
  inputs.src-bcrypt-master.owner = "ithkuil";
  inputs.src-bcrypt-master.repo = "bcryptnim";
  inputs.src-bcrypt-master.ref = "refs/heads/master";
  inputs.src-bcrypt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimrod".type = "github";
  # inputs."nimrod".owner = "riinr";
  # inputs."nimrod".repo = "flake-nimble";
  # inputs."nimrod".ref = "flake-pinning";
  # inputs."nimrod".dir = "nimpkgs/n/nimrod";
  # inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bcrypt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bcrypt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bcrypt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}