{
  description = ''Terminal UI based cd command'';
  inputs.src-qwertycd-master.flake = false;
  inputs.src-qwertycd-master.type = "github";
  inputs.src-qwertycd-master.owner = "minefuto";
  inputs.src-qwertycd-master.repo = "qwertycd";
  inputs.src-qwertycd-master.ref = "refs/heads/master";
  
  
  inputs."illwill".url = "path:../../../i/illwill";
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  
  inputs."parsetoml".url = "path:../../../p/parsetoml";
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, src-qwertycd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qwertycd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qwertycd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}