{
  description = ''wrapper for the Duktape embeddable Javascript engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-duktape-master.flake = false;
  inputs.src-duktape-master.type = "github";
  inputs.src-duktape-master.owner = "manguluka";
  inputs.src-duktape-master.repo = "duktape-nim";
  inputs.src-duktape-master.ref = "refs/heads/master";
  inputs.src-duktape-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimgen".type = "github";
  # inputs."nimgen".owner = "riinr";
  # inputs."nimgen".repo = "flake-nimble";
  # inputs."nimgen".ref = "flake-pinning";
  # inputs."nimgen".dir = "nimpkgs/n/nimgen";
  # inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-duktape-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-duktape-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-duktape-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}