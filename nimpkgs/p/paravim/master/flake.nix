{
  description = ''An embedded text editor for paranim games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-paravim-master.flake = false;
  inputs.src-paravim-master.type = "github";
  inputs.src-paravim-master.owner = "paranim";
  inputs.src-paravim-master.repo = "paravim";
  inputs.src-paravim-master.ref = "refs/heads/master";
  inputs.src-paravim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."paranim".type = "github";
  # inputs."paranim".owner = "riinr";
  # inputs."paranim".repo = "flake-nimble";
  # inputs."paranim".ref = "flake-pinning";
  # inputs."paranim".dir = "nimpkgs/p/paranim";
  # inputs."paranim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."paranim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."pararules".type = "github";
  # inputs."pararules".owner = "riinr";
  # inputs."pararules".repo = "flake-nimble";
  # inputs."pararules".ref = "flake-pinning";
  # inputs."pararules".dir = "nimpkgs/p/pararules";
  # inputs."pararules".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."pararules".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."paratext".type = "github";
  # inputs."paratext".owner = "riinr";
  # inputs."paratext".repo = "flake-nimble";
  # inputs."paratext".ref = "flake-pinning";
  # inputs."paratext".dir = "nimpkgs/p/paratext";
  # inputs."paratext".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."paratext".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."illwill".type = "github";
  # inputs."illwill".owner = "riinr";
  # inputs."illwill".repo = "flake-nimble";
  # inputs."illwill".ref = "flake-pinning";
  # inputs."illwill".dir = "nimpkgs/i/illwill";
  # inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-paravim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paravim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paravim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}