{
  description = ''A static site generator written in Nim'';
  inputs.src-nimatic-master.flake = false;
  inputs.src-nimatic-master.type = "github";
  inputs.src-nimatic-master.owner = "DangerOnTheRanger";
  inputs.src-nimatic-master.repo = "nimatic";
  inputs.src-nimatic-master.ref = "refs/heads/master";
  
  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  outputs = { self, nixpkgs, src-nimatic-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimatic-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimatic-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}