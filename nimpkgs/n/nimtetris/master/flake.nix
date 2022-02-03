{
  description = ''A simple terminal tetris in Nim'';
  inputs.src-nimtetris-master.flake = false;
  inputs.src-nimtetris-master.type = "github";
  inputs.src-nimtetris-master.owner = "jiro4989";
  inputs.src-nimtetris-master.repo = "nimtetris";
  inputs.src-nimtetris-master.ref = "refs/heads/master";
  
  
  inputs."illwill".url = "path:../../../i/illwill";
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, src-nimtetris-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtetris-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtetris-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}