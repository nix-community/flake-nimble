{
  description = ''Swift-like unicode string handling'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-strunicode-master.flake = false;
  inputs.src-strunicode-master.type = "github";
  inputs.src-strunicode-master.owner = "nitely";
  inputs.src-strunicode-master.repo = "nim-strunicode";
  inputs.src-strunicode-master.ref = "refs/heads/master";
  inputs.src-strunicode-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."normalize".type = "github";
  # inputs."normalize".owner = "riinr";
  # inputs."normalize".repo = "flake-nimble";
  # inputs."normalize".ref = "flake-pinning";
  # inputs."normalize".dir = "nimpkgs/n/normalize";
  # inputs."normalize".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."normalize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."graphemes".type = "github";
  # inputs."graphemes".owner = "riinr";
  # inputs."graphemes".repo = "flake-nimble";
  # inputs."graphemes".ref = "flake-pinning";
  # inputs."graphemes".dir = "nimpkgs/g/graphemes";
  # inputs."graphemes".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."graphemes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-strunicode-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strunicode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-strunicode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}