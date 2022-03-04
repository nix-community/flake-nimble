{
  description = ''Terminal UI based cd command'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-qwertycd-v0_1_0.flake = false;
  inputs.src-qwertycd-v0_1_0.type = "github";
  inputs.src-qwertycd-v0_1_0.owner = "minefuto";
  inputs.src-qwertycd-v0_1_0.repo = "qwertycd";
  inputs.src-qwertycd-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-qwertycd-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-qwertycd-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qwertycd-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qwertycd-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}