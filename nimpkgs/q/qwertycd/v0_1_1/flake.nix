{
  description = ''Terminal UI based cd command'';
  inputs.src-qwertycd-v0_1_1.flake = false;
  inputs.src-qwertycd-v0_1_1.type = "github";
  inputs.src-qwertycd-v0_1_1.owner = "minefuto";
  inputs.src-qwertycd-v0_1_1.repo = "qwertycd";
  inputs.src-qwertycd-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, src-qwertycd-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qwertycd-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qwertycd-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}