{
  description = ''Google Play APK Uploader'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-gplay-master.flake = false;
  inputs.src-gplay-master.type = "github";
  inputs.src-gplay-master.owner = "yglukhov";
  inputs.src-gplay-master.repo = "gplay";
  inputs.src-gplay-master.ref = "refs/heads/master";
  inputs.src-gplay-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jwt".type = "github";
  # inputs."jwt".owner = "riinr";
  # inputs."jwt".repo = "flake-nimble";
  # inputs."jwt".ref = "flake-pinning";
  # inputs."jwt".dir = "nimpkgs/j/jwt";
  # inputs."jwt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gplay-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gplay-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gplay-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}