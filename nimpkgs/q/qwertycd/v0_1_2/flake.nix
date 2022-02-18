{
  description = ''Terminal UI based cd command'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-qwertycd-v0_1_2.flake = false;
  inputs.src-qwertycd-v0_1_2.type = "github";
  inputs.src-qwertycd-v0_1_2.owner = "minefuto";
  inputs.src-qwertycd-v0_1_2.repo = "qwertycd";
  inputs.src-qwertycd-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, flakeNimbleLib, src-qwertycd-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qwertycd-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qwertycd-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}