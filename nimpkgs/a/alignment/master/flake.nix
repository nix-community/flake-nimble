{
  description = ''alignment is a library to align strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-alignment-master.flake = false;
  inputs.src-alignment-master.type = "github";
  inputs.src-alignment-master.owner = "jiro4989";
  inputs.src-alignment-master.repo = "alignment";
  inputs.src-alignment-master.ref = "refs/heads/master";
  inputs.src-alignment-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."eastasianwidth".type = "github";
  # inputs."eastasianwidth".owner = "riinr";
  # inputs."eastasianwidth".repo = "flake-nimble";
  # inputs."eastasianwidth".ref = "flake-pinning";
  # inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";
  # inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alignment-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alignment-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}