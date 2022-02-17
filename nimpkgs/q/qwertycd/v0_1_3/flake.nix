{
  description = ''Terminal UI based cd command'';
  inputs.src-qwertycd-v0_1_3.flake = false;
  inputs.src-qwertycd-v0_1_3.type = "github";
  inputs.src-qwertycd-v0_1_3.owner = "minefuto";
  inputs.src-qwertycd-v0_1_3.repo = "qwertycd";
  inputs.src-qwertycd-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
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

  outputs = { self, nixpkgs, src-qwertycd-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qwertycd-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qwertycd-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}