{
  description = ''Asynchronous networking engine for Nim'';
  inputs.src-reactor-v0_4_1.flake = false;
  inputs.src-reactor-v0_4_1.type = "github";
  inputs.src-reactor-v0_4_1.owner = "zielmicha";
  inputs.src-reactor-v0_4_1.repo = "reactor.nim";
  inputs.src-reactor-v0_4_1.ref = "refs/tags/v0.4.1";
  
  
  inputs."collections".url = "path:../../../c/collections";
  inputs."collections".type = "github";
  inputs."collections".owner = "riinr";
  inputs."collections".repo = "flake-nimble";
  inputs."collections".ref = "flake-pinning";
  inputs."collections".dir = "nimpkgs/c/collections";

  outputs = { self, nixpkgs, src-reactor-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reactor-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-reactor-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}