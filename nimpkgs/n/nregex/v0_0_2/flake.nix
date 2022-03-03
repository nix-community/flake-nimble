{
  description = ''A DFA based regex engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nregex-v0_0_2.flake = false;
  inputs.src-nregex-v0_0_2.type = "github";
  inputs.src-nregex-v0_0_2.owner = "nitely";
  inputs.src-nregex-v0_0_2.repo = "nregex";
  inputs.src-nregex-v0_0_2.ref = "refs/tags/v0.0.2";
  inputs.src-nregex-v0_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."unicodedb".type = "github";
  # inputs."unicodedb".owner = "riinr";
  # inputs."unicodedb".repo = "flake-nimble";
  # inputs."unicodedb".ref = "flake-pinning";
  # inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  # inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."unicodeplus".type = "github";
  # inputs."unicodeplus".owner = "riinr";
  # inputs."unicodeplus".repo = "flake-nimble";
  # inputs."unicodeplus".ref = "flake-pinning";
  # inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";
  # inputs."unicodeplus".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unicodeplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nregex-v0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nregex-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nregex-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}