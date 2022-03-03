{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimgen-master.flake = false;
  inputs.src-nimgen-master.type = "github";
  inputs.src-nimgen-master.owner = "genotrance";
  inputs.src-nimgen-master.repo = "nimgen";
  inputs.src-nimgen-master.ref = "refs/heads/master";
  inputs.src-nimgen-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."c2nim".type = "github";
  # inputs."c2nim".owner = "riinr";
  # inputs."c2nim".repo = "flake-nimble";
  # inputs."c2nim".ref = "flake-pinning";
  # inputs."c2nim".dir = "nimpkgs/c/c2nim";
  # inputs."c2nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."c2nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgen-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}