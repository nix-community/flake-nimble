{
  description = ''Nancy - Nim fancy ANSI tables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nancy-master.flake = false;
  inputs.src-nancy-master.type = "github";
  inputs.src-nancy-master.owner = "PMunch";
  inputs.src-nancy-master.repo = "nancy";
  inputs.src-nancy-master.ref = "refs/heads/master";
  inputs.src-nancy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ansiparse".type = "github";
  # inputs."ansiparse".owner = "riinr";
  # inputs."ansiparse".repo = "flake-nimble";
  # inputs."ansiparse".ref = "flake-pinning";
  # inputs."ansiparse".dir = "nimpkgs/a/ansiparse";
  # inputs."ansiparse".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ansiparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nancy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nancy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nancy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}