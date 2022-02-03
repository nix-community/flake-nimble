{
  description = ''alignment is a library to align strings.'';
  inputs.src-alignment-master.flake = false;
  inputs.src-alignment-master.type = "github";
  inputs.src-alignment-master.owner = "jiro4989";
  inputs.src-alignment-master.repo = "alignment";
  inputs.src-alignment-master.ref = "refs/heads/master";
  
  
  inputs."eastasianwidth".url = "path:../../../e/eastasianwidth";
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  outputs = { self, nixpkgs, src-alignment-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-alignment-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}