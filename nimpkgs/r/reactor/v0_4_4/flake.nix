{
  description = ''Asynchronous networking engine for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-reactor-v0_4_4.flake = false;
  inputs.src-reactor-v0_4_4.type = "github";
  inputs.src-reactor-v0_4_4.owner = "zielmicha";
  inputs.src-reactor-v0_4_4.repo = "reactor.nim";
  inputs.src-reactor-v0_4_4.ref = "refs/tags/v0.4.4";
  inputs.src-reactor-v0_4_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."collections".type = "github";
  # inputs."collections".owner = "riinr";
  # inputs."collections".repo = "flake-nimble";
  # inputs."collections".ref = "flake-pinning";
  # inputs."collections".dir = "nimpkgs/c/collections";
  # inputs."collections".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."collections".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-reactor-v0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reactor-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-reactor-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}