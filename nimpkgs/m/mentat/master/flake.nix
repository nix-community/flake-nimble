{
  description = ''A Nim library for data science and machine learning'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mentat-master.flake = false;
  inputs.src-mentat-master.type = "github";
  inputs.src-mentat-master.owner = "ruivieira";
  inputs.src-mentat-master.repo = "nim-mentat";
  inputs.src-mentat-master.ref = "refs/heads/master";
  inputs.src-mentat-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."science".type = "github";
  # inputs."science".owner = "riinr";
  # inputs."science".repo = "flake-nimble";
  # inputs."science".ref = "flake-pinning";
  # inputs."science".dir = "nimpkgs/s/science";
  # inputs."science".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."science".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mentat-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mentat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mentat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}