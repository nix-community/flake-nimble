{
  description = ''Asynchronous networking engine for Nim'';
  inputs.src-reactor-v0_4_6.flake = false;
  inputs.src-reactor-v0_4_6.type = "github";
  inputs.src-reactor-v0_4_6.owner = "zielmicha";
  inputs.src-reactor-v0_4_6.repo = "reactor.nim";
  inputs.src-reactor-v0_4_6.ref = "refs/tags/v0.4.6";
  
  
  inputs."collections".type = "github";
  inputs."collections".owner = "riinr";
  inputs."collections".repo = "flake-nimble";
  inputs."collections".ref = "flake-pinning";
  inputs."collections".dir = "nimpkgs/c/collections";

  outputs = { self, nixpkgs, src-reactor-v0_4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reactor-v0_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-reactor-v0_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}