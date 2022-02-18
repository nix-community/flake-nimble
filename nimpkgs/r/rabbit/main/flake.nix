{
  description = ''The Hundred Rabbits theme ecosystem brought to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rabbit-main.flake = false;
  inputs.src-rabbit-main.type = "github";
  inputs.src-rabbit-main.owner = "tonogram";
  inputs.src-rabbit-main.repo = "rabbit";
  inputs.src-rabbit-main.ref = "refs/heads/main";
  
  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rabbit-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rabbit-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rabbit-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}