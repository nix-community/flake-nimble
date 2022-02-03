{
  description = ''Asynchronous networking engine for Nim'';
  inputs.src-reactor-master.flake = false;
  inputs.src-reactor-master.type = "github";
  inputs.src-reactor-master.owner = "zielmicha";
  inputs.src-reactor-master.repo = "reactor.nim";
  inputs.src-reactor-master.ref = "refs/heads/master";
  
  
  inputs."collections".url = "path:../../../c/collections";
  inputs."collections".type = "github";
  inputs."collections".owner = "riinr";
  inputs."collections".repo = "flake-nimble";
  inputs."collections".ref = "flake-pinning";
  inputs."collections".dir = "nimpkgs/c/collections";

  outputs = { self, nixpkgs, src-reactor-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reactor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-reactor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}