{
  description = ''Asynchronous networking engine for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-reactor-v0_4_6.flake = false;
  inputs.src-reactor-v0_4_6.type = "github";
  inputs.src-reactor-v0_4_6.owner = "zielmicha";
  inputs.src-reactor-v0_4_6.repo = "reactor.nim";
  inputs.src-reactor-v0_4_6.ref = "refs/tags/v0.4.6";
  inputs.src-reactor-v0_4_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."collections".type = "github";
  inputs."collections".owner = "riinr";
  inputs."collections".repo = "flake-nimble";
  inputs."collections".ref = "flake-pinning";
  inputs."collections".dir = "nimpkgs/c/collections";
  inputs."collections".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-reactor-v0_4_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reactor-v0_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-reactor-v0_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}