{
  description = ''alignment is a library to align strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-alignment-v1_1_1.flake = false;
  inputs.src-alignment-v1_1_1.type = "github";
  inputs.src-alignment-v1_1_1.owner = "jiro4989";
  inputs.src-alignment-v1_1_1.repo = "alignment";
  inputs.src-alignment-v1_1_1.ref = "refs/tags/v1.1.1";
  inputs.src-alignment-v1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."eastasianwidth".type = "github";
  # inputs."eastasianwidth".owner = "riinr";
  # inputs."eastasianwidth".repo = "flake-nimble";
  # inputs."eastasianwidth".ref = "flake-pinning";
  # inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";
  # inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alignment-v1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alignment-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}