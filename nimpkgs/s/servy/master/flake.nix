{
  description = ''a down to earth webframework in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-servy-master.flake = false;
  inputs.src-servy-master.type = "github";
  inputs.src-servy-master.owner = "xmonader";
  inputs.src-servy-master.repo = "nim-servy";
  inputs.src-servy-master.ref = "refs/heads/master";
  inputs.src-servy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."terminaltables".type = "github";
  # inputs."terminaltables".owner = "riinr";
  # inputs."terminaltables".repo = "flake-nimble";
  # inputs."terminaltables".ref = "flake-pinning";
  # inputs."terminaltables".dir = "nimpkgs/t/terminaltables";
  # inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."ws".type = "github";
  # inputs."ws".owner = "riinr";
  # inputs."ws".repo = "flake-nimble";
  # inputs."ws".ref = "flake-pinning";
  # inputs."ws".dir = "nimpkgs/w/ws";
  # inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-servy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-servy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-servy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}