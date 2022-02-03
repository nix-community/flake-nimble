{
  description = ''The Hundred Rabbits theme ecosystem brought to Nim.'';
  inputs.src-rabbit-main.flake = false;
  inputs.src-rabbit-main.type = "github";
  inputs.src-rabbit-main.owner = "tonogram";
  inputs.src-rabbit-main.repo = "rabbit";
  inputs.src-rabbit-main.ref = "refs/heads/main";
  
  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  outputs = { self, nixpkgs, src-rabbit-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rabbit-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rabbit-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}